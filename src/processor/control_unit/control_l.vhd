library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.control_l_defs.all;
  use work.control_unit_components.all;
  use work.datapath_components.all;

entity control_l is
  port (
    ir                   : in    std_logic_vector(15 downto 0);
    z                    : in    std_logic;
    system               : in    std_logic;
    op_group             : out   std_logic_vector(1 downto 0);
    op                   : out   std_logic_vector(2 downto 0);
    ldpc                 : out   std_logic;
    wrd_1                : out   std_logic;
    addr_a               : out   std_logic_vector(2 downto 0);
    addr_b               : out   std_logic_vector(2 downto 0);
    addr_d_1             : out   std_logic_vector(2 downto 0);
    addr_d_2             : out   std_logic_vector(2 downto 0);
    immed                : out   std_logic_vector(15 downto 0);
    wr_m                 : out   std_logic;
    regfile_input        : out   regfile_input_1_t;
    rb_n                 : out   std_logic;
    immed_x2             : out   std_logic;
    sel_reg_out          : out   std_logic;
    word_byte            : out   std_logic;
    sequencing_mode      : out   sequencing_mode_t;
    addr_io              : out   std_logic_vector(7 downto 0);
    rd_in                : out   std_logic;
    wr_out               : out   std_logic;
    d_sys                : out   std_logic;
    wrd_2                : out   std_logic;
    inta                 : out   std_logic;
    mux_regs             : out   std_logic;
    tipo_int             : in    std_logic_vector(3 downto 0);
    invalid_inst         : out   std_logic;
    may_divide           : out   std_logic;
    memory_access        : out   std_logic;
    inst_privilege_level : out   std_logic;
    calls                : out   std_logic;
    wr_tlb_ins_dad       : out   std_logic;
    wr_tlb_virt_phys     : out   std_logic;
    wr_tlb_we            : out   std_logic
  );
end entity control_l;

architecture structure of control_l is

  signal instruction    : instruction_t;
  signal control_output : control_output_t;

  signal op_code     : std_logic_vector(3 downto 0);
  signal take_branch : BOOLEAN;

  function reg_src (
    addr_src: addr_source_t;
    ir_in: std_logic_vector(15 downto 0)
  ) return std_logic_vector is

    variable result : std_logic_vector(2 downto 0);

  begin

    case addr_src is

      when ADDR_SRC_IR_11_9 =>

        result := ir_in(11 downto 9);

      when ADDR_SRC_IR_8_6 =>

        result := ir_in(8 downto 6);

      when ADDR_SRC_IR_2_0 =>

        result := ir_in(2 downto 0);

      when ADDR_SRC_7 =>

        result := "111";

      when ADDR_SRC_5 =>

        result := "101";

      when ADDR_SRC_3 =>

        result := "011";

      when ADDR_SRC_1 =>

        result := "001";

      when ADDR_SRC_0 =>

        result := "000";

      when ADDR_SRC_DONTCARE =>

        result := "---";

    end case;

    RETURN result;

  end function;

begin

  op_code <= ir(15 downto 12);

  -- Determinaci�n de la instrucci�n actual
  process (ir, system) is
  begin

    if (system = '1') then
      instruction <= INST_SYSTEM;
    else

      case ir(15 downto 12) is

        when "0000" =>

          instruction <= INST_ARITH;

        when "0001" =>

          if (ir(5 downto 3) = "010" or ir(5 downto 4) = "11") then
            instruction <= INST_INVALID;
          else
            instruction <= INST_CMP;
          end if;

        when "0010" =>

          instruction <= INST_ADDI;

        when "0011" =>

          instruction <= INST_LD;

        when "0100" =>

          instruction <= INST_ST;

        when "0101" =>

          instruction <= INST_MOVI;

        when "0110" =>

          instruction <= INST_BRANCH;

        when "0111" =>

          if (ir(8) = '0') then
            instruction <= INST_IN;
          else
            instruction <= INST_OUT;
          end if;

        when "1000" =>

          if (ir(5 downto 3) = "011" or ir(5 downto 4) = "11") then
            instruction <= INST_INVALID;
          else
            instruction <= INST_ARITH_EXT;
          end if;

        when "1010" =>

          if (ir(5 downto 3) = "000") then

            case ir(2 downto 0) is

              when "000" =>

                instruction <= INST_JZ_JNZ;

              when "001" =>

                instruction <= INST_JZ_JNZ;

              when "011" =>

                if (ir(11 downto 9) = "000") then
                  instruction <= INST_JMP;
                else
                  instruction <= INST_INVALID;
                end if;

              when "100" =>

                instruction <= INST_JAL;

              when "111" =>

                if (ir(11 downto 9) = "000") then
                  instruction <= INST_CALLS;
                else
                  instruction <= INST_INVALID;
                end if;

              when OTHERS =>

                instruction <= INST_INVALID;

            end case;

          else
            instruction <= INST_INVALID;
          end if;

        when "1101" =>

          instruction <= INST_LDB;

        when "1110" =>

          instruction <= INST_STB;

        when "1111" =>

          case ir(5 downto 0) is

            when "100000" =>

              if (ir(11 downto 6) = "000000") then
                instruction <= INST_EI;
              else
                instruction <= INST_INVALID;
              end if;

            when "100001" =>

              if (ir(11 downto 6) = "000000") then
                instruction <= INST_DI;
              else
                instruction <= INST_INVALID;
              end if;

            when "100100" =>

              if (ir(11 downto 6) = "000000") then
                instruction <= INST_RETI;
              else
                instruction <= INST_INVALID;
              end if;

            when "101000" =>

              if (ir(8 downto 6) = "000") then
                instruction <= INST_GETIID;
              else
                instruction <= INST_INVALID;
              end if;

            when "101100" =>

              instruction <= INST_RDS;

            when "110000" =>

              instruction <= INST_WRS;

            when "110100" =>

              instruction <= INST_WRPI;

            when "110101" =>

              instruction <= INST_WRVI;

            when "110110" =>

              instruction <= INST_WRPD;

            when "110111" =>

              instruction <= INST_WRVD;

            when "111111" =>

              if (ir(11 downto 6) = "111111") then
                instruction <= INST_HALT;
              else
                instruction <= INST_INVALID;
              end if;

            when OTHERS =>

              instruction <= INST_INVALID;

          end case;

        when OTHERS =>

          instruction <= INST_INVALID;

      end case;

    end if;

  end process;

  with instruction select control_output <=
    CONTROL_OUT_ARITH when INST_ARITH,
    CONTROL_OUT_CMP when INST_CMP,
    CONTROL_OUT_ADDI when INST_ADDI,
    CONTROL_OUT_LD when INST_LD,
    CONTROL_OUT_ST when INST_ST,
    CONTROL_OUT_MOVI when INST_MOVI,
    CONTROL_OUT_BRANCH when INST_BRANCH,
    CONTROL_OUT_IN when INST_IN,
    CONTROL_OUT_OUT when INST_OUT,
    CONTROL_OUT_ARITH_EXT when INST_ARITH_EXT,
    CONTROL_OUT_JZ_JNZ when INST_JZ_JNZ,
    CONTROL_OUT_JMP when INST_JMP,
    CONTROL_OUT_JAL when INST_JAL,
    CONTROL_OUT_CALLS when INST_CALLS,
    CONTROL_OUT_LDB when INST_LDB,
    CONTROL_OUT_STB when INST_STB,
    CONTROL_OUT_EI when INST_EI,
    CONTROL_OUT_DI when INST_DI,
    CONTROL_OUT_RETI when INST_RETI,
    CONTROL_OUT_GETIID when INST_GETIID,
    CONTROL_OUT_RDS when INST_RDS,
    CONTROL_OUT_WRS when INST_WRS,
    CONTROL_OUT_WRPI when INST_WRPI,
    CONTROL_OUT_WRVI when INST_WRVI,
    CONTROL_OUT_WRPD when INST_WRPD,
    CONTROL_OUT_WRVD when INST_WRVD,
    CONTROL_OUT_HALT when INST_HALT,
    CONTROL_OUT_INVALID when INST_INVALID,
    CONTROL_OUT_SYSTEM when INST_SYSTEM;

  ldpc <= control_output.ldpc;

  addr_a   <= reg_src(control_output.addr_a, ir);
  addr_b   <= reg_src(control_output.addr_b, ir);
  addr_d_1 <= reg_src(control_output.addr_d1, ir);
  addr_d_2 <= reg_src(control_output.addr_d2, ir);

  wrd_1 <= control_output.wrd_1;
  wrd_2 <= control_output.wrd_2;

  regfile_input <= control_output.regfile_input_1;

  sel_reg_out <= control_output.sel_reg_rd;
  d_sys       <= control_output.sel_reg_wr;

  with control_output.immed select immed <=
    std_logic_vector(resize(signed(ir(7 downto 0)), immed'length)) when IMMED_IR_7_0,
    std_logic_vector(resize(signed(ir(5 downto 0)), immed'length)) when IMMED_IR_5_0,
    "0000000000000010" when IMMED_EI,
    "1111111111111101" when IMMED_DI,
    "----------------" when IMMED_DONTCARE;
  immed_x2 <= control_output.immed_x2;
  rb_n     <= control_output.rb_N;

  op_group <= control_output.op_group;
  with control_output.op select op <=
    ir(5 downto 3) when OP_IR_5_3,
    "00" & ir(8) when OP_00_IR_8,
    "000" when OP_MOVI,
    "001" when OP_MOVHI,
    "000" when OP_AND,
    "001" when OP_OR,
    "100" when OP_ADD,
    "110" when OP_X,
    "---" when OP_DONTCARE;

  wr_m      <= control_output.wr_m;
  word_byte <= control_output.word_byte;

  rd_in                <= control_output.rd_in;
  wr_out               <= control_output.wr_out;
  inta                 <= control_output.int_ack;
  may_divide           <= '1' when instruction = INST_ARITH_EXT else
                          '0';
  invalid_inst         <= control_output.invalid_inst;
  memory_access        <= control_output.memory_access;
  inst_privilege_level <= control_output.privilege_level;

  wr_tlb_ins_dad   <= control_output.wr_tlb_ins_dad;
  wr_tlb_virt_phys <= control_output.wr_tlb_virt_phys;
  wr_tlb_we        <= control_output.wr_tlb_we;

  calls <= '1' when instruction = INST_CALLS else
           '0';

  with op_code select take_branch <=
    ir(8) /= z when "0110",
    ir(0) /= z or ir(2) = '1' or ir(1) = '1' when "1010",
    false when OTHERS;

  sequencing_mode <= ABSOLUTE when system = '1' else
                     RELATIVE when op_code = "0110" and take_branch else
                     ABSOLUTE when (op_code = "1010" and ir(2 downto 0) /= "111" and take_branch) or (op_code = "1111" and ir(5 downto 0) = "100100") else
                     IMPLICIT;

  mux_regs <= '1' when tipo_int = "0001" or (tipo_int >= "0110" and tipo_int <= "1100") else
              '0';

  addr_io <= ir(7 downto 0);

end architecture structure;
