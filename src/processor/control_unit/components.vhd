LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE control_unit_components IS

    COMPONENT control_l IS
        PORT (  ir     		: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                op     		: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
                ldpc   		: OUT STD_LOGIC;
                wrd    		: OUT STD_LOGIC;
                addr_a 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_b 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_d 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                immed  		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                wr_m	  	: OUT STD_LOGIC;
                in_d   		: OUT STD_LOGIC;
                immed_x2	: OUT STD_LOGIC;
                word_byte   : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT multi is
        PORT (  clk         : IN  STD_LOGIC;
                boot        : IN  STD_LOGIC;
                ldpc_l      : IN  STD_LOGIC;
                wrd_l       : IN  STD_LOGIC;
                wr_m_l      : IN  STD_LOGIC;
                w_b         : IN  STD_LOGIC;
                ldpc        : OUT STD_LOGIC;
                wrd         : OUT STD_LOGIC;
                wr_m        : OUT STD_LOGIC;
                ldir        : OUT STD_LOGIC;
                ins_dad     : OUT STD_LOGIC;
                word_byte   : OUT STD_LOGIC);
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

    COMPONENT unidad_control IS
        PORT (  boot        : IN  STD_LOGIC;
                clk         : IN  STD_LOGIC;
                datard_m    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                op          : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
                wrd         : OUT STD_LOGIC;
                addr_a      : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_b      : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_d      : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                immed       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                pc          : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                ins_dad     : OUT STD_LOGIC;
                in_d        : OUT STD_LOGIC;
                immed_x2    : OUT STD_LOGIC;
                wr_m        : OUT STD_LOGIC;
                word_byte   : OUT STD_LOGIC);
    END COMPONENT;
END PACKAGE;