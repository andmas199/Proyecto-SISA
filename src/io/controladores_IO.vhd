library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.io_components.cycle_counter;
  use work.io_components.seg7_driver;
  use work.io_components.interrupting_driver;
  use work.io_components.interruption_controller;
  use work.io_components.timer;
  use work.keyboard_components.keyboard_controller;

entity controladores_io is
  port (
    boot              : in    std_logic;
    clock_50          : in    std_logic;
    clk               : in    std_logic;
    addr_io           : in    std_logic_vector(7 downto 0);
    wr_io             : in    std_logic_vector(15 downto 0);
    rd_io             : out   std_logic_vector(15 downto 0);
    wr_out            : in    std_logic;
    rd_in             : in    std_logic;
    led_verdes        : out   std_logic_vector(7 downto 0);
    led_rojos         : out   std_logic_vector(7 downto 0);
    keys              : in    std_logic_vector(3 downto 0);
    switches          : in    std_logic_vector(7 downto 0);
    hex0              : out   std_logic_vector(6 downto 0);
    hex1              : out   std_logic_vector(6 downto 0);
    hex2              : out   std_logic_vector(6 downto 0);
    hex3              : out   std_logic_vector(6 downto 0);
    intr              : out   std_logic;
    inta              : in    std_logic;
    vga_cursor        : out   std_logic_vector(15 downto 0);
    vga_cursor_enable : out   std_logic;
    ps2_clk           : inout std_logic;
    ps2_data          : inout std_logic
  );
end entity controladores_io;

architecture structure of controladores_io is

  type regs_t is ARRAY(255 downto 0) OF std_logic_vector(15 downto 0);

  signal regs : regs_t;

  signal addr_io_delayed : std_logic_vector(7 downto 0);
  signal wr_io_delayed   : std_logic_vector(15 downto 0);
  signal wr_out_delayed  : std_logic;

  constant interruption_sources : natural                                             := 4;
  signal   devices_intr         : std_logic_vector(interruption_sources - 1 downto 0) := (others => '0');
  signal   devices_inta         : std_logic_vector(interruption_sources - 1 downto 0);
  signal   iid                  : std_logic_vector(7 downto 0);

  signal keys_avail     : std_logic_vector(3 downto 0);
  signal switches_avail : std_logic_vector(7 downto 0);

  type hexs_t is ARRAY(3 downto 0) OF std_logic_vector(6 downto 0);

  signal hexs : hexs_t;

  signal kb_read_char  : std_logic_vector(7 downto 0);
  signal kb_clear_char : std_logic;
  signal kb_data_ready : std_logic;

  signal cycles    : std_logic_vector(15 downto 0);
  signal milis     : std_logic_vector(15 downto 0);
  signal milis_in  : std_logic_vector(15 downto 0);
  signal milis_wre : std_logic;

  constant ledg_port             : integer := 5;
  constant ledr_port             : integer := 6;
  constant keys_port             : integer := 7;
  constant switches_port         : integer := 8;
  constant hex_control_port      : integer := 9;
  constant hex_value_port        : integer := 10;
  constant cursor_position_port  : integer := 11;
  constant cursor_enable_port    : integer := 12;
  constant keyboard_value_port   : integer := 15;
  constant keyboard_control_port : integer := 16;
  constant cycles_port           : integer := 20;
  constant milis_port            : integer := 21;

  function isreadonlyport (
    port_addr: std_logic_vector(7 downto 0)
  ) return BOOLEAN is

    variable port_addr_int : integer;

  begin

    port_addr_int := to_integer(unsigned(port_addr));
    RETURN port_addr_int = KEYS_PORT
            or port_addr_int = SWITCHES_PORT
            or port_addr_int = KEYBOARD_VALUE_PORT
            or port_addr_int = CYCLES_PORT;

  end function;

begin

  process (clk, wr_out) is
  begin

    if rising_edge(clk) then
      kb_clear_char <= '0';
      milis_wre     <= '0';

      -- Delay IO writes to cut combinational loop
      addr_io_delayed <= addr_io;
      wr_io_delayed   <= wr_io;
      wr_out_delayed  <= wr_out;

      -- IO Inputs
      regs(KEYS_PORT)(3 DOWNTO 0)              <= keys_avail;
      regs(SWITCHES_PORT)(7 DOWNTO 0)          <= switches_avail;
      regs(KEYBOARD_VALUE_PORT)(7 DOWNTO 0)    <= kb_read_char;
      regs(KEYBOARD_CONTROL_PORT)(15 DOWNTO 0) <= (0 => kb_data_ready, others => '0');
      regs(CYCLES_PORT)                        <= cycles;
      regs(MILIS_PORT)                         <= milis;

      -- IO-mapped registers Writes
      if (wr_out_delayed = '1' and not isreadonlyport(addr_io_delayed)) then
        regs(to_integer(unsigned(addr_io_delayed))) <= wr_io_delayed;
      end if;

      -- IO-mapped registers Writes side-effects
      if (wr_out_delayed = '1') then

        case to_integer(unsigned(addr_io_delayed)) is

          when keyboard_control_port =>

            kb_clear_char <= '1';

          when milis_port =>

            milis_in  <= wr_io_delayed;
            milis_wre <= '1';

          when OTHERS =>

        end case;

      end if;
    end if;

  end process;

  rd_io <= regs(to_integer(unsigned(addr_io))) when inta = '0' else
           x"00" & iid;

  led_verdes <= regs(ledg_port)(7 downto 0);
  led_rojos  <= regs(ledr_port)(7 downto 0);

  int_ctl : component interruption_controller
    generic map (
      interruption_sources => interruption_sources
    )
    port map (
      boot         => boot,
      clk          => clk,
      global_inta  => inta,
      devices_intr => devices_intr,
      global_intr  => intr,
      devices_inta => devices_inta,
      iid          => iid
    );

  keys0 : component interrupting_driver
    generic map (
      width => 4
    )
    port map (
      boot       => boot,
      clk        => clk,
      device_in  => keys,
      inta       => devices_inta(1),
      device_out => keys_avail,
      intr       => devices_intr(1)
    );

  switches0 : component interrupting_driver
    generic map (
      width => 8
    )
    port map (
      boot       => boot,
      clk        => clk,
      device_in  => switches,
      inta       => devices_inta(2),
      device_out => switches_avail,
      intr       => devices_intr(2)
    );

  vga_cursor        <= regs(cursor_position_port);
  vga_cursor_enable <= regs(cursor_enable_port)(0);

  hex_gen : for i IN 0 to 3 generate

    driver : component seg7_driver
      port map (
        enable => regs(HEX_CONTROL_PORT)(i),
        value  => regs(HEX_VALUE_PORT)(4 * (i + 1) - 1 DOWNTO 4 * i),
        hex    => hexs(i)
      );

  end generate hex_gen;

  hex0 <= hexs(0);
  hex1 <= hexs(1);
  hex2 <= hexs(2);
  hex3 <= hexs(3);

  keyboard : component keyboard_controller
    port map (
      clk        => clock_50,
      reset      => boot,
      ps2_clk    => ps2_clk,
      ps2_data   => ps2_data,
      read_char  => kb_read_char,
      clear_char => kb_clear_char,
      data_ready => kb_data_ready,
      intr       => devices_intr(3),
      inta       => devices_inta(3)
    );

  cc : component cycle_counter
    port map (
      clock_50 => clock_50,
      milis_in => milis_in,
      wre      => milis_wre,
      cycles   => cycles,
      milis    => milis
    );

  timer0 : component timer
    port map (
      clock_50 => clock_50,
      boot     => boot,
      inta     => devices_inta(0),
      intr     => devices_intr(0)
    );

end architecture structure;
