LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.io_components.controladores_IO;
USE work.vga_components.vga_controller;
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
          HEX3      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
          PS2_CLK   : INOUT std_logic;
          PS2_DAT   : INOUT std_logic;
          BLANK_OUT      : OUT STD_LOGIC;
          CSYNC_OUT      : OUT STD_LOGIC;
          RED_OUT        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
          GREEN_OUT      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
          BLUE_OUT       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
          HORIZ_SYNC_OUT : OUT STD_LOGIC;
          VERT_SYNC_OUT  : OUT STD_LOGIC);
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
    SIGNAL vga_addr: STD_LOGIC_VECTOR(12 DOWNTO 0);
    SIGNAL vga_we: STD_LOGIC;
    SIGNAL vga_wr_data: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL vga_rd_data: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL vga_byte_m: STD_LOGIC;
    SIGNAL vga_cursor: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL vga_cursor_enable: STD_LOGIC;
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
                    rd_in       => rd_in);

    mem0: MemoryController
    PORT MAP (  CLOCK_50    => CLOCK_50,
                addr        => data_addr, 
                wr_data     => data_wr, 
                rd_data     => data_rd, 
                we          => we, 
                byte_m      => data_byte, 
                vga_addr    => vga_addr,
                vga_we      => vga_we,
                vga_wr_data => vga_wr_data,
                vga_rd_data => vga_rd_data,
                vga_byte_m  => vga_byte_m,
                SRAM_ADDR   => SRAM_ADDR,
                SRAM_DQ     => SRAM_DQ, 
                SRAM_UB_N   => SRAM_UB_N,
                SRAM_LB_N   => SRAM_LB_N,
                SRAM_CE_N   => SRAM_CE_N,
                SRAM_OE_N   => SRAM_OE_N,
                SRAM_WE_N   => SRAM_WE_N);
    
    io: controladores_IO
        PORT MAP (  boot              => boot,
                    CLOCK_50          => CLOCK_50,
                    clk               => clock8,
                    addr_io           => addr_io,
                    wr_io             => wr_io,
                    rd_io             => rd_io,
                    wr_out            => wr_out,
                    rd_in             => rd_in,
                    led_verdes        => LEDG,
                    led_rojos         => LEDR,
                    keys              => KEY,
                    switches          => SW(7 DOWNTO 0),
                    HEX0              => HEX0,
                    HEX1              => HEX1,
                    HEX2              => HEX2,
                    HEX3              => HEX3,
                    vga_cursor        => vga_cursor,
                    vga_cursor_enable => vga_cursor_enable,
                    ps2_clk           => PS2_CLK,
                    ps2_data          => PS2_DAT);

    vga: vga_controller
    PORT MAP (clk_50mhz      => CLOCK_50,
              reset          => boot,
              blank_out      => BLANK_OUT,
              csync_out      => CSYNC_OUT,
              red_out        => RED_OUT,
              green_out      => GREEN_OUT,
              blue_out       => BLUE_OUT,
              horiz_sync_out => HORIZ_SYNC_OUT,
              vert_sync_out  => VERT_SYNC_OUT,
              addr_vga          => vga_addr,
              we                => vga_we,
              wr_data           => vga_wr_data,
              rd_data           => vga_rd_data,
              byte_m            => vga_byte_m,
              vga_cursor        => vga_cursor,
              vga_cursor_enable => vga_cursor_enable);

    boot <= SW(9);

    PROCESS (CLOCK_50)
    BEGIN
        IF rising_edge(CLOCK_50) THEN
            clock8_counter <= clock8_counter + 1;
        END IF;
    END PROCESS;

    clock8 <= clock8_counter(2);

END Structure;

