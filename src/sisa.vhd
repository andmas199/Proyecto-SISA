LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.io_components.controladores_IO;
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
          LEDG      : out   std_logic_vector(7 downto 0);
          LEDR      : out   std_logic_vector(7 downto 0);
          KEY       : in std_logic_vector(3 downto 0);
          SW        : in std_logic_vector(9 downto 0);
          HEX0      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
          HEX1      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
          HEX2      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
          HEX3      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END sisa;

ARCHITECTURE Structure OF sisa IS
    SIGNAL clock8_counter: unsigned(2 DOWNTO 0) := to_unsigned(0, 3);
    SIGNAL data_rd: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL data_wr: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL data_addr: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL data_byte: STD_LOGIC;
    SIGNAL we: STD_LOGIC;
    SIGNAL clock8: STD_LOGIC;
    SIGNAL boot: STD_LOGIC;
    SIGNAL addr_io: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL wr_io: STD_LOGIC_VECTOR(15 DOWNTO 0);  
    SIGNAL rd_io: STD_LOGIC_VECTOR(15 DOWNTO 0);  
    SIGNAL wr_out: STD_LOGIC; 
    SIGNAL rd_in: STD_LOGIC;
	 SIGNAL intr: STD_LOGIC;
BEGIN

    pro0: proc
        PORT MAP(   clk => clock8,
                    boot => boot,
                    datard_m => data_rd,
                    addr_m => data_addr,
                    data_wr => data_wr,
                    wr_m => we,
                    word_byte => data_byte,
                    addr_io     => addr_io,
                    wr_io       => wr_io,
                    rd_io       => rd_io,
                    wr_out      => wr_out,
                    rd_in       => rd_in,
						  intr		  => intr);

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
    
    io: controladores_IO
        PORT MAP (  boot        => boot,
                    CLOCK_50    => clock8,
                    addr_io     => addr_io,
                    wr_io       => wr_io,
                    rd_io       => rd_io,
                    wr_out      => wr_out,
                    rd_in       => rd_in,
                    led_verdes  => LEDG,
                    led_rojos   => LEDR,
                    keys        => KEY,
                    switches    => SW(7 DOWNTO 0),
                    HEX0        => HEX0,
                    HEX1        => HEX1,
                    HEX2        => HEX2,
                    HEX3        => HEX3,
						  intr		  => intr);

    boot <= SW(9);

    PROCESS (CLOCK_50)
    BEGIN
        IF rising_edge(CLOCK_50) THEN
            clock8_counter <= clock8_counter + 1;
        END IF;
    END PROCESS;

    clock8 <= clock8_counter(2);

END Structure;

