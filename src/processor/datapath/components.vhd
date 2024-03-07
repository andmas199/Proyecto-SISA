LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE datapath_components IS

    COMPONENT alu IS
        PORT (  x  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                y  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                op : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
                w  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
    END COMPONENT;

    COMPONENT datapath IS
        PORT (  clk         : IN  STD_LOGIC;
                op          : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
                wrd         : IN  STD_LOGIC;
                addr_a      : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_b      : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_d      : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                immed       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                immed_x2    : IN  STD_LOGIC;
                datard_m    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                ins_dad     : IN  STD_LOGIC;
                pc          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                in_d        : IN  STD_LOGIC;
                addr_m      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                data_wr     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
    END COMPONENT;

    COMPONENT regfile IS
    PORT (  clk     : IN  STD_LOGIC;
            wrd     : IN  STD_LOGIC;
            d       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
            addr_a  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            addr_b  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            addr_d  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            a       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            b       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
    END COMPONENT;

END PACKAGE;