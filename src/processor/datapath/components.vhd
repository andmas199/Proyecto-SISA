LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.control_l_defs.regfile_input_1_t;

PACKAGE datapath_components IS

    COMPONENT alu IS
        PORT (  x  		 : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
					 y  		 : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
					 op_group : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
					 op 		 : IN	 STD_LOGIC_VECTOR(2 DOWNTO 0);
					 w  		 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
					 z	 		 :	OUT STD_LOGIC;
					 div_zero : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT datapath IS
        PORT (  clk         : IN  STD_LOGIC;
					 op_group	 : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
                op          : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                wrd_1         : IN  STD_LOGIC;
                addr_a      : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_b      : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_d_1    : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
					 addr_d_2    : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
					 clear		 : IN  STD_LOGIC;
					 chg_mode	 : IN	 STD_LOGIC;
                immed       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                immed_x2    : IN  STD_LOGIC;
					 d_sys		 : IN  STD_LOGIC;
					 wrd_2			 : IN STD_LOGIC;
					 sel_reg_out : IN	 STD_LOGIC;
                datard_m    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                ins_dad     : IN  STD_LOGIC;
					 Rb_N			 : IN STD_LOGIC;
                pc          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                regfile_input: IN regfile_input_1_t;
                addr_m      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                data_wr     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                alu_out     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                z : OUT STD_LOGIC;
                rd_io : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
                wr_io : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
					 intr_enabl: OUT STD_LOGIC;
					 div_zero : OUT STD_LOGIC;
					 mux_regS : IN STD_LOGIC;
					 exc_code : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    			 fetch_excp : IN STD_LOGIC;
                proc_privilege_level : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT regfile IS
    PORT (  clk     : IN  STD_LOGIC;
            wrd_1   : IN  STD_LOGIC;
				wrd_2   : IN  STD_LOGIC;
            d_1     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				d_2     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				clear	  : IN STD_LOGIC;
				chg_mode: IN  STD_LOGIC;
            addr_a  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            addr_b  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            addr_d_1: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				addr_d_2: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            a       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            b       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				intr_enabl: OUT STD_LOGIC;
				bad_alignment : IN STD_LOGIC;
				m_addr : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            privilege_level : OUT STD_LOGIC);
    END COMPONENT;

END PACKAGE;
