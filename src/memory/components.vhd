LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE memory_components IS

    COMPONENT MemoryController IS
        PORT (CLOCK_50  : IN  STD_LOGIC;
            addr      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
            wr_data   : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
            rd_data   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            we        : IN  STD_LOGIC;
            byte_m    : IN  STD_LOGIC;
            vga_addr  : out std_logic_vector(12 downto 0);
            vga_we    : out std_logic;
            vga_wr_data : out std_logic_vector(15 downto 0);
            vga_rd_data : in std_logic_vector(15 downto 0);
            vga_byte_m : out std_logic;
            SRAM_ADDR : OUT   STD_LOGIC_VECTOR(17 DOWNTO 0);
            SRAM_DQ   : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            SRAM_UB_N : OUT   STD_LOGIC;
            SRAM_LB_N : OUT   STD_LOGIC;
            SRAM_CE_N : OUT   STD_LOGIC := '1';
            SRAM_OE_N : OUT   STD_LOGIC := '1';
            SRAM_WE_N : OUT   STD_LOGIC := '1';
				bad_alignment : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT SRAMController is
        PORT (clk         : IN    STD_LOGIC;
              SRAM_ADDR   : OUT   STD_LOGIC_VECTOR(17 DOWNTO 0);
              SRAM_DQ     : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
              SRAM_UB_N   : OUT   STD_LOGIC;
              SRAM_LB_N   : OUT   STD_LOGIC;
              SRAM_CE_N   : OUT   STD_LOGIC;
              SRAM_OE_N   : OUT   STD_LOGIC;
              SRAM_WE_N   : OUT   STD_LOGIC;
              address     : IN    STD_LOGIC_VECTOR(15 DOWNTO 0) := "0000000000000000";
              dataReaded  : OUT   STD_LOGIC_VECTOR(15 DOWNTO 0);
              dataToWrite : IN    STD_LOGIC_VECTOR(15 DOWNTO 0);
              WR          : IN    STD_LOGIC;
              byte_m      : IN    STD_LOGIC := '0');
    END COMPONENT;

END PACKAGE;
