LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.control_l_defs.all;
USE work.datapath_components.all;
USE work.io_components.all;

ENTITY datapath IS
    PORT (clk    	: IN STD_LOGIC;
			 op_group: IN STD_LOGIC_VECTOR(1 DOWNTO 0);
          op     	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          wrd_1  	: IN STD_LOGIC;
          addr_a 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b 	: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d_1: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_d_2: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			 clear	: IN STD_LOGIC;
			 chg_mode: IN STD_LOGIC;
          immed  	: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 d_sys	: IN STD_LOGIC;
			 wrd_2	: IN STD_LOGIC;
			 regfile_input: IN regfile_input_1_t;
			 sel_reg_out : IN STD_LOGIC;
			 immed_x2: IN STD_LOGIC;
			 datard_m: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 ins_dad : IN STD_LOGIC;
			 pc 		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 Rb_N		: IN STD_LOGIC;
			 addr_m 	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 data_wr : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 alu_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z 		: OUT STD_LOGIC;
			 rd_io 	: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			 wr_io 	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 intr_enabl: OUT STD_LOGIC;
			 div_zero: OUT STD_LOGIC;
			 mux_regS: IN STD_LOGIC;
			 exc_code: IN STD_LOGIC_VECTOR(3 DOWNTO 0));
END datapath;


ARCHITECTURE Structure OF datapath IS

	SIGNAL w: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL reg_out: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL immediate: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL a: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL b: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL y: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL a_esp: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL b_esp: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL d: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL d_2: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL wrd_gen: STD_LOGIC;
	SIGNAL wrd_esp: STD_LOGIC;
	
BEGIN
	
	alu0: alu
		PORT MAP (	x 	=> reg_out,
						y 	=> y,
						op_group => op_group,
						op => op,
						w 	=> w,
						z => z,
						div_zero => div_zero);
	reg0: regfile
		PORT MAP (	clk		=> clk,
						wrd_1		=> wrd_gen,
						wrd_2    => '0',
						d_1		=> d,
						d_2		=> (OTHERS => '0'),
						addr_a	=> addr_a,
						addr_b	=> addr_b,
						addr_d_1 => addr_d_1,
						addr_d_2 => "000",
						clear		=> clear,
						chg_mode => '0',
						bad_alignment => '0',
						a 			=> a,
						b			=> b,
						m_addr   => (OTHERS => '0'));
	
	regS: regfile
		PORT MAP (	clk 		=> clk,
						wrd_1		=> wrd_esp,
						wrd_2		=> wrd_2,
						d_1		=> d,
						d_2      => d_2,
						addr_a	=> addr_a,
						addr_b	=> addr_b,
						addr_d_1	=> addr_d_1,
						addr_d_2 => addr_d_2,
						clear		=> clear,
						chg_mode => chg_mode,
						a			=> a_esp,
						b			=> b_esp,
						intr_enabl => intr_enabl,
						bad_alignment => mux_regS,
						m_addr => w);
						
	d_2 <= "000000000000" & exc_code WHEN mux_regS = '1' ELSE b_esp;
	data_wr <= b;
	reg_out <= a WHEN sel_reg_out = '0' ELSE a_esp; -- 0 is normal register bank, 1 is special bank
	wrd_esp <= wrd_1 and d_sys;
	wrd_gen <= wrd_1 and not d_sys;
	immediate <= immed WHEN immed_x2 = '0' ELSE immed(14 DOWNTO 0) & '0';				
	y <= immediate WHEN Rb_N = '0' ELSE b;

	--Input 1 of both register banks
	WITH regfile_input SELECT
		d <= w 									WHEN REG_IN_1_ALU,
			  datard_m							WHEN REG_IN_1_MEM,
			  pc								WHEN REG_IN_1_PC,
		     STD_LOGIC_VECTOR(unsigned(pc) + 2) WHEN REG_IN_1_PC_UPD,
			  rd_io								WHEN REG_IN_1_IO,
			  (others => '-')					WHEN REG_IN_1_DONTCARE;				  
				

	addr_m <= pc WHEN ins_dad = '0' ELSE w;
	alu_out <= w;
	
	wr_io <= b;
END Structure;