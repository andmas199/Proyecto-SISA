LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY interruption_controller IS
    GENERIC (
        interruption_sources: natural
    );
    PORT (
        boot: in std_logic;
        clk: in std_logic;
        global_inta: in std_logic;
        devices_intr: in std_logic_vector(interruption_sources - 1 downto 0);
        global_intr: out std_logic;
        devices_inta: out std_logic_vector(interruption_sources - 1 downto 0);
        iid: out std_logic_vector(7 downto 0)
    );
END interruption_controller;

ARCHITECTURE rtl OF interruption_controller IS
    SIGNAL active_iid: unsigned(7 downto 0);
BEGIN

    PROCESS (clk, boot, active_iid, global_inta, devices_intr)
    BEGIN
        IF rising_edge(clk) THEN
            IF boot = '1' THEN
                devices_inta <= devices_intr;
            ELSE
                devices_inta <= (others => '0');

                FOR i IN 0 to interruption_sources - 1 LOOP
                    IF devices_intr(i) = '1' THEN
                        active_iid <= to_unsigned(i, active_iid'length);
                        EXIT;
                    END IF;
                END LOOP;   
            END IF;
        END IF;

        devices_inta(to_integer(active_iid)) <= global_inta;
    END PROCESS;

    global_intr <= devices_intr(to_integer(active_iid));
    iid <= std_logic_vector(active_iid);
END rtl;