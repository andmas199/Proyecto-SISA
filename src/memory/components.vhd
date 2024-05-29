library ieee;
  use ieee.std_logic_1164.all;

package memory_components is

  component memorycontroller is
    port (
      clock_50      : in    std_logic;
      addr          : in    std_logic_vector(15 downto 0);
      wr_data       : in    std_logic_vector(15 downto 0);
      rd_data       : out   std_logic_vector(15 downto 0);
      we            : in    std_logic;
      byte_m        : in    std_logic;
      vga_addr      : out   std_logic_vector(12 downto 0);
      vga_we        : out   std_logic;
      vga_wr_data   : out   std_logic_vector(15 downto 0);
      vga_rd_data   : in    std_logic_vector(15 downto 0);
      vga_byte_m    : out   std_logic;
      sram_addr     : out   std_logic_vector(17 downto 0);
      sram_dq       : inout std_logic_vector(15 downto 0);
      sram_ub_n     : out   std_logic;
      sram_lb_n     : out   std_logic;
      sram_ce_n     : out   std_logic := '1';
      sram_oe_n     : out   std_logic := '1';
      sram_we_n     : out   std_logic := '1';
      bad_alignment : out   std_logic
    );
  end component;

  component sramcontroller is
    port (
      clk         : in    std_logic;
      sram_addr   : out   std_logic_vector(17 downto 0);
      sram_dq     : inout std_logic_vector(15 downto 0);
      sram_ub_n   : out   std_logic;
      sram_lb_n   : out   std_logic;
      sram_ce_n   : out   std_logic;
      sram_oe_n   : out   std_logic;
      sram_we_n   : out   std_logic;
      address     : in    std_logic_vector(15 downto 0) := "0000000000000000";
      datareaded  : out   std_logic_vector(15 downto 0);
      datatowrite : in    std_logic_vector(15 downto 0);
      wr          : in    std_logic;
      byte_m      : in    std_logic := '0'
    );
  end component;

end package memory_components;
