library ieee;
  use ieee.std_logic_1164.all;

package control_l_defs is

  type instruction_t is (inst_arith, inst_cmp, inst_addi, inst_ld, inst_st, inst_movi, inst_branch, inst_in, inst_out, inst_arith_ext, inst_jz_jnz, inst_jmp, inst_jal, inst_calls, inst_ldb, inst_stb, inst_ei, inst_di, inst_reti, inst_getiid, inst_rds, inst_wrs, inst_wrpi, inst_wrvi, inst_wrpd, inst_wrvd, inst_halt, inst_invalid, inst_system);

  type addr_source_t is (addr_src_ir_11_9, addr_src_ir_8_6, addr_src_ir_2_0, addr_src_7, addr_src_5, addr_src_3, addr_src_1, addr_src_0, addr_src_dontcare);

  type op_t is (op_ir_5_3, op_00_ir_8, op_movi, op_movhi, op_and, op_or, op_add, op_x, op_dontcare);

  type immed_t is (immed_ir_7_0, immed_ir_5_0, immed_ei, immed_di, immed_dontcare);

  type regfile_input_1_t is (reg_in_1_mem, reg_in_1_alu, reg_in_1_pc, reg_in_1_pc_upd, reg_in_1_io, reg_in_1_dontcare);

  type sequencing_mode_t is (implicit, relative, absolute);

  constant sel_reg_general : std_logic := '0';
  constant sel_reg_special : std_logic := '1';

  constant rb_n_immed   : std_logic := '0';
  constant rb_n_regfile : std_logic := '1';

  constant op_group_arith : std_logic_vector(1 downto 0) := "00";
  constant op_group_cmp   : std_logic_vector(1 downto 0) := "01";
  constant op_group_movi  : std_logic_vector(1 downto 0) := "10";
  constant op_group_misc  : std_logic_vector(1 downto 0) := "11";

  constant word_byte_word : std_logic := '0';
  constant word_byte_byte : std_logic := '1';

  type control_output_t is record
    ldpc             : std_logic;
    addr_a           : addr_source_t;
    addr_b           : addr_source_t;
    addr_d1          : addr_source_t;
    addr_d2          : addr_source_t;
    wrd_1            : std_logic;
    wrd_2            : std_logic;
    regfile_input_1  : regfile_input_1_t;
    sel_reg_rd       : std_logic;
    sel_reg_wr       : std_logic;
    immed            : immed_t;
    immed_x2         : std_logic;
    rb_N             : std_logic;
    op_group         : std_logic_vector(1 downto 0);
    op               : op_t;
    wr_m             : std_logic;
    word_byte        : std_logic;
    rd_in            : std_logic;
    wr_out           : std_logic;
    int_ack          : std_logic;
    wr_tlb_ins_dad   : std_logic;
    wr_tlb_virt_phys : std_logic;
    wr_tlb_we        : std_logic;
    invalid_inst     : std_logic;
    memory_access    : std_logic;
    privilege_level  : std_logic; -- minimum privilege level
  end record control_output_t;

  constant control_out_arith : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_2_0,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_ARITH,
    op               => OP_IR_5_3,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_cmp : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_2_0,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_CMP,
    op               => OP_IR_5_3,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_addi : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_IR_5_0,
    immed_x2         => '0',
    rb_N             => RB_N_IMMED,
    op_group         => OP_GROUP_ARITH,
    op               => OP_ADD,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_ld : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_MEM,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_IR_5_0,
    immed_x2         => '1',
    rb_N             => RB_N_IMMED,
    op_group         => OP_GROUP_ARITH,
    op               => OP_ADD,
    wr_m             => '0',
    word_byte        => WORD_BYTE_WORD,
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '1',
    privilege_level  => '0'
  );

  constant control_out_st : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_IR_5_0,
    immed_x2         => '1',
    rb_N             => RB_N_IMMED,
    op_group         => OP_GROUP_ARITH,
    op               => OP_ADD,
    wr_m             => '1',
    word_byte        => WORD_BYTE_WORD,
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '1',
    privilege_level  => '0'
  );

  constant control_out_movi : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_11_9,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_IR_7_0,
    immed_x2         => '0',
    rb_N             => RB_N_IMMED,
    op_group         => OP_GROUP_MOVI,
    op               => OP_00_IR_8,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_branch : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_DONTCARE,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_IR_7_0,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => "--",
    op               => OP_DONTCARE,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_in : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_DONTCARE,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_IO,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => "--",
    op               => OP_DONTCARE,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '1',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_out : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_DONTCARE,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => "--",
    op               => OP_DONTCARE,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '1',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_arith_ext : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_2_0,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_IR_5_3,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_jz_jnz : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_X,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_jmp : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_X,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_jal : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_PC_UPD,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_X,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_calls : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_3,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_SPECIAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_X,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_ldb : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_MEM,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_IR_5_0,
    immed_x2         => '0',
    rb_N             => RB_N_IMMED,
    op_group         => OP_GROUP_ARITH,
    op               => OP_ADD,
    wr_m             => '0',
    word_byte        => WORD_BYTE_BYTE,
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '1',
    privilege_level  => '0'
  );

  constant control_out_stb : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_IR_5_0,
    immed_x2         => '0',
    rb_N             => RB_N_IMMED,
    op_group         => OP_GROUP_ARITH,
    op               => OP_ADD,
    wr_m             => '1',
    word_byte        => WORD_BYTE_BYTE,
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '1',
    privilege_level  => '0'
  );

  constant control_out_ei : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_7,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_7,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_SPECIAL,
    sel_reg_wr       => SEL_REG_SPECIAL,
    immed            => IMMED_EI,
    immed_x2         => '0',
    rb_N             => RB_N_IMMED,
    op_group         => OP_GROUP_ARITH,
    op               => OP_OR,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '1'
  );

  constant control_out_di : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_7,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_7,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_SPECIAL,
    sel_reg_wr       => SEL_REG_SPECIAL,
    immed            => IMMED_DI,
    immed_x2         => '0',
    rb_N             => RB_N_IMMED,
    op_group         => OP_GROUP_ARITH,
    op               => OP_AND,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '1'
  );

  constant control_out_reti : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_1,
    addr_b           => ADDR_SRC_0,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_7,
    wrd_1            => '0',
    wrd_2            => '1',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_SPECIAL,
    sel_reg_wr       => SEL_REG_SPECIAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_X,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '1'
  );

  constant control_out_getiid : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_DONTCARE,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_IO,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => "--",
    op               => OP_DONTCARE,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '1',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '1'
  );

  constant control_out_rds : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_SPECIAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_X,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '1'
  );

  constant control_out_wrs : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_IR_11_9,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '1',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_ALU,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_SPECIAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_X,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '1'
  );

  constant control_out_wrpi : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MOVI,
    op               => OP_MOVHI,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '0',
    wr_tlb_virt_phys => '1',
    wr_tlb_we        => '1',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_wrvi : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MOVI,
    op               => OP_MOVHI,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '0',
    wr_tlb_virt_phys => '0',
    wr_tlb_we        => '1',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_wrpd : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MOVI,
    op               => OP_MOVHI,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '1',
    wr_tlb_virt_phys => '1',
    wr_tlb_we        => '1',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_wrvd : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_IR_8_6,
    addr_b           => ADDR_SRC_IR_11_9,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MOVI,
    op               => OP_MOVHI,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '1',
    wr_tlb_virt_phys => '0',
    wr_tlb_we        => '1',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_halt : control_output_t :=
  (
    ldpc             => '0',
    addr_a           => ADDR_SRC_DONTCARE,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => "--",
    op               => OP_DONTCARE,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_invalid : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_DONTCARE,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_DONTCARE,
    sel_reg_rd       => SEL_REG_GENERAL,
    sel_reg_wr       => SEL_REG_GENERAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => "--",
    op               => OP_DONTCARE,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '1',
    memory_access    => '0',
    privilege_level  => '0'
  );

  constant control_out_system : control_output_t :=
  (
    ldpc             => '1',
    addr_a           => ADDR_SRC_5,
    addr_b           => ADDR_SRC_DONTCARE,
    addr_d1          => ADDR_SRC_DONTCARE,
    addr_d2          => ADDR_SRC_DONTCARE,
    wrd_1            => '0',
    wrd_2            => '0',
    regfile_input_1  => REG_IN_1_PC,
    sel_reg_rd       => SEL_REG_SPECIAL,
    sel_reg_wr       => SEL_REG_SPECIAL,
    immed            => IMMED_DONTCARE,
    immed_x2         => '-',
    rb_N             => RB_N_REGFILE,
    op_group         => OP_GROUP_MISC,
    op               => OP_X,
    wr_m             => '0',
    word_byte        => '-',
    rd_in            => '0',
    wr_out           => '0',
    int_ack          => '0',
    wr_tlb_ins_dad   => '-',
    wr_tlb_virt_phys => '-',
    wr_tlb_we        => '0',
    invalid_inst     => '0',
    memory_access    => '0',
    privilege_level  => '0'
  );

end package control_l_defs;
