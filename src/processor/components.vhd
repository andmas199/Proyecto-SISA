LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE processor_components IS
    COMPONENT proc IS
    PORT (clk       : IN  STD_LOGIC;
        boot      : IN  STD_LOGIC;
        datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
        addr_m    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        data_wr   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        wr_m      : OUT STD_LOGIC;
        word_byte : OUT STD_LOGIC);
    END COMPONENT;
END PACKAGE;