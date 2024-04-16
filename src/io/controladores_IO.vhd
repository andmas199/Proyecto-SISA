LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.io_components.seg7_driver;

ENTITY controladores_IO IS
    PORT (  boot: IN STD_LOGIC;
            CLOCK_50: IN STD_LOGIC;
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
            HEX3: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END controladores_IO;

ARCHITECTURE Structure OF controladores_IO IS

    TYPE regs_t IS ARRAY(255 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL regs: regs_t;

    TYPE hexs_t IS ARRAY(3 DOWNTO 0) OF STD_LOGIC_VECTOR(6 DOWNTO 0);
    SIGNAL hexs: hexs_t;

    CONSTANT LEDG_PORT: integer := 5;
    CONSTANT LEDR_PORT: integer := 6;
    CONSTANT KEYS_PORT: integer := 7;
    CONSTANT SWITCHES_PORT: integer := 8;
    CONSTANT HEX_CONTROL_PORT: integer := 9;
    CONSTANT HEX_VALUE_PORT: integer := 10;

    FUNCTION IsReadOnlyPort(port_addr: STD_LOGIC_VECTOR(7 DOWNTO 0)) RETURN BOOLEAN IS
        VARIABLE port_addr_int: integer;
    BEGIN
        port_addr_int := to_integer(unsigned(port_addr));
        RETURN port_addr_int = KEYS_PORT or port_addr_int = SWITCHES_PORT;
    END;

BEGIN

    PROCESS(CLOCK_50, wr_out)
    BEGIN
        IF rising_edge(CLOCK_50) THEN
            regs(KEYS_PORT)(3 DOWNTO 0) <= keys;
            regs(SWITCHES_PORT)(7 DOWNTO 0) <= switches;
        
            IF wr_out = '1' and IsReadOnlyPort(addr_io) THEN
                regs(to_integer(unsigned(addr_io))) <= wr_io;
            END IF;
        END IF;
    END PROCESS;

    rd_io <= regs(to_integer(unsigned(addr_io)));

    led_verdes <= regs(LEDG_PORT)(7 DOWNTO 0);
    led_rojos <= regs(LEDR_PORT)(7 DOWNTO 0);

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

END Structure;
