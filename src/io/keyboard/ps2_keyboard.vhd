
library ieee;
  use ieee.std_logic_1164.all;
  use ieee.std_logic_unsigned.all;

--
-- Adaptacion a VHDL para la asignatura de PEC
--

---------------------------------------------------------------------------------------
--
-- Author: John Clayton
-- Date  : April 30, 2001
-- Update: 4/30/01 copied this file from lcd_2.v (pared down).
-- Update: 5/24/01 changed the first module from "ps2_keyboard_receiver"
--                 to "ps2_keyboard_interface"
-- Update: 5/29/01 Added input synchronizing flip-flops.  Changed state
--                 encoding (m1) for good operation after part config.
-- Update: 5/31/01 Added low drive strength and slow transitions to ps2_clk
--                 and ps2_data in the constraints file.  Added the signal
--                 "tx_shifting_done" as distinguished from "rx_shifting_done."
--                 Debugged the transmitter portion in the lab.
-- Update: 6/01/01 Added horizontal tab to the ascii output.
-- Update: 6/01/01 Added parameter TRAP_SHIFT_KEYS.
-- Update: 6/05/01 Debugged the "debounce" timer functionality.
--                 Used 60usec timer as a "watchdog" timeout during
--                 receive from the keyboard.  This means that a keyboard
--                 can now be "hot plugged" into the interface, without
--                 messing up the bit_count, since the bit_count is reset
--                 to zero during periods of inactivity anyway.  This was
--                 difficult to debug.  I ended up using the logic analyzer,
--                 and had to scratch my head quite a bit.
-- Update: 6/06/01 Removed extra comments before the input synchronizing
--                 flip-flops.  Used the correct parameter to size the
--                 5usec_timer_count.  Changed the name of this file from
--                 ps2.v to ps2_keyboard.v
-- Update: 6/06/01 Removed "&& q[7:0]" in output_strobe logic.  Removed extra
--                 commented out "else" condition in the shift register and
--                 bit counter.
-- Update: 6/07/01 Changed default values for 60usec timer parameters so that
--                 they correspond to 60usec for a 49.152MHz clock.
--
--
--
--
--
-- Description
---------------------------------------------------------------------------------------
-- This is a state-machine driven serial-to-parallel and parallel-to-serial
-- interface to the ps2 style keyboard interface.  The details of the operation
-- of the keyboard interface were obtained from the following website:
--
--   http://www.beyondlogic.org/keyboard/keybrd.htm
--
-- Some aspects of the keyboard interface are not implemented (e.g, parity
-- checking for the receive side, and recognition of the various commands
-- which the keyboard sends out, such as "power on selt test passed," "Error"
-- and "Resend.")  However, if the user wishes to recognize these reply
-- messages, the scan code output can always be used to extend functionality
-- as desired.
--
-- Note that the "Extended" (0xE0) and "Released" (0xF0) codes are recognized.
-- The rx interface provides separate indicator flags for these two conditions
-- with every valid character scan code which it provides.  The shift keys are
-- also trapped by the interface, in order to provide correct uppercase ASCII
-- characters at the ascii output, although the scan codes for the shift keys
-- are still provided at the scan code output.  So, the left/right ALT keys
-- can be differentiated by the presence of the rx_entended signal, while the
-- left/right shift keys are differentiable by the different scan codes
-- received.
--
-- The interface to the ps2 keyboard uses ps2_clk clock rates of
-- 30-40 kHz, dependent upon the keyboard itself.  The rate at which the state
-- machine runs should be at least twice the rate of the ps2_clk, so that the
-- states can accurately follow the clock signal itself.  Four times
-- oversampling is better.  Say 200kHz at least.  The upper limit for clocking
-- the state machine will undoubtedly be determined by delays in the logic
-- which decodes the scan codes into ASCII equivalents.  The maximum speed
-- will be most likely many megahertz, depending upon target technology.
-- In order to run the state machine extremely fast, synchronizing flip-flops
-- have been added to the ps2_clk and ps2_data inputs of the state machine.
-- This avoids poor performance related to slow transitions of the inputs.
--
-- Because this is a bi-directional interface, while reading from the keyboard
-- the ps2_clk and ps2_data lines are used as inputs.  While writing to the
-- keyboard, however (which may be done at any time.  If writing interrupts a
-- read from the keyboard, the keyboard will buffer up its data, and send
-- it later) both the ps2_clk and ps2_data lines are occasionally pulled low,
-- and pullup resistors are used to bring the lines high again, by setting
-- the drivers to high impedance state.
--
-- The tx interface, for writing to the keyboard, does not provide any special
-- pre-processing.  It simply transmits the 8-bit command value to the
-- keyboard.
--
-- Pullups MUST BE USED on the ps2_clk and ps2_data lines for this design,
-- whether they be internal to an FPGA I/O pad, or externally placed.
-- If internal pullups are used, they may be fairly weak, causing bounces
-- due to crosstalk, etc.  There is a "debounce timer" implemented in order
-- to eliminate erroneous state transitions which would occur based on bounce.
--
-- Parameters are provided in order to configure and appropriately size the
-- counter of a 60 microsecond timer used in the transmitter, depending on
-- the clock frequency used.  The 60 microsecond period is guaranteed to be
-- more than one period of the ps2_clk_s signal.
--
-- Also, a smaller 5 microsecond timer has been included for "debounce".
-- This is used because, with internal pullups on the ps2_clk and ps2_data
-- lines, there is some bouncing around which occurs
--
-- A parameter TRAP_SHIFT_KEYS allows the user to eliminate shift keypresses
-- from producing scan codes (along with their "undefined" ASCII equivalents)
-- at the output of the interface.  If TRAP_SHIFT_KEYS is non-zero, the shift
-- key status will only be reported by rx_shift_key_on.  No ascii or scan
-- codes will be reported for the shift keys.  This is useful for those who
-- wish to use the ASCII data stream, and who don't want to have to "filter
-- out" the shift key codes.
--
---------------------------------------------------------------------------------------

entity ps2_keyboard_interface is
  generic (
    -- rx_read_o
    -- rx_read_ack_i
    -- Parameters
    -- The timer value can be up to (2^bits) inclusive.
    timer_60usec_value_pp : integer := 2950; -- Number of sys_clks for 60usec.
    timer_60usec_bits_pp  : integer := 12;   -- Number of bits needed for timer
    timer_5usec_value_pp  : integer := 186;  -- Number of sys_clks for debounce
    timer_5usec_bits_pp   : integer := 8;    -- Number of bits needed for timer
    trap_shift_keys_pp    : integer := 0     -- Default: No shift key trap.
  );
  port (
    clk                      : in    std_logic;
    reset                    : in    std_logic;
    ps2_clk                  : inout std_logic;
    ps2_data                 : inout std_logic;
    rx_extended              : out   std_logic;
    rx_released              : out   std_logic;
    rx_shift_key_on          : out   std_logic;
    rx_scan_code             : out   std_logic_vector(7 downto 0);
    rx_ascii                 : out   std_logic_vector(7 downto 0);
    rx_data_ready            : out   std_logic;
    rx_read                  : in    std_logic;
    tx_data                  : in    std_logic_vector(7 downto 0);
    tx_write                 : in    std_logic;
    tx_write_ack_o           : out   std_logic;
    tx_error_no_keyboard_ack : out   std_logic
  );
end entity ps2_keyboard_interface;

architecture trans of ps2_keyboard_interface is

  function to_stdlogic (
    val      : IN boolean
  ) return std_logic is
  begin

    if (val) then
      RETURN('1');
    else
      RETURN('0');
    end if;

  end function to_stdlogic;

  function xnor_br (
    val : std_logic_vector
  ) return std_logic is

    variable rtn : std_logic := '0';

  begin

    for index IN val'range loop

      rtn := rtn xor val(index);

    end loop;

    RETURN(NOT rtn);

  end function xnor_br;

  type tipo_estado_m1 is (
    m1_rx_clk_h, m1_rx_clk_l, m1_rx_falling_edge_marker, m1_rx_rising_edge_marker,
    m1_tx_force_clk_l, m1_tx_first_wait_clk_h, m1_tx_first_wait_clk_l, m1_tx_reset_timer,
    m1_tx_wait_clk_h, m1_tx_clk_h, m1_tx_clk_l, m1_tx_wait_keyboard_ack, m1_tx_done_recovery,
    m1_tx_error_no_keyboard_ack, m1_tx_rising_edge_marker
  );

  signal m1_state      : tipo_estado_m1;
  signal m1_next_state : tipo_estado_m1;

  type tipo_estado_m2 is (m2_rx_data_ready, m2_rx_data_ready_ack);

  signal m2_state      : tipo_estado_m2;
  signal m2_next_state : tipo_estado_m2;

  -- Internal signal declarations
  signal timer_60usec_done : std_logic;
  signal timer_5usec_done  : std_logic;
  signal extended          : std_logic;
  signal released          : std_logic;
  signal shift_key_on      : std_logic;

  -- NOTE: These two signals used to be one.  They
  --       were split into two signals because of
  --       shift key trapping.  With shift key
  --       trapping, no event is generated externally,
  --       but the "hold" data must still be cleared
  --       anyway regardless, in preparation for the
  --       next scan codes.
  signal rx_output_event  : std_logic; -- Used only to clear: hold_released, hold_extended
  signal rx_output_strobe : std_logic; -- Used to produce the actual output.

  signal tx_parity_bit       : std_logic;
  signal rx_shifting_done    : std_logic;
  signal tx_shifting_done    : std_logic;
  signal shift_key_plus_code : std_logic_vector(11 downto 0);

  signal q                   : std_logic_vector(11 - 1 downto 0);
  signal bit_count           : std_logic_vector(3 downto 0);
  signal enable_timer_60usec : std_logic;
  signal enable_timer_5usec  : std_logic;
  signal timer_60usec_count  : std_logic_vector(timer_60usec_bits_pp - 1 downto 0);
  signal timer_5usec_count   : std_logic_vector(timer_5usec_bits_pp - 1 downto 0);
  signal ascii               : std_logic_vector(7 downto 0); -- "REG" type only because a case statement is used.
  signal left_shift_key      : std_logic;
  signal right_shift_key     : std_logic;
  signal hold_extended       : std_logic;                    -- Holds prior value, cleared at rx_output_strobe
  signal hold_released       : std_logic;                    -- Holds prior value, cleared at rx_output_strobe
  signal ps2_clk_s           : std_logic;                    -- Synchronous version of this input
  signal ps2_data_s          : std_logic;                    -- Synchronous version of this input
  signal ps2_clk_hi_z        : std_logic;                    -- Without keyboard, high Z equals 1 due to pullups.
  signal ps2_data_hi_z       : std_logic;                    -- Without keyboard, high Z equals 1 due to pullups.

  -- Declare intermediate signals for referenced outputs
  signal rx_shift_key_on_xhdl0 : std_logic;
  signal tx_write_ack_o_xhdl1  : std_logic;

begin

  -- Drive referenced outputs
  rx_shift_key_on <= rx_shift_key_on_xhdl0;
  tx_write_ack_o  <= tx_write_ack_o_xhdl1;

  ----------------------------------------------------------------------------
  -- Module code

  ps2_clk  <= 'Z' when (ps2_clk_hi_z = '1') else
              '0';
  ps2_data <= 'Z' when (ps2_data_hi_z = '1') else
              '0';

  -- Input "synchronizing" logic -- synchronizes the inputs to the state
  -- machine clock, thus avoiding errors related to
  -- spurious state machine transitions.
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      ps2_clk_s  <= ps2_clk;
      ps2_data_s <= ps2_data;
    end if;

  end process;

  -- State register
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if (reset = '1') then
        m1_state <= m1_rx_clk_h;
      else
        m1_state <= m1_next_state;
      end if;
    end if;

  end process;

  -- State transition logic
  process (m1_state, q, tx_shifting_done, tx_write, ps2_clk_s, ps2_data_s, timer_60usec_done, timer_5usec_done) is
  begin

    -- Output signals default to this value, unless changed in a state condition.
    ps2_clk_hi_z             <= '1';
    ps2_data_hi_z            <= '1';
    tx_error_no_keyboard_ack <= '0';
    enable_timer_60usec      <= '0';

    enable_timer_5usec <= '0';

    case m1_state is

      when m1_rx_clk_h =>

        enable_timer_60usec <= '1';

        if (tx_write = '1') then
          m1_next_state <= m1_tx_reset_timer;
        elsif ((NOT(ps2_clk_s)) = '1') then
          m1_next_state <= m1_rx_falling_edge_marker;
        else
          m1_next_state <= m1_rx_clk_h;
        end if;

      when m1_rx_falling_edge_marker =>

        enable_timer_60usec <= '0';
        m1_next_state       <= m1_rx_clk_l;

      when m1_rx_rising_edge_marker =>

        enable_timer_60usec <= '0';
        m1_next_state       <= m1_rx_clk_h;

      when m1_rx_clk_l =>

        enable_timer_60usec <= '1';

        if (tx_write = '1') then
          m1_next_state <= m1_tx_reset_timer;
        elsif (ps2_clk_s = '1') then
          m1_next_state <= m1_rx_rising_edge_marker;
        else
          m1_next_state <= m1_rx_clk_l;
        end if;

      when m1_tx_reset_timer =>

        enable_timer_60usec <= '0';
        m1_next_state       <= m1_tx_force_clk_l;
      -- Force the ps2_clk line low.

      when m1_tx_force_clk_l =>

        enable_timer_60usec <= '1';
        ps2_clk_hi_z        <= '0';

        if (timer_60usec_done = '1') then
          m1_next_state <= m1_tx_first_wait_clk_h;
        else
          m1_next_state <= m1_tx_force_clk_l;
        end if;

      -- Start bit.

      -- This state must be included because the device might possibly
      -- delay for up to 10 milliseconds before beginning its clock pulses.
      -- During that waiting time, we cannot drive the data (q[0]) because it
      -- is possibly 1, which would cause the keyboard to abort its receive
      -- and the expected clocks would then never be generated.
      when m1_tx_first_wait_clk_h =>

        enable_timer_5usec <= '1';
        ps2_data_hi_z      <= '0';

        if (ps2_clk_s='0' and timer_5usec_done='1') then
          m1_next_state <= m1_tx_clk_l;
        else
          m1_next_state <= m1_tx_first_wait_clk_h;
        end if;

      when m1_tx_first_wait_clk_l =>

        ps2_data_hi_z <= '0';

        if (ps2_clk_s = '0') then
          m1_next_state <= m1_tx_clk_l;
        else
          m1_next_state <= m1_tx_first_wait_clk_l;
        end if;

      when m1_tx_wait_clk_h =>

        enable_timer_5usec <= '1';
        ps2_data_hi_z      <= q(0);

        if (ps2_clk_s='1' and timer_5usec_done='1') then
          m1_next_state <= m1_tx_rising_edge_marker;
        else
          m1_next_state <= m1_tx_wait_clk_h;
        end if;

      when m1_tx_rising_edge_marker =>

        ps2_data_hi_z <= q(0);
        m1_next_state <= m1_tx_clk_h;

      when m1_tx_clk_h =>

        ps2_data_hi_z <= q(0);

        if (tx_shifting_done = '1') then
          m1_next_state <= m1_tx_wait_keyboard_ack;
        elsif ((NOT(ps2_clk_s)) = '1') then
          m1_next_state <= m1_tx_clk_l;
        else
          m1_next_state <= m1_tx_clk_h;
        end if;

      when m1_tx_clk_l =>

        ps2_data_hi_z <= q(0);

        if (ps2_clk_s = '1') then
          m1_next_state <= m1_tx_wait_clk_h;
        else
          m1_next_state <= m1_tx_clk_l;
        end if;

      when m1_tx_wait_keyboard_ack =>

        if (ps2_clk_s='0' and ps2_data_s='1') then
          m1_next_state <= m1_tx_error_no_keyboard_ack;
        elsif (ps2_clk_s='0' and ps2_data_s='0') then
          m1_next_state <= m1_tx_done_recovery;
        else
          m1_next_state <= m1_tx_wait_keyboard_ack;
        end if;

      when m1_tx_done_recovery =>

        if (ps2_clk_s='1' and ps2_data_s='1') then
          m1_next_state <= m1_rx_clk_h;
        else
          m1_next_state <= m1_tx_done_recovery;
        end if;

      when m1_tx_error_no_keyboard_ack =>

        tx_error_no_keyboard_ack <= '1';

        if (ps2_clk_s='1' and ps2_data_s='1') then
          m1_next_state <= m1_rx_clk_h;
        else
          m1_next_state <= m1_tx_error_no_keyboard_ack;
        end if;

      when OTHERS =>

        m1_next_state <= m1_rx_clk_h;

    end case;

  end process;

  -- State register
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if (reset = '1') then
        m2_state <= m2_rx_data_ready_ack;
      else
        m2_state <= m2_next_state;
      end if;
    end if;

  end process;

  -- State transition logic
  process (m2_state, rx_output_strobe, rx_read) is
  begin

    case m2_state is

      when m2_rx_data_ready_ack =>

        rx_data_ready <= '0';

        if (rx_output_strobe = '1') then
          m2_next_state <= m2_rx_data_ready;
        else
          m2_next_state <= m2_rx_data_ready_ack;
        end if;

      when m2_rx_data_ready =>

        rx_data_ready <= '1';

        if (rx_read = '1') then
          m2_next_state <= m2_rx_data_ready_ack;
        else
          m2_next_state <= m2_rx_data_ready;
        end if;

      when OTHERS =>

        m2_next_state <= m2_rx_data_ready_ack;

    end case;

  end process;

  -- This is the bit counter
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if (reset='1' or rx_shifting_done='1' or (m1_state = m1_tx_wait_keyboard_ack)) then                 -- After tx is done.
        bit_count <= "0000";
      elsif (timer_60usec_done = '1' and (m1_state = m1_rx_clk_h) and ((ps2_clk_s)) = '1') then           -- rx watchdog timer reset
        bit_count <= "0000";
      elsif ((m1_state = m1_rx_falling_edge_marker) or (m1_state = m1_tx_rising_edge_marker)) then        -- increment for tx
        bit_count <= bit_count + "0001";
      end if;
    end if;

  end process;

  -- This signal is high for one clock at the end of the timer count.
  rx_shifting_done <= to_stdlogic((bit_count = "1011"));
  tx_shifting_done <= to_stdlogic((bit_count = "1010"));

  -- This is the signal which enables loading of the shift register.
  -- It also indicates "ack" to the device writing to the transmitter.
  tx_write_ack_o_xhdl1 <= to_stdlogic(((tx_write = '1' and (m1_state = m1_rx_clk_h)) or (tx_write = '1' and (m1_state = m1_rx_clk_l))));

  -- This is the ODD parity bit for the transmitted word.
  tx_parity_bit <= xnor_br(tx_data);

  -- This is the shift register
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if (reset = '1') then
        q <= "00000000000";
      elsif (tx_write_ack_o_xhdl1 = '1') then
        q <= ('1' & tx_parity_bit & tx_data & '0');
      elsif ((m1_state = m1_rx_falling_edge_marker) or (m1_state = m1_tx_rising_edge_marker)) then
        q <= (ps2_data_s & q(11 - 1 downto 1));
      end if;
    end if;

  end process;

  -- This is the 60usec timer counter
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if ((NOT(enable_timer_60usec)) = '1') then
        timer_60usec_count <= "000000000000";
      elsif ((NOT(timer_60usec_done)) = '1') then
        timer_60usec_count <= timer_60usec_count + "000000000001";
      end if;
    end if;

  end process;

  timer_60usec_done <= to_stdlogic(timer_60usec_count = (timer_60usec_value_pp - 1));

  -- This is the 5usec timer counter
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if ((NOT(enable_timer_5usec)) = '1') then
        timer_5usec_count <= "00000000";
      elsif ((NOT(timer_5usec_done)) = '1') then
        timer_5usec_count <= timer_5usec_count + "00000001";
      end if;
    end if;

  end process;

  timer_5usec_done <= to_stdlogic(timer_5usec_count = (timer_5usec_value_pp - 1));

  -- Create the signals which indicate special scan codes received.
  -- These are the "unlatched versions."
  extended <= to_stdlogic((("00000000" & q(8 downto 1)) = "0000000011100000") and rx_shifting_done = '1');
  released <= to_stdlogic((("00000000" & q(8 downto 1)) = "0000000011110000") and rx_shifting_done = '1');

  -- Store the special scan code status bits
  -- Not the final output, but an intermediate storage place,
  -- until the entire set of output data can be assembled.
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if (reset='1' or rx_output_event='1') then
        hold_extended <= '0';
        hold_released <= '0';
      else
        if (rx_shifting_done='1' and extended='1') then
          hold_extended <= '1';
        end if;
        if (rx_shifting_done='1' and released='1') then
          hold_released <= '1';
        end if;
      end if;
    end if;

  end process;

  -- These bits contain the status of the two shift keys
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if (reset = '1') then
        left_shift_key <= '0';
      elsif ((("00000000" & q(8 downto 1)) = "0000000000010010") and rx_shifting_done = '1' and (NOT(hold_released)) = '1') then
        left_shift_key <= '1';
      elsif ((("00000000" & q(8 downto 1)) = "0000000000010010") and rx_shifting_done = '1' and hold_released = '1') then
        left_shift_key <= '0';
      end if;
    end if;

  end process;

  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if (reset = '1') then
        right_shift_key <= '0';
      elsif ((("00000000" & q(8 downto 1)) = "0000000001011001") and rx_shifting_done = '1' and (NOT(hold_released)) = '1') then
        right_shift_key <= '1';
      elsif ((("00000000" & q(8 downto 1)) = "0000000001011001") and rx_shifting_done = '1' and hold_released = '1') then
        right_shift_key <= '0';
      end if;
    end if;

  end process;

  rx_shift_key_on_xhdl0 <= to_stdlogic(left_shift_key='1' or right_shift_key='1');

  -- Output the special scan code flags, the scan code and the ascii
  process (clk) is
  begin

    if (clk'EVENT and clk = '1') then
      if (reset = '1') then
        rx_extended  <= '0';
        rx_released  <= '0';
        rx_scan_code <= "00000000";
        rx_ascii     <= "00000000";
      elsif (rx_output_strobe = '1') then
        rx_extended  <= hold_extended;
        rx_released  <= hold_released;
        rx_scan_code <= q(8 downto 1);
        rx_ascii     <= ascii;
      end if;
    end if;

  end process;

  -- Store the final rx output data only when all extend and release codes
  -- are received and the next (actual key) scan code is also ready.
  -- (the presence of rx_extended or rx_released refers to the
  -- the current latest scan code received, not the previously latched flags.)
  rx_output_event <= to_stdlogic((rx_shifting_done='1' and extended='0' and released='0'));

  rx_output_strobe <= to_stdlogic((rx_shifting_done='1' and extended='0' and released='0' and ((trap_shift_keys_pp = 0) or ((("00000000" & q(8 downto 1)) /= "0000000001011001") and (("00000000" & q(8 downto 1)) /= "0000000000010010")))));

  -- This part translates the scan code into an ASCII value...
  -- Only the ASCII codes which I considered important have been included.
  -- if you want more, just add the appropriate case statement lines...
  -- (You will need to know the keyboard scan codes you wish to assign.)
  -- The entries are listed in ascending order of ASCII value.
  shift_key_plus_code <= ("000" & rx_shift_key_on_xhdl0 & q(8 downto 1));

  process (shift_key_plus_code) is
  begin

    case shift_key_plus_code is

      when x"066" =>

        ascii <= x"08";         -- Backspace ("backspace" key)

      when x"00d" =>

        ascii <= x"09";         -- Horizontal Tab

      when x"05a" =>

        ascii <= x"0d";         -- Carriage return ("enter" key)

      when x"076" =>

        ascii <= x"1b";         -- Escape ("esc" key)

      when x"029" =>

        ascii <= x"20";         -- Space

      when x"116" =>

        ascii <= x"21";         -- !

      when x"152" =>

        ascii <= x"22";         -- "

      when x"126" =>

        ascii <= x"23";         -- #

      when x"125" =>

        ascii <= x"24";         -- $

      when x"12e" =>

        ascii <= x"25";         -- %

      when x"13d" =>

        ascii <= x"26";         -- &

      when x"052" =>

        ascii <= x"27";         -- '

      when x"146" =>

        ascii <= x"28";         -- (

      when x"145" =>

        ascii <= x"29";         -- )

      when x"13e" =>

        ascii <= x"2a";         -- *

      when x"155" =>

        ascii <= x"2b";         -- +

      when x"041" =>

        ascii <= x"2c";         -- ,

      when x"04e" =>

        ascii <= x"2d";         -- -

      when x"049" =>

        ascii <= x"2e";         -- .

      when x"04a" =>

        ascii <= x"2f";         -- /

      when x"045" =>

        ascii <= x"30";         -- 0

      when x"016" =>

        ascii <= x"31";         -- 1

      when x"01e" =>

        ascii <= x"32";         -- 2

      when x"026" =>

        ascii <= x"33";         -- 3

      when x"025" =>

        ascii <= x"34";         -- 4

      when x"02e" =>

        ascii <= x"35";         -- 5

      when x"036" =>

        ascii <= x"36";         -- 6

      when x"03d" =>

        ascii <= x"37";         -- 7

      when x"03e" =>

        ascii <= x"38";         -- 8

      when x"046" =>

        ascii <= x"39";         -- 9

      when x"14c" =>

        ascii <= x"3a";         -- :

      when x"04c" =>

        ascii <= x"3b";         -- ;

      when x"141" =>

        ascii <= x"3c";         -- <

      when x"055" =>

        ascii <= x"3d";         -- =

      when x"149" =>

        ascii <= x"3e";         -- >

      when x"14a" =>

        ascii <= x"3f";         -- ?

      when x"11e" =>

        ascii <= x"40";         -- @

      when x"11c" =>

        ascii <= x"41";         -- A

      when x"132" =>

        ascii <= x"42";         -- B

      when x"121" =>

        ascii <= x"43";         -- C

      when x"123" =>

        ascii <= x"44";         -- D

      when x"124" =>

        ascii <= x"45";         -- E

      when x"12b" =>

        ascii <= x"46";         -- F

      when x"134" =>

        ascii <= x"47";         -- G

      when x"133" =>

        ascii <= x"48";         -- H

      when x"143" =>

        ascii <= x"49";         -- I

      when x"13b" =>

        ascii <= x"4a";         -- J

      when x"142" =>

        ascii <= x"4b";         -- K

      when x"14b" =>

        ascii <= x"4c";         -- L

      when x"13a" =>

        ascii <= x"4d";         -- M

      when x"131" =>

        ascii <= x"4e";         -- N

      when x"144" =>

        ascii <= x"4f";         -- O

      when x"14d" =>

        ascii <= x"50";         -- P

      when x"115" =>

        ascii <= x"51";         -- Q

      when x"12d" =>

        ascii <= x"52";         -- R

      when x"11b" =>

        ascii <= x"53";         -- S

      when x"12c" =>

        ascii <= x"54";         -- T

      when x"13c" =>

        ascii <= x"55";         -- U

      when x"12a" =>

        ascii <= x"56";         -- V

      when x"11d" =>

        ascii <= x"57";         -- W

      when x"122" =>

        ascii <= x"58";         -- X

      when x"135" =>

        ascii <= x"59";         -- Y

      when x"11a" =>

        ascii <= x"5a";         -- Z

      when x"054" =>

        ascii <= x"5b";         -- [

      when x"05d" =>

        ascii <= x"5c";         -- \

      when x"05b" =>

        ascii <= x"5d";         -- ]

      when x"136" =>

        ascii <= x"5e";         -- ^

      when x"14e" =>

        ascii <= x"5f";         -- _

      when x"00e" =>

        ascii <= x"60";         -- `

      when x"01c" =>

        ascii <= x"61";         -- a

      when x"032" =>

        ascii <= x"62";         -- b

      when x"021" =>

        ascii <= x"63";         -- c

      when x"023" =>

        ascii <= x"64";         -- d

      when x"024" =>

        ascii <= x"65";         -- e

      when x"02b" =>

        ascii <= x"66";         -- f

      when x"034" =>

        ascii <= x"67";         -- g

      when x"033" =>

        ascii <= x"68";         -- h

      when x"043" =>

        ascii <= x"69";         -- i

      when x"03b" =>

        ascii <= x"6a";         -- j

      when x"042" =>

        ascii <= x"6b";         -- k

      when x"04b" =>

        ascii <= x"6c";         -- l

      when x"03a" =>

        ascii <= x"6d";         -- m

      when x"031" =>

        ascii <= x"6e";         -- n

      when x"044" =>

        ascii <= x"6f";         -- o

      when x"04d" =>

        ascii <= x"70";         -- p

      when x"015" =>

        ascii <= x"71";         -- q

      when x"02d" =>

        ascii <= x"72";         -- r

      when x"01b" =>

        ascii <= x"73";         -- s

      when x"02c" =>

        ascii <= x"74";         -- t

      when x"03c" =>

        ascii <= x"75";         -- u

      when x"02a" =>

        ascii <= x"76";         -- v

      when x"01d" =>

        ascii <= x"77";         -- w

      when x"022" =>

        ascii <= x"78";         -- x

      when x"035" =>

        ascii <= x"79";         -- y

      when x"01a" =>

        ascii <= x"7a";         -- z

      when x"154" =>

        ascii <= x"7b";         -- {

      when x"15d" =>

        ascii <= x"7c";         -- |

      when x"15b" =>

        ascii <= x"7d";         -- }

      when x"10e" =>

        ascii <= x"7e";         -- ~

      when x"071" =>

        ascii <= x"7f";         -- (Delete OR DEL on numeric keypad)

      -- extras
      when x"005" =>

        ascii <= x"81";         -- f1

      when x"006" =>

        ascii <= x"82";         -- f2

      when x"004" =>

        ascii <= x"83";         -- f3

      when x"00c" =>

        ascii <= x"84";         -- f4

      when x"003" =>

        ascii <= x"85";         -- f5

      when x"00b" =>

        ascii <= x"86";         -- f6

      when x"083" =>

        ascii <= x"87";         -- f7

      when x"00a" =>

        ascii <= x"88";         -- f8

      when x"001" =>

        ascii <= x"89";         -- f9

      when x"009" =>

        ascii <= x"8a";         -- f10

      when x"078" =>

        ascii <= x"8b";         -- f11

      when x"007" =>

        ascii <= x"8c";         -- f12

      when x"075" =>

        ascii <= x"90";         -- KP UP

      when x"072" =>

        ascii <= x"91";         -- KP DOWN

      when x"06B" =>

        ascii <= x"92";         -- KP LEFT

      when x"074" =>

        ascii <= x"93";         -- KP RIGHT

      when OTHERS =>

        ascii <= "00000000";

    end case;

  end process;

end architecture trans;



