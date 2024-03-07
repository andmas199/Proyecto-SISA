LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.datapath_components.alu;
USE work.datapath_components.regfile;

ENTITY datapath IS
    PORT (clk    : IN STD_LOGIC;
          op     : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
          wrd    : IN STD_LOGIC;
          addr_a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 immed_x2: IN STD_LOGIC;
			 datard_m : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 ins_dad : IN STD_LOGIC;
			 pc :	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 in_d : IN STD_LOGIC;
			 addr_m : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 data_wr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END datapath;


ARCHITECTURE Structure OF datapath IS

	SIGNAL w: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reg_out: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL y: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL d: STD_LOGIC_VECTOR(15 DOWNTO 0);
	
BEGIN
	
	alu0: alu
		PORT MAP (	x 	=> reg_out,
						y 	=> y,
						op => op,
						w 	=> w);
	reg0: regfile
		PORT MAP (	clk		=> clk,
						wrd		=> wrd,
						d			=> d,
						addr_a	=> addr_a,
						addr_b	=> addr_b,
						addr_d 	=> addr_d,
						a 			=> reg_out,
						b			=> data_wr);
						
	y <= immed WHEN immed_x2 = '0' ELSE immed(14 DOWNTO 0) & '0';
	d <= w WHEN in_d = '0' ELSE datard_m;
	addr_m <= pc WHEN ins_dad = '0' ELSE w;
	
END Structure;