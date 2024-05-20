LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE control_l_defs IS
    
    TYPE instruction_t IS (INST_ARITH, INST_CMP, INST_ADDI, INST_LD, INST_ST, INST_MOVI, INST_BRANCH, INST_IN, INST_OUT, INST_ARITH_EXT, INST_JZ_JNZ, INST_JMP, INST_JAL, INST_LDB, INST_STB, INST_EI, INST_DI, INST_RETI, INST_GETIID, INST_RDS, INST_WRS, INST_HALT, INST_INVALID, INST_SYSTEM);

    TYPE addr_source_t IS (ADDR_SRC_IR_11_9, ADDR_SRC_IR_8_6, ADDR_SRC_IR_2_0, ADDR_SRC_7, ADDR_SRC_5, ADDR_SRC_3, ADDR_SRC_1, ADDR_SRC_0, ADDR_SRC_DONTCARE);
    TYPE op_t IS (OP_IR_5_3, OP_00_IR_8, OP_MOVI, OP_AND, OP_OR, OP_ADD, OP_X, OP_DONTCARE);
    TYPE immed_t IS (IMMED_IR_7_0, IMMED_IR_5_0, IMMED_EI, IMMED_DI, IMMED_DONTCARE);      
    TYPE regfile_input_1_t IS (REG_IN_1_MEM, REG_IN_1_ALU, REG_IN_1_PC, REG_IN_1_PC_UPD, REG_IN_1_IO, REG_IN_1_DONTCARE);
    TYPE sequencing_mode_t IS (IMPLICIT, RELATIVE, ABSOLUTE);

    CONSTANT SEL_REG_GENERAL: STD_LOGIC := '0';
    CONSTANT SEL_REG_SPECIAL: STD_LOGIC := '1';

    CONSTANT RB_N_IMMED: STD_LOGIC := '0';
    CONSTANT RB_N_REGFILE: STD_LOGIC := '1';

    CONSTANT OP_GROUP_ARITH: STD_LOGIC_VECTOR(1 downto 0) := "00";
    CONSTANT OP_GROUP_CMP: STD_LOGIC_VECTOR(1 downto 0) := "01";
    CONSTANT OP_GROUP_MOVI: STD_LOGIC_VECTOR(1 downto 0) := "10";
    CONSTANT OP_GROUP_MISC: STD_LOGIC_VECTOR(1 downto 0) := "11";

    CONSTANT WORD_BYTE_WORD: STD_LOGIC := '0';
    CONSTANT WORD_BYTE_BYTE: STD_LOGIC := '1';

    TYPE control_output_t IS RECORD
        ldpc: STD_LOGIC;
        addr_a: addr_source_t;
        addr_b: addr_source_t;
        addr_d1: addr_source_t;
        addr_d2: addr_source_t;
        wrd_1: STD_LOGIC;
        wrd_2: STD_LOGIC;
        regfile_input_1: regfile_input_1_t;
        sel_reg_rd: STD_LOGIC;
        sel_reg_wr: STD_LOGIC;
        immed: immed_t;
        immed_x2: STD_LOGIC;
        rb_N: STD_LOGIC;
        op_group: STD_LOGIC_VECTOR(1 downto 0);
        op: op_t;
        wr_m: STD_LOGIC;
        word_byte: STD_LOGIC;
        rd_in: STD_LOGIC;
        wr_out: STD_LOGIC;
        int_ack: STD_LOGIC;
		  invalid_inst: STD_LOGIC;
        memory_access: STD_LOGIC;
    END RECORD;

    CONSTANT CONTROL_OUT_ARITH: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_IR_2_0,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_ARITH,
        op => OP_IR_5_3,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_CMP: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_IR_2_0,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_CMP,
        op => OP_IR_5_3,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_ADDI: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_IR_5_0,
        immed_x2 => '0',
        rb_N => RB_N_IMMED,
        op_group => OP_GROUP_ARITH,
        op => OP_ADD,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_LD: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_MEM,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_IR_5_0,
        immed_x2 => '1',
        rb_N => RB_N_IMMED,
        op_group => OP_GROUP_ARITH,
        op => OP_ADD,
        wr_m => '0',
        word_byte => WORD_BYTE_WORD,
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '1'
    );

    CONSTANT CONTROL_OUT_ST: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_IR_11_9,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_IR_5_0,
        immed_x2 => '1',
        rb_N => RB_N_IMMED,
        op_group => OP_GROUP_ARITH,
        op => OP_ADD,
        wr_m => '1',
        word_byte => WORD_BYTE_WORD,
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '1'
    );

    CONSTANT CONTROL_OUT_MOVI: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_11_9,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_IR_7_0,
        immed_x2 => '0',
        rb_N => RB_N_IMMED,
        op_group => OP_GROUP_MOVI,
        op => OP_00_IR_8,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_BRANCH: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_DONTCARE,
        addr_b => ADDR_SRC_IR_11_9,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_IR_7_0,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => "--",
        op => OP_DONTCARE,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_IN: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_DONTCARE,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_IO,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => "--",
        op => OP_DONTCARE,
        wr_m => '0',
        word_byte => '-',
        rd_in => '1',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_OUT: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_DONTCARE,
        addr_b => ADDR_SRC_IR_11_9,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => "--",
        op => OP_DONTCARE,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '1',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_ARITH_EXT: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_IR_2_0,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_MISC,
        op => OP_IR_5_3,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_JZ_JNZ: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_IR_11_9,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_MISC,
        op => OP_X,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );
    
    CONSTANT CONTROL_OUT_JMP: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_MISC,
        op => OP_X,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_JAL: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_PC_UPD,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_MISC,
        op => OP_X,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_LDB: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_MEM,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_IR_5_0,
        immed_x2 => '0',
        rb_N => RB_N_IMMED,
        op_group => OP_GROUP_ARITH,
        op => OP_ADD,
        wr_m => '0',
        word_byte => WORD_BYTE_BYTE,
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '1'
    );

    CONSTANT CONTROL_OUT_STB: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_IR_11_9,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_IR_5_0,
        immed_x2 => '0',
        rb_N => RB_N_IMMED,
        op_group => OP_GROUP_ARITH,
        op => OP_ADD,
        wr_m => '1',
        word_byte => WORD_BYTE_BYTE,
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '1'
    );

    CONSTANT CONTROL_OUT_EI: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_7,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_7,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_SPECIAL,
        sel_reg_wr => SEL_REG_SPECIAL,
        immed => IMMED_EI,
        immed_x2 => '0',
        rb_N => RB_N_IMMED,
        op_group => OP_GROUP_ARITH,
        op => OP_OR,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_DI: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_7,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_7,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_SPECIAL,
        sel_reg_wr => SEL_REG_SPECIAL,
        immed => IMMED_DI,
        immed_x2 => '0',
        rb_N => RB_N_IMMED,
        op_group => OP_GROUP_ARITH,
        op => OP_AND,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_RETI: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_1,
        addr_b => ADDR_SRC_0,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_7,
        wrd_1 => '0',
        wrd_2 => '1',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_SPECIAL,
        sel_reg_wr => SEL_REG_SPECIAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_MISC,
        op => OP_X,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_GETIID: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_DONTCARE,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_IO,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => "--",
        op => OP_DONTCARE,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '1',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_RDS: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_SPECIAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_MISC,
        op => OP_X,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_WRS: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_IR_8_6,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_IR_11_9,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '1',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_ALU,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_SPECIAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_MISC,
        op => OP_X,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_HALT: control_output_t := (
        ldpc => '0',
        addr_a => ADDR_SRC_DONTCARE,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => "--",
        op => OP_DONTCARE,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_INVALID: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_DONTCARE,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_DONTCARE,
        sel_reg_rd => SEL_REG_GENERAL,
        sel_reg_wr => SEL_REG_GENERAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => "--",
        op => OP_DONTCARE,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '1',
        memory_access => '0'
    );

    CONSTANT CONTROL_OUT_SYSTEM: control_output_t := (
        ldpc => '1',
        addr_a => ADDR_SRC_5,
        addr_b => ADDR_SRC_DONTCARE,
        addr_d1 => ADDR_SRC_DONTCARE,
        addr_d2 => ADDR_SRC_DONTCARE,
        wrd_1 => '0',
        wrd_2 => '0',
        regfile_input_1 => REG_IN_1_PC,
        sel_reg_rd => SEL_REG_SPECIAL,
        sel_reg_wr => SEL_REG_SPECIAL,
        immed => IMMED_DONTCARE,
        immed_x2 => '-',
        rb_N => RB_N_REGFILE,
        op_group => OP_GROUP_MISC,
        op => OP_X,
        wr_m => '0',
        word_byte => '-',
        rd_in => '0',
        wr_out => '0',
        int_ack => '0',
        invalid_inst => '0',
        memory_access => '0'
    );
END PACKAGE;