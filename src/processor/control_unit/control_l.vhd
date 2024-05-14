LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.control_unit_components.all;
USE work.datapath_components.all;

ENTITY control_l IS
    PORT (ir     		: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			z			: IN STD_LOGIC;
			 op_group	: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          op     		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          ldpc   		: OUT STD_LOGIC;
          wrd    		: OUT STD_LOGIC;
          addr_a 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d_1 	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_d_2 	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 wr_m	  		: OUT STD_LOGIC;
			 regfile_input: OUT regfile_input_t;
			 Rb_N			: OUT STD_LOGIC;
			 immed_x2	: OUT STD_LOGIC;
			 sel_reg_out: OUT STD_LOGIC;
			 word_byte	: OUT STD_LOGIC;
			 sequencing_mode: OUT sequencing_mode_t;
			 addr_io: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 rd_in: OUT STD_LOGIC;
			 wr_out: OUT STD_LOGIC;
			 d_sys:	OUT STD_LOGIC;
			 reti : OUT STD_LOGIC);
END control_l;


ARCHITECTURE Structure OF control_l IS

	SIGNAL op_code: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL func:	 STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL take_branch: BOOLEAN;

BEGIN
	op_code <= ir(15 DOWNTO 12);
	func <= ir(5 DOWNTO 3);
	
	--PLEASE INCLUDE WRS and RDS in op_group and op
	
	op_group <= "00" WHEN op_code = "0000" or op_code = "0010" or op_code = "0011" or
								 op_code = "0100" or op_code = "1101" or op_code = "1110" or
								 (op_code = "1111" and ir(5 DOWNTO 0) = "100001") 			 or
								 (op_code = "1111" and ir(5 DOWNTO 0) = "100000") 			 else
					"01" WHEN op_code = "0001" 													 else
					"10" WHEN op_code = "0101" or op_code = "0110" 							 else
					"10" WHEN op_code = "0110" 													 else
					"11" WHEN op_code = "1000" or op_code = "1010" or
								 (op_code = "1111" and (ir(5 DOWNTO 0) = "100100" or
								 ir(5 DOWNTO 0) = "101100" or ir(5 DOWNTO 0) = "110000")) else
					"--";
	op <= func 				WHEN op_code = "0000" or op_code = "0001" or op_code = "1000" else
			"100" 			WHEN op_code = "0010" or op_code = "0011" or op_code = "0100" or
									  op_code = "1101" or op_code = "1110" 						  else
			"00" & ir(8) 	WHEN op_code = "0101" or op_code = "0110"							  else
			"100" 			WHEN op_code = "1101" or op_code = "1110"							  else
			"110"				WHEN op_code = "1010" or
									  (op_code = "1111" and (ir(5 DOWNTO 0) = "100100" or 
									   ir(5 DOWNTO 0) = "101100" or ir(5 DOWNTO 0) = "110000"))else
			"000"				WHEN op_code = "1111" and ir(5 DOWNTO 0) = "100001"			  else
			"001"				WHEN op_code = "1111" and ir(5 DOWNTO 0) = "100000"			  else
			"---";
				
	ldpc <= '0' WHEN ir = x"FFFF" ELSE '1';
	Rb_N <= '1' WHEN op_code = "0000" or op_code = "0001" or op_code = "1000" or op_code = "0110" or op_code = "1010" ELSE '0';
	wrd <= '0' WHEN op_code = "0100" or op_code = "0110" or op_code = "1110"  or (op_code = "1010" and ir(2) = '0') or (op_code = "0111" and ir(8) = '1') or (op_code = "1111" and ir(5 DOWNTO 0) = "100100")ELSE '1';
	addr_a <= ir(11 DOWNTO 9) WHEN op_code = "0101" ELSE
				 "111" WHEN op_code = "1111" and (ir(5 DOWNTO 0) = "100000" or ir(5 DOWNTO 0) = "100001") ELSE
				 "001" WHEN op_code = "1111" and ir(5 DOWNTO 0) = "100100" ELSE
				 ir(8 DOWNTO 6);
	addr_b <= ir(11 DOWNTO 9) WHEN op_code = "0100" or op_code = "0110" or op_code = "0111" or op_code = "0110" or op_code = "1010" or op_code = "1110" or op_code = "0111" ELSE
				 "000" WHEN op_code = "1111" and ir(5 DOWNTO 0) = "100100" ELSE
				 ir(2 DOWNTO 0);
	addr_d_1 <= "111" WHEN op_code = "1111" and (ir(5 DOWNTO 0) = "100000" or ir(5 DOWNTO 0) = "100001") ELSE ir(11 DOWNTO 9);
	addr_d_2 <= "111";
	d_sys <= '1' WHEN op_code = "1111" and (ir(5 DOWNTO 0) = "110000" or ir(5 DOWNTO 0) = "100000" or ir(5 DOWNTO 0) = "100001" or ir(5 DOWNTO 0) = "100100") ELSE '0';
	sel_reg_out <= '1' WHEN op_code = "1111" and (ir(5 DOWNTO 0) = "101100" or ir(5 DOWNTO 0) = "100000" or ir(5 DOWNTO 0) = "100001" or ir(5 DOWNTO 0) = "100100") ELSE '0';
	reti <= '1' WHEN op_code = "1111" and ir(5 DOWNTO 0) = "100100" ELSE '0';
	
	immed <= std_logic_vector(resize(signed(ir(7 DOWNTO 0)), immed'length)) WHEN op_code = "0101" else
				"0000000000000010"															WHEN op_code = "1111" and ir(5 DOWNTO 0) = "100000" else
				"1111111111111101"															WHEN op_code = "1111" and ir(5 DOWNTO 0) = "100001" else
				std_logic_vector(resize(signed(ir(5 DOWNTO 0)), immed'length));
					
	wr_m <= '1' WHEN op_code = "0100" or op_code = "1110" ELSE '0';
	regfile_input <= MEM WHEN op_code = "0011" or op_code = "1101" ELSE PC_UPD WHEN op_code = "1010" ELSE IO_RD WHEN op_code = "0111" ELSE ALU_OUTPUT;
	immed_x2 <= '1' WHEN op_code = "0011" or op_code = "0100" ELSE '0';
	word_byte <= '1' WHEN op_code = "1101" or op_code = "1110" ELSE '0';

	WITH op_code SELECT
		take_branch <= 	ir(8) /= z								 WHEN "0110",
						ir(0) /= z or ir(2) = '1' or ir(1) = '1' WHEN "1010",
						false WHEN OTHERS;
	
	sequencing_mode <= 	RELATIVE WHEN op_code = "0110" AND take_branch ELSE
								ABSOLUTE WHEN (op_code = "1010" AND take_branch) or (op_code = "1111" and ir(5 DOWNTO 0) = "100100") ELSE
								IMPLICIT;
	
	addr_io <= ir(7 DOWNTO 0);
	rd_in <= not ir(8) WHEN op_code = "0111" ELSE '0';
	wr_out <= ir(8) WHEN op_code = "0111" ELSE '0';

END Structure;