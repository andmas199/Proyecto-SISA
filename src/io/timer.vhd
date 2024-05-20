LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY timer IS
    PORT (
        CLOCK_50: in std_logic;
        boot: in std_logic;
        inta: in std_logic;
        intr: out std_logic
    );
END timer;

ARCHITECTURE rtl OF timer IS
    SIGNAL cycles: unsigned(21 downto 0);
    CONSTANT INTERVAL: unsigned(21 downto 0) := to_unsigned(2500000, cycles'length);
BEGIN
    PROCESS (CLOCK_50)
    BEGIN
        IF rising_edge(CLOCK_50) THEN
            IF boot = '1' THEN
                cycles <= INTERVAL;
            ELSE
                IF cycles = 0 THEN
                    cycles <= INTERVAL;
                    intr <= '1';
                ELSE
                    cycles <= cycles - 1;
                END IF;

                IF inta = '1' THEN
                    intr <= '0';
                END IF;
            END IF;
        END IF;
    END PROCESS;
END rtl;