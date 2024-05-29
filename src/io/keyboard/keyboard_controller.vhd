library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use ieee.std_logic_unsigned.all;

entity keyboard_controller is
  port (
    clk        : in    std_logic;
    reset      : in    std_logic;
    ps2_clk    : inout std_logic;
    ps2_data   : inout std_logic;
    read_char  : out   std_logic_vector(7 downto 0);
    clear_char : in    std_logic;
    data_ready : out   std_logic;
    intr       : out   std_logic;
    inta       : in    std_logic
  );
end entity keyboard_controller;

architecture behavioral of keyboard_controller is

  component ps2_keyboard_interface is
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
  end component;

  -- commands to keyboard list: http://www.win.tue.nl/~aeb/linux/kbd/scancodes-12.html#kced

  signal rx_extended              : std_logic;
  signal rx_released              : std_logic;
  signal rx_shift_key_on          : std_logic;
  signal rx_data_ready            : std_logic;
  signal rx_read                  : std_logic;
  signal tx_write_ack_o           : std_logic;
  signal tx_error_no_keyboard_ack : std_logic;

  signal rx_scan_code   : std_logic_vector(7 downto 0);
  signal rx_ascii       : std_logic_vector(7 downto 0);
  signal data_ready_we  : std_logic;
  signal data_available : std_logic;

  type state_type is (idle, clearing);

  signal state : state_type;

begin

  k0 : component ps2_keyboard_interface
    port map (
      clk                      => clk,
      reset                    => reset,
      ps2_clk                  => ps2_clk,
      ps2_data                 => ps2_data,
      rx_extended              => rx_extended,
      rx_released              => rx_released,
      rx_shift_key_on          => rx_shift_key_on,
      rx_scan_code             => rx_scan_code,
      rx_ascii                 => rx_ascii,
      rx_data_ready            => rx_data_ready,
      rx_read                  => rx_read,
      tx_data                  => "00000000",
      tx_write                 => '0',
      tx_write_ack_o           => tx_write_ack_o,
      tx_error_no_keyboard_ack => tx_error_no_keyboard_ack
    );

  process (clk) is
  begin

    if (clk'event and clk = '1') then
      if (reset = '1') then
        state <= idle;
      else

        case state is

          when idle =>

            if (clear_char = '1' or inta = '1') then
              state <= clearing;
            end if;

          when clearing =>

            if (rx_data_ready = '0') then
              state <= idle;
            end if;

        end case;

      end if;
    end if;

  end process;

  process (state) is
  begin

    data_ready_we <= '0';

    case state is

      when idle =>

        if (rx_data_ready = '1' and rx_released = '0') then
          if (rx_shift_key_on /= '1' or rx_ascii /= "00000000") then
            data_available <= '1';
            data_ready_we  <= '1';
          end if;
        end if;

        rx_read <= '0';

      when clearing =>

        rx_read        <= '1';
        data_available <= '0';
        data_ready_we  <= '1';

    end case;

  end process;

  process (clk) is
  begin

    if (clk'event and clk = '1') then
      data_ready <= '0';
      intr       <= '0';
      if (data_ready_we = '1') then
        data_ready <= data_available;
        intr       <= data_available;
        if (data_available = '1') then
          read_char <= rx_ascii;
        end if;
      end if;
    end if;

  end process;

end architecture behavioral;

