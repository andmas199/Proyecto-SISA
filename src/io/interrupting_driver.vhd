LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY interrupting_driver IS
    GENERIC (
        width: natural
    );
    PORT (
        boot: in std_logic;
        clk: in std_logic;
        device_in: in std_logic_vector(width - 1 downto 0);
        inta: in std_logic;
        device_out: out std_logic_vector(width - 1 downto 0);
        intr: out std_logic
    );
END interrupting_driver;

ARCHITECTURE rtl OF interrupting_driver IS
    TYPE state_t IS (CLEAR, INTERRUPTED);
    SIGNAL state: state_t;

    SIGNAL changed: boolean;
    SIGNAL device_buff: std_logic_vector(width - 1 downto 0);
BEGIN
    
    changed <= device_buff /= device_in;
    intr <= '1' WHEN state = INTERRUPTED ELSE '0';

    PROCESS (clk, boot)
    BEGIN
        IF rising_edge(clk) THEN
            IF boot = '1' THEN
                state <= CLEAR;
                device_buff <= device_in;
            ELSE
                state <= state;
                CASE state IS
                    WHEN CLEAR =>
                        IF changed THEN
                            state <= INTERRUPTED;
                            device_buff <= device_in;
                        END IF;
                    WHEN INTERRUPTED =>
                        IF inta = '1' THEN
                            device_out <= device_buff;
                            IF changed THEN
                                device_buff <= device_in;
                            ELSE
                                state <= CLEAR;
                            END IF;
                        END IF;
                END CASE;
            END IF;
        END IF;
    END PROCESS;
END rtl;