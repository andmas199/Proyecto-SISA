LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.control_unit_components.sequencing_mode_t;
USE work.datapath_components.regfile_input_t;

ENTITY control_l IS
    PORT (ir     		: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			z			: IN STD_LOGIC;
			 op_group	: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          op     		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          ldpc   		: OUT STD_LOGIC;
          wrd    		: OUT STD_LOGIC;
          addr_a 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 wr_m	  		: OUT STD_LOGIC;
			 regfile_input: OUT regfile_input_t;
			 Rb_N			: OUT STD_LOGIC;
			 immed_x2	: OUT STD_LOGIC;
			 word_byte	: OUT STD_LOGIC;
			 sequencing_mode: OUT sequencing_mode_t);
END control_l;


ARCHITECTURE Structure OF control_l IS

	SIGNAL op_code: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL func:	 STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL take_branch: STD_LOGIC;

BEGIN
	op_code <= ir(15 DOWNTO 12);
	func <= ir(5 DOWNTO 3);
	
	WITH op_code SELECT
		op_group <= "00" WHEN "0000",
						"01" WHEN "0001",
						"00" WHEN "0010",
						"00" WHEN "0011",
						"00" WHEN "0100",
						"10" WHEN "0101",
						"10" WHEN "0110",
						"11" WHEN "0111",
						"11" WHEN "1000",
						"00" WHEN "1101",
						"00" WHEN "1110",
						"11" WHEN "1010",
						"--" WHEN OTHERS;
	WITH op_code SELECT
		op <= func 				WHEN "0000",
				func 				WHEN "0001",
				"100" 			WHEN "0010",
				"100"				WHEN "0011",
				"100" 			WHEN "0100",
				"00" & ir(8) 	WHEN "0101",
				"00" & ir(8)	WHEN "0110",
				"00" & ir(8)	WHEN "0111",
				func				WHEN "1000",
				"100" 			WHEN "1101",
				"100" 			WHEN "1110",
				"110"			WHEN "1010",
				"---"				WHEN OTHERS;
				
	ldpc <= '0' WHEN ir = x"FFFF" ELSE '1';
	Rb_N <= '1' WHEN op_code = "0000" or op_code = "0001" or op_code = "1000" or op_code = "0110" or op_code = "1010" ELSE '0';
	wrd <= '0' WHEN op_code = "0100" or op_code = "0111" or op_code = "0110" or op_code = "1110"  or (op_code = "1010" and ir(2) = '0') ELSE '1';
	addr_a <= ir(11 DOWNTO 9) WHEN op_code = "0101" ELSE ir(8 DOWNTO 6);
	addr_b <= ir(11 DOWNTO 9) WHEN op_code = "0100" or op_code = "0110" or op_code = "0111" or op_code = "0110" or op_code = "1010" ELSE ir(2 DOWNTO 0);
	addr_d <= ir(11 DOWNTO 9);
	
	WITH op_code SELECT
		immed <= std_logic_vector(resize(signed(ir(7 DOWNTO 0)), immed'length)) WHEN "0101",
					std_logic_vector(resize(signed(ir(5 DOWNTO 0)), immed'length)) WHEN OTHERS;
					
	wr_m <= '1' WHEN op_code = "0100" or op_code = "1110" ELSE '0';
	regfile_input <= MEM WHEN op_code = "0011" or op_code = "1101" ELSE PC_UPD WHEN op_code = "1010" ELSE ALU_OUTPUT;
	immed_x2 <= '1' WHEN op_code = "0011" or op_code = "0100" or op_code = "0110" ELSE '0';
	word_byte <= '1' WHEN op_code = "1101" or op_code = "1110" ELSE '0';

	WITH op_code SELECT
		take_branch <= 	not ir(8) 					WHEN "0110",
						not ir(8) or ir(2) or ir(1) WHEN "1010",
						'-' WHEN OTHERS;
	
	sequencing_mode <= 	RELATIVE WHEN op_code = "0110" AND take_branch = '1' ELSE
						ABSOLUTE WHEN op_code = "1010" AND take_branch = '1' ELSE
						IMPLICIT;

END Structure;