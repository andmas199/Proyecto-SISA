LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY controladores_IO IS
    PORT (  boot: IN STD_LOGIC;
            CLOCK_50: IN STD_LOGIC;
            addr_io: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            wr_io: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            rd_io: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            wr_out: IN STD_LOGIC;
            rd_in: IN STD_LOGIC;
            led_verdes: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            led_rojos: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END controladores_IO;

ARCHITECTURE Structure OF controladores_IO IS
    TYPE regs_t IS ARRAY(255 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL regs: regs_t;
BEGIN

    PROCESS(CLOCK_50, wr_out)
    BEGIN
        IF rising_edge(CLOCK_50) and wr_out = '1' THEN
            regs(to_integer(unsigned(addr_io))) <= wr_io;
        END IF;
    END PROCESS;

    rd_io <= regs(to_integer(unsigned(addr_io)));

    led_verdes <= regs(5)(7 DOWNTO 0);
    led_rojos <= regs(6)(7 DOWNTO 0);

END Structure;