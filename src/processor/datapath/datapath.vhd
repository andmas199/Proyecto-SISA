LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.datapath_components.all;
USE work.io_components.all;

ENTITY datapath IS
    PORT (clk    : IN STD_LOGIC;
			 op_group: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
          op     : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          wrd    : IN STD_LOGIC;
          addr_a : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  regfile_input: IN regfile_input_t;
			 immed_x2: IN STD_LOGIC;
			 datard_m : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 ins_dad : IN STD_LOGIC;
			 pc :	IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 Rb_N	: IN STD_LOGIC;
			 addr_m : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 data_wr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 alu_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z : OUT STD_LOGIC;
			 rd_io : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 wr_io : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END datapath;


ARCHITECTURE Structure OF datapath IS

	SIGNAL w: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reg_out: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL immediate: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL b: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL y: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL d: STD_LOGIC_VECTOR(15 DOWNTO 0);
	
BEGIN
	
	alu0: alu
		PORT MAP (	x 	=> reg_out,
						y 	=> y,
						op_group => op_group,
						op => op,
						w 	=> w,
						z => z);
	reg0: regfile
		PORT MAP (	clk		=> clk,
						wrd		=> wrd,
						d			=> d,
						addr_a	=> addr_a,
						addr_b	=> addr_b,
						addr_d 	=> addr_d,
						a 			=> reg_out,
						b			=> b);
	data_wr <= b;					
	immediate <= immed WHEN immed_x2 = '0' ELSE immed(14 DOWNTO 0) & '0';				
	y <= immediate WHEN Rb_N = '0' ELSE b;

	WITH regfile_input SELECT
		d <= w 									WHEN ALU_OUTPUT,
			 datard_m							WHEN MEM,
			 STD_LOGIC_VECTOR(unsigned(pc) + 2) WHEN PC_UPD,
			 rd_io								WHEN IO_RD;

	addr_m <= pc WHEN ins_dad = '0' ELSE w;
	alu_out <= w;
	
	wr_io <= b;
END Structure;