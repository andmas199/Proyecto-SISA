library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.memory_components.SRAMController;

entity MemoryController is
    port (CLOCK_50  : in  std_logic;
	      addr      : in  std_logic_vector(15 downto 0);
          wr_data   : in  std_logic_vector(15 downto 0);
          rd_data   : out std_logic_vector(15 downto 0);
          we        : in  std_logic;
          byte_m    : in  std_logic;
          vga_addr  : out std_logic_vector(12 downto 0);
          vga_we    : out std_logic;
          vga_wr_data : out std_logic_vector(15 downto 0);
          vga_rd_data : in std_logic_vector(15 downto 0);
          vga_byte_m : out std_logic;
          -- señales para la placa de desarrollo
          SRAM_ADDR : out   std_logic_vector(17 downto 0);
          SRAM_DQ   : inout std_logic_vector(15 downto 0);
          SRAM_UB_N : out   std_logic;
          SRAM_LB_N : out   std_logic;
          SRAM_CE_N : out   std_logic := '1';
          SRAM_OE_N : out   std_logic := '1';
          SRAM_WE_N : out   std_logic := '1');
end MemoryController;

architecture comportament of MemoryController is
    SIGNAL sram_we: std_logic;
    SIGNAL sram_rd_data: std_logic_vector(15 downto 0);
    TYPE addr_space_t IS (ADDR_SPACE_SRAM_RW, ADDR_SPACE_VGA, ADDR_SPACE_SRAM_RO);
    SIGNAL addr_space: addr_space_t;
begin

    addr_space <= ADDR_SPACE_SRAM_RW WHEN unsigned(addr) < 16#A000#
        ELSE      ADDR_SPACE_VGA     WHEN unsigned(addr) < 16#C000#
        ELSE      ADDR_SPACE_SRAM_RO;

    WITH addr_space SELECT
        rd_data <= sram_rd_data WHEN ADDR_SPACE_SRAM_RW,
                   vga_rd_data  WHEN ADDR_SPACE_VGA,
                   sram_rd_data WHEN ADDR_SPACE_SRAM_RO;

    sram_we <= we WHEN addr_space = ADDR_SPACE_SRAM_RW ELSE '0';

    sramContr: SRAMController
        PORT MAP(   clk         => CLOCK_50,
                    SRAM_ADDR   => SRAM_ADDR,
                    SRAM_DQ     => SRAM_DQ,
                    SRAM_UB_N   => SRAM_UB_N,
                    SRAM_LB_N   => SRAM_LB_N,
                    SRAM_CE_N   => SRAM_CE_N,
                    SRAM_OE_N   => SRAM_OE_N,
                    SRAM_WE_N   => SRAM_WE_N,
                    address     => addr,
                    dataReaded  => sram_rd_data,
                    dataToWrite => wr_data,
                    WR          => sram_we,
                    byte_m      => byte_m);

    vga_addr <= addr(12 downto 0);
    vga_we <= we WHEN addr_space = ADDR_SPACE_VGA ELSE '0';
    vga_wr_data <= wr_data;
    vga_byte_m <= byte_m;

end comportament;
