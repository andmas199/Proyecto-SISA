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
    SIGNAL we_validated: std_logic;
begin

    we_validated <= we WHEN unsigned(addr) < 16#C000# ELSE '0';

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
                    dataReaded  => rd_data,
                    dataToWrite => wr_data,
                    WR          => we_validated,
                    byte_m      => byte_m);

end comportament;
