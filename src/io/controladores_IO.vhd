LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.io_components.cycle_counter;
USE work.io_components.seg7_driver;
USE work.keyboard_components.keyboard_controller;

ENTITY controladores_IO IS
    PORT (  boot: IN STD_LOGIC;
            CLOCK_50: IN STD_LOGIC;
            clk: IN STD_LOGIC;
            addr_io: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            wr_io: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            rd_io: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            wr_out: IN STD_LOGIC;
            rd_in: IN STD_LOGIC;
            led_verdes: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            led_rojos: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            keys: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            switches: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            HEX0: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            HEX1: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            HEX2: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
            HEX3: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
			intr: OUT STD_LOGIC;
			inta: IN STD_LOGIC;
            vga_cursor: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            vga_cursor_enable: OUT STD_LOGIC;
            ps2_clk : INOUT std_logic;
            ps2_data : INOUT std_logic);
END controladores_IO;

ARCHITECTURE Structure OF controladores_IO IS

    TYPE regs_t IS ARRAY(255 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL regs: regs_t;

    TYPE hexs_t IS ARRAY(3 DOWNTO 0) OF STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL hexs: hexs_t;

    SIGNAL kb_read_char: STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL kb_clear_char: STD_LOGIC;
    SIGNAL kb_data_ready: STD_LOGIC;

    SIGNAL cycles: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL milis: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL milis_in: STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL milis_wre: STD_LOGIC;

    CONSTANT LEDG_PORT: integer := 5;
    CONSTANT LEDR_PORT: integer := 6;
    CONSTANT KEYS_PORT: integer := 7;
    CONSTANT SWITCHES_PORT: integer := 8;
    CONSTANT HEX_CONTROL_PORT: integer := 9;
    CONSTANT HEX_VALUE_PORT: integer := 10;
    CONSTANT CURSOR_POSITION_PORT: integer := 11;
    CONSTANT CURSOR_ENABLE_PORT: integer := 12;
    CONSTANT KEYBOARD_VALUE_PORT: integer := 15;
    CONSTANT KEYBOARD_CONTROL_PORT: integer := 16;
    CONSTANT CYCLES_PORT: integer := 20;
    CONSTANT MILIS_PORT: integer := 21;

    FUNCTION IsReadOnlyPort(port_addr: STD_LOGIC_VECTOR(7 DOWNTO 0)) RETURN BOOLEAN IS
        VARIABLE port_addr_int: integer;
    BEGIN
        port_addr_int := to_integer(unsigned(port_addr));
        RETURN port_addr_int = KEYS_PORT
            or port_addr_int = SWITCHES_PORT
            or port_addr_int = KEYBOARD_VALUE_PORT
            or port_addr_int = CYCLES_PORT;
    END;

BEGIN

    PROCESS(clk, wr_out)
    BEGIN
        IF rising_edge(clk) THEN
            kb_clear_char <= '0';
            milis_wre <= '0';

            -- IO Inputs
            regs(KEYS_PORT)(3 DOWNTO 0) <= keys;
            regs(SWITCHES_PORT)(7 DOWNTO 0) <= switches;
            regs(KEYBOARD_VALUE_PORT)(7 DOWNTO 0) <= kb_read_char;
            regs(KEYBOARD_CONTROL_PORT)(15 DOWNTO 0) <= (0 => kb_data_ready, others => '0');
            regs(CYCLES_PORT) <= cycles;
            regs(MILIS_PORT) <= milis;
        
            -- IO-mapped registers Writes
            IF wr_out = '1' and not IsReadOnlyPort(addr_io) THEN
                regs(to_integer(unsigned(addr_io))) <= wr_io;
            END IF;

            -- IO-mapped registers Writes side-effects
            IF wr_out = '1' THEN
                CASE to_integer(unsigned(addr_io)) IS
                    WHEN KEYBOARD_CONTROL_PORT =>
                        kb_clear_char <= '1';
                    WHEN MILIS_PORT =>
                        milis_in <= wr_io;
                        milis_wre <= '1';
                    WHEN OTHERS =>
                END CASE;
            END IF;
        END IF;
    END PROCESS;

    rd_io <= regs(to_integer(unsigned(addr_io)));

    led_verdes <= regs(LEDG_PORT)(7 DOWNTO 0);
    led_rojos <= regs(LEDR_PORT)(7 DOWNTO 0);

    vga_cursor <= regs(CURSOR_POSITION_PORT);
    vga_cursor_ENABLE <= regs(CURSOR_ENABLE_PORT)(0);

    hex_gen: FOR i IN 0 TO 3 GENERATE
        driver: seg7_driver
            PORT MAP (  enable => regs(HEX_CONTROL_PORT)(i),
                        value => regs(HEX_VALUE_PORT)(4*(i+1)-1 DOWNTO 4*i),
                        hex => hexs(i));
    END GENERATE;

    HEX0 <= hexs(0);
    HEX1 <= hexs(1);
    HEX2 <= hexs(2);
    HEX3 <= hexs(3);
	 
	intr <= '0';

    keyboard: keyboard_controller
    PORT MAP (  clk        => CLOCK_50,
                reset      => boot,
                ps2_clk    => ps2_clk,
                ps2_data   => ps2_data,
                read_char  => kb_read_char,
                clear_char => kb_clear_char,
                data_ready => kb_data_ready);
    
    cc: cycle_counter
    PORT MAP ( clock_50 => CLOCK_50,
                milis_in => milis_in,
                wre => milis_wre,
                cycles  => cycles,
                milis   => milis);
END Structure;
