library ieee;
  use ieee.std_logic_1164.all;

package io_components is

  component controladores_io is
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
  end component;

  component cycle_counter is
    port (
      clock_50 : in    std_logic;
      milis_in : in    std_logic_vector(15 downto 0);
      wre      : in    std_logic;
      cycles   : out   std_logic_vector(15 downto 0);
      milis    : out   std_logic_vector(15 downto 0)
    );
  end component;

  component interrupting_driver is
    generic (
      width : natural
    );
    port (
      boot       : in    std_logic;
      clk        : in    std_logic;
      device_in  : in    std_logic_vector(width - 1 downto 0);
      inta       : in    std_logic;
      device_out : out   std_logic_vector(width - 1 downto 0);
      intr       : out   std_logic
    );
  end component;

  component interruption_controller is
    generic (
      interruption_sources : natural
    );
    port (
      boot         : in    std_logic;
      clk          : in    std_logic;
      global_inta  : in    std_logic;
      devices_intr : in    std_logic_vector(interruption_sources - 1 downto 0);
      global_intr  : out   std_logic;
      devices_inta : out   std_logic_vector(interruption_sources - 1 downto 0);
      iid          : out   std_logic_vector(7 downto 0)
    );
  end component;

  component seg7_driver is
    port (
      enable : in    std_logic;
      value  : in    std_logic_vector(3 downto 0);
      hex    : out   std_logic_vector(6 downto 0)
    );
  end component;

  component timer is
    port (
      clock_50 : in    std_logic;
      boot     : in    std_logic;
      inta     : in    std_logic;
      intr     : out   std_logic
    );
  end component;

end package io_components;
