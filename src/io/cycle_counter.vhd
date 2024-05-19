LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY cycle_counter IS
    PORT (
        clock_50: in std_logic;
        milis_in: in std_logic_vector(15 downto 0);
        wre: in std_logic;
        cycles: out std_logic_vector(15 downto 0);
        milis: out std_logic_vector(15 downto 0)
    );
END cycle_counter;

ARCHITECTURE rtl OF cycle_counter IS
    SIGNAL cycles_internal: unsigned(15 downto 0);
    SIGNAL milis_internal: unsigned(15 downto 0);
BEGIN
    PROCESS (clock_50)
    BEGIN
        IF rising_edge(clock_50) THEN
            IF wre = '1' THEN
                milis_internal <= unsigned(milis_in);
            END IF;

            IF cycles_internal = 0 THEN
                cycles_internal <= x"C350";
                IF milis_internal > 0 THEN
                    milis_internal <= milis_internal - 1;
                END IF;
            ELSE
                cycles_internal <= cycles_internal - 1;
            END IF;
        END IF;
    END PROCESS;

    cycles <= std_logic_vector(cycles_internal);
    milis <= std_logic_vector(milis_internal);
END rtl;