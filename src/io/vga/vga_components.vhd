
library ieee;
  use ieee.std_logic_1164.all;

package vga_components is

  component vga_controller is
    port (
      clk_50mhz : in    std_logic;
      reset     : in    std_logic;
      --
      blank_out      : out   std_logic;
      csync_out      : out   std_logic;
      red_out        : out   std_logic_vector(7 downto 0);
      green_out      : out   std_logic_vector(7 downto 0);
      blue_out       : out   std_logic_vector(7 downto 0);
      horiz_sync_out : out   std_logic;
      vert_sync_out  : out   std_logic;
      --
      addr_vga          : in    std_logic_vector(12 downto 0);
      we                : in    std_logic;
      wr_data           : in    std_logic_vector(15 downto 0);
      rd_data           : out   std_logic_vector(15 downto 0);
      byte_m            : in    std_logic;
      vga_cursor        : in    std_logic_vector(15 downto 0);
      vga_cursor_enable : in    std_logic
    );
  end component;

end package vga_components;
