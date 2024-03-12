LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.memory_components.MemoryController;
USE work.processor_components.proc;

ENTITY sisa IS
    PORT (CLOCK_50  : IN    STD_LOGIC;
          SRAM_ADDR : out   std_logic_vector(17 downto 0);
          SRAM_DQ   : inout std_logic_vector(15 downto 0);
          SRAM_UB_N : out   std_logic;
          SRAM_LB_N : out   std_logic;
          SRAM_CE_N : out   std_logic := '1';
          SRAM_OE_N : out   std_logic := '1';
          SRAM_WE_N : out   std_logic := '1';
          SW        : in std_logic_vector(9 downto 9));
END sisa;

ARCHITECTURE Structure OF sisa IS
BEGIN

pro0: proc
    PORT MAP(   clk => CLOCK_50,
                boot => SW(9),
                datard_m => datard_m,
                addr_m => addr_m,
                data_wr => data_wr,
                wr_m => wr_m,
                word_byte => word_byte);

mem0: MemoryController
PORT MAP (  CLOCK_50  => CLOCK_50, 
            addr      => addr, 
            wr_data   => wr_data, 
            rd_data   => rd_data, 
            we        => we, 
            byte_m    => byte_m, 
            SRAM_ADDR => SRAM_ADDR,
            SRAM_DQ   => SRAM_DQ, 
            SRAM_UB_N => SRAM_UB_N,
            SRAM_LB_N => SRAM_LB_N,
            SRAM_CE_N => SRAM_CE_N,
            SRAM_OE_N => SRAM_OE_N,
            SRAM_WE_N => SRAM_WE_N);
END Structure;