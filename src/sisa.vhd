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
    SIGNAL data_rd: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL data_wr: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL data_addr: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL data_byte: STD_LOGIC;
    SIGNAL we: STD_LOGIC;
    SIGNAL clock4: STD_LOGIC;
BEGIN

    pro0: proc
        PORT MAP(   clk => clock4,
                    boot => SW(9),
                    datard_m => data_rd,
                    addr_m => data_addr,
                    data_wr => data_wr,
                    wr_m => we,
                    word_byte => data_byte);

    mem0: MemoryController
    PORT MAP (  CLOCK_50  => CLOCK_50, 
                addr      => data_addr, 
                wr_data   => data_wr, 
                rd_data   => data_rd, 
                we        => we, 
                byte_m    => data_byte, 
                SRAM_ADDR => SRAM_ADDR,
                SRAM_DQ   => SRAM_DQ, 
                SRAM_UB_N => SRAM_UB_N,
                SRAM_LB_N => SRAM_LB_N,
                SRAM_CE_N => SRAM_CE_N,
                SRAM_OE_N => SRAM_OE_N,
                SRAM_WE_N => SRAM_WE_N);

    PROCESS (CLOCK_50)
        VARIABLE clock4_counter: unsigned(1 DOWNTO 0) := to_unsigned(2, 2);
    BEGIN
        IF rising_edge(CLOCK_50) THEN
            clock4_counter := clock4_counter + 1;
            clock4 <= clock4_counter(1);
        END IF;
    END PROCESS;

END Structure;