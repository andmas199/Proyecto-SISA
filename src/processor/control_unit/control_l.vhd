LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.control_l_defs.all;

USE work.control_unit_components.all;
USE work.datapath_components.all;

ENTITY control_l IS
    PORT (ir     		: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z			: IN STD_LOGIC;
			 system     : IN STD_LOGIC;
			 op_group	: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          op     		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          ldpc   		: OUT STD_LOGIC;
          wrd_1  		: OUT STD_LOGIC;
          addr_a 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_b 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d_1 	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_d_2 	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 wr_m	  		: OUT STD_LOGIC;
			 regfile_input: OUT regfile_input_1_t;
			 Rb_N			: OUT STD_LOGIC;
			 immed_x2	: OUT STD_LOGIC;
			 sel_reg_out: OUT STD_LOGIC;
			 word_byte	: OUT STD_LOGIC;
			 sequencing_mode: OUT sequencing_mode_t;
			 addr_io: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 rd_in: OUT STD_LOGIC;
			 wr_out: OUT STD_LOGIC;
			 d_sys:	OUT STD_LOGIC;
			 wrd_2 : OUT STD_LOGIC;
			 inta : OUT STD_LOGIC;
			 mux_regS : OUT STD_LOGIC;
			 tipo_int : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 invalid_inst : OUT STD_LOGIC;
			 memory_access : OUT STD_LOGIC;
			 inst_privilege_level: OUT STD_LOGIC;
			 calls: OUT STD_LOGIC;
			 wr_tlb_ins_dad : OUT STD_LOGIC;
			 wr_tlb_virt_phys : OUT STD_LOGIC;
			 wr_tlb_we : OUT STD_LOGIC);
END control_l;


ARCHITECTURE Structure OF control_l IS

	SIGNAL instruction: instruction_t;
	SIGNAL control_output: control_output_t;

	SIGNAL op_code: STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL take_branch: BOOLEAN;

	FUNCTION reg_src (addr_src: addr_source_t; ir_in: STD_LOGIC_VECTOR(15 downto 0)) RETURN STD_LOGIC_VECTOR IS
		VARIABLE result: STD_LOGIC_VECTOR(2 downto 0);
	BEGIN
		CASE addr_src IS
			WHEN ADDR_SRC_IR_11_9 => result := ir_in(11 downto 9);
						WHEN ADDR_SRC_IR_8_6 => result := ir_in(8 downto 6);
						WHEN ADDR_SRC_IR_2_0 => result := ir_in(2 downto 0);
						WHEN ADDR_SRC_7 => result := "111";
						WHEN ADDR_SRC_5 => result := "101";
						WHEN ADDR_SRC_3 => result := "011";
						WHEN ADDR_SRC_1 => result := "001";
						WHEN ADDR_SRC_0 => result := "000";
						WHEN ADDR_SRC_DONTCARE => result := "---";
		END CASE;
		RETURN result;	
	END FUNCTION;

BEGIN

	op_code <= ir(15 DOWNTO 12);

	-- Determinaci�n de la instrucci�n actual
	PROCESS (ir, system)
	BEGIN
		IF system = '1' THEN
			instruction <= INST_SYSTEM;
		ELSE
			CASE ir(15 downto 12) IS
				WHEN "0000" =>
					instruction <= INST_ARITH;
				WHEN "0001" =>
					IF ir(5 downto 3) = "010" or ir(5 downto 4) = "11" THEN
						instruction <= INST_INVALID;
					ELSE
						instruction <= INST_CMP;
					END IF;
				WHEN "0010" =>
					instruction <= INST_ADDI;
				WHEN "0011" =>
					instruction <= INST_LD;
				WHEN "0100" =>
					instruction <= INST_ST;
				WHEN "0101" =>
					instruction <= INST_MOVI;
				WHEN "0110" =>
					instruction <= INST_BRANCH;
				WHEN "0111" =>
					IF ir(8) = '0' THEN
						instruction <= INST_IN;
					ELSE
						instruction <= INST_OUT;
					END IF;
				WHEN "1000" =>
					IF ir(5 downto 3) = "011" or ir(5 downto 4) = "11" THEN
						instruction <= INST_INVALID;
					ELSE
						instruction <= INST_ARITH_EXT;
					END IF;
				WHEN "1010" =>
					IF ir(5 downto 3) = "000" THEN
						CASE ir(2 downto 0) IS
							WHEN "000" =>
								instruction <= INST_JZ_JNZ;
							WHEN "001" =>
								instruction <= INST_JZ_JNZ;
							WHEN "011" =>
								IF ir(11 downto 9) = "000" THEN
									instruction <= INST_JMP;
								ELSE
									instruction <= INST_INVALID;
								END IF;
							WHEN "100" =>
								instruction <= INST_JAL;
							WHEN "111" =>
								IF ir(11 downto 9) = "000" THEN
									instruction <= INST_CALLS;
								ELSE
									instruction <= INST_INVALID;
								END IF;
							WHEN OTHERS =>
								instruction <= INST_INVALID;
						END CASE;
					ELSE
						instruction <= INST_INVALID;
					END IF;
				WHEN "1101" =>
					instruction <= INST_LDB;
				WHEN "1110" =>
					instruction <= INST_STB;
				WHEN "1111" =>
					CASE ir(5 downto 0) IS
						WHEN "100000" =>
							IF ir(11 downto 6) = "000000" THEN
								instruction <= INST_EI;
							ELSE
								instruction <= INST_INVALID;
							END IF;
						WHEN "100001" =>
							IF ir(11 downto 6) = "000000" THEN
								instruction <= INST_DI;
							ELSE
								instruction <= INST_INVALID;
							END IF;
						WHEN "100100" =>
							IF ir(11 downto 6) = "000000" THEN
								instruction <= INST_RETI;
							ELSE
								instruction <= INST_INVALID;
							END IF;
						WHEN "101000" =>
							IF ir(8 downto 6) = "000" THEN
								instruction <= INST_GETIID;
							ELSE
								instruction <= INST_INVALID;
							END IF;
						WHEN "101100" =>
							instruction <= INST_RDS;
						WHEN "110000" =>
							instruction <= INST_WRS;
						WHEN "110100" =>
							instruction <= INST_WRPI;
						WHEN "110101" =>
							instruction <= INST_WRVI;
						WHEN "110110" =>
							instruction <= INST_WRPD;
						WHEN "110111" =>
							instruction <= INST_WRVD;
						WHEN "111111" =>
							IF ir(11 downto 6) = "111111" THEN
								instruction <= INST_HALT;
							ELSE
								instruction <= INST_INVALID;
							END IF;
						WHEN OTHERS =>
							instruction <= INST_INVALID;
					END CASE;
				WHEN OTHERS =>
					instruction <= INST_INVALID;
			END CASE;
		END IF;
	END PROCESS;
	
	WITH instruction SELECT
		control_output <=	CONTROL_OUT_ARITH WHEN INST_ARITH,
							CONTROL_OUT_CMP WHEN INST_CMP,
							CONTROL_OUT_ADDI WHEN INST_ADDI,
							CONTROL_OUT_LD WHEN INST_LD,
							CONTROL_OUT_ST WHEN INST_ST,
							CONTROL_OUT_MOVI WHEN INST_MOVI,
							CONTROL_OUT_BRANCH WHEN INST_BRANCH,
							CONTROL_OUT_IN WHEN INST_IN,
							CONTROL_OUT_OUT WHEN INST_OUT,
							CONTROL_OUT_ARITH_EXT WHEN INST_ARITH_EXT,
							CONTROL_OUT_JZ_JNZ WHEN INST_JZ_JNZ,
							CONTROL_OUT_JMP WHEN INST_JMP,
							CONTROL_OUT_JAL WHEN INST_JAL,
							CONTROL_OUT_CALLS WHEN INST_CALLS,
							CONTROL_OUT_LDB WHEN INST_LDB,
							CONTROL_OUT_STB WHEN INST_STB,
							CONTROL_OUT_EI WHEN INST_EI,
							CONTROL_OUT_DI WHEN INST_DI,
							CONTROL_OUT_RETI WHEN INST_RETI,
							CONTROL_OUT_GETIID WHEN INST_GETIID,
							CONTROL_OUT_RDS WHEN INST_RDS,
							CONTROL_OUT_WRS WHEN INST_WRS,
							CONTROL_OUT_WRPI WHEN INST_WRPI,
							CONTROL_OUT_WRVI WHEN INST_WRVI,
							CONTROL_OUT_WRPD WHEN INST_WRPD,
							CONTROL_OUT_WRVD WHEN INST_WRVD,
							CONTROL_OUT_HALT WHEN INST_HALT,
							CONTROL_OUT_INVALID WHEN INST_INVALID,
							CONTROL_OUT_SYSTEM WHEN INST_SYSTEM;
	
	ldpc <= control_output.ldpc;

	addr_a <= reg_src(control_output.addr_a, ir);
	addr_b <= reg_src(control_output.addr_b, ir);
	addr_d_1 <= reg_src(control_output.addr_d1, ir);
	addr_d_2 <= reg_src(control_output.addr_d2, ir);

	wrd_1 <= control_output.wrd_1;
	wrd_2 <= control_output.wrd_2;

	regfile_input <= control_output.regfile_input_1;

	sel_reg_out <= control_output.sel_reg_rd;
	d_sys <= control_output.sel_reg_wr;

	WITH control_output.immed SELECT
		immed <= 	std_logic_vector(resize(signed(ir(7 downto 0)), immed'length)) WHEN IMMED_IR_7_0,
					std_logic_vector(resize(signed(ir(5 downto 0)), immed'length)) WHEN IMMED_IR_5_0,
					"0000000000000010" WHEN IMMED_EI,
					"1111111111111101" WHEN IMMED_DI,
					"----------------" WHEN IMMED_DONTCARE;
	immed_x2 <= control_output.immed_x2;
	Rb_N <= control_output.rb_N;

	op_group <= control_output.op_group;
	WITH control_output.op SELECT
		op <=	ir(5 downto 3) WHEN OP_IR_5_3,
				"00" & ir(8) WHEN OP_00_IR_8,
				"000" WHEN OP_MOVI,
				"001" WHEN OP_MOVHI,
				"000" WHEN OP_AND,
				"001" WHEN OP_OR,
				"100" WHEN OP_ADD,
				"110" WHEN OP_X,
				"---" WHEN OP_DONTCARE;
	
	wr_m <= control_output.wr_m;
	word_byte <= control_output.word_byte;
	
	rd_in <= control_output.rd_in;
	wr_out <= control_output.wr_out;
	inta <= control_output.int_ack;
	invalid_inst <= control_output.invalid_inst;
	memory_access <= control_output.memory_access;
	inst_privilege_level <= control_output.privilege_level;

  wr_tlb_ins_dad <= control_output.wr_tlb_ins_dad;
  wr_tlb_virt_phys <= control_output.wr_tlb_virt_phys;
  wr_tlb_we <= control_output.wr_tlb_we;

	calls <= '1' WHEN instruction = INST_CALLS ELSE '0';

	WITH op_code SELECT
		take_branch <= 	ir(8) /= z								 WHEN "0110",
						ir(0) /= z or ir(2) = '1' or ir(1) = '1' WHEN "1010",
						false WHEN OTHERS;
	
	sequencing_mode <= 			ABSOLUTE WHEN system = '1' ELSE
								RELATIVE WHEN op_code = "0110" AND take_branch ELSE
								ABSOLUTE WHEN (op_code = "1010" AND ir(2 DOWNTO 0) /= "111" and take_branch) or (op_code = "1111" and ir(5 DOWNTO 0) = "100100") ELSE
								IMPLICIT;
	
	mux_regS <= '1' WHEN tipo_int = "0001" or (tipo_int >= "0110" and tipo_int <= "1100")  ELSE '0';

	addr_io <= ir(7 DOWNTO 0);

END Structure;
