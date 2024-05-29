library ieee;
  use ieee.std_logic_1164.all;
  use work.control_l_defs.sequencing_mode_t;
  use work.control_l_defs.regfile_input_1_t;

package control_unit_components is

  component control_l is
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
  end component;

  component multi is
    port (
      clk             : in    std_logic;
      boot            : in    std_logic;
      ldpc_l          : in    std_logic;
      wrd_1_l         : in    std_logic;
      wrd_2_l         : in    std_logic;
      wr_m_l          : in    std_logic;
      w_b             : in    std_logic;
      inta_l          : in    std_logic;
      memory_access_l : in    std_logic;
      chg_mode        : out   std_logic;
      ldpc            : out   std_logic;
      wrd_1           : out   std_logic;
      wrd_2           : out   std_logic;
      wr_m            : out   std_logic;
      ldir            : out   std_logic;
      ins_dad         : out   std_logic;
      word_byte       : out   std_logic;
      excp            : in    std_logic;
      inta            : out   std_logic;
      memory_access   : out   std_logic;
      in_demw         : out   std_logic
    );
  end component;

  component regfile is
    port (
      clk    : in    std_logic;
      wrd    : in    std_logic;
      d      : in    std_logic_vector(15 downto 0);
      addr_a : in    std_logic_vector(2 downto 0);
      addr_b : in    std_logic_vector(2 downto 0);
      addr_d : in    std_logic_vector(2 downto 0);
      a      : out   std_logic_vector(15 downto 0);
      b      : out   std_logic_vector(15 downto 0)
    );
  end component;

  component unidad_control is
    port (
      boot                 : in    std_logic;
      clk                  : in    std_logic;
      datard_m             : in    std_logic_vector(15 downto 0);
      alu_out              : in    std_logic_vector(15 downto 0);
      z                    : in    std_logic;
      op_group             : out   std_logic_vector(1 downto 0);
      op                   : out   std_logic_vector(2 downto 0);
      wrd_1                : out   std_logic;
      addr_a               : out   std_logic_vector(2 downto 0);
      addr_b               : out   std_logic_vector(2 downto 0);
      addr_d_1             : out   std_logic_vector(2 downto 0);
      addr_d_2             : out   std_logic_vector(2 downto 0);
      clear                : out   std_logic;
      chg_mode             : out   std_logic;
      immed                : out   std_logic_vector(15 downto 0);
      d_sys                : out   std_logic;
      wrd_2                : out   std_logic;
      pc                   : out   std_logic_vector(15 downto 0);
      ins_dad              : out   std_logic;
      regfile_input        : out   regfile_input_1_t;
      rb_n                 : out   std_logic;
      immed_x2             : out   std_logic;
      sel_reg_out          : out   std_logic;
      wr_m                 : out   std_logic;
      word_byte            : out   std_logic;
      addr_io              : out   std_logic_vector(7 downto 0);
      rd_in                : out   std_logic;
      wr_out               : out   std_logic;
      inta                 : out   std_logic;
      mux_regs             : out   std_logic;
      tipo_int             : in    std_logic_vector(3 downto 0);
      invalid_inst         : out   std_logic;
      may_divide           : out   std_logic;
      memory_access        : out   std_logic;
      excp                 : in    std_logic;
      inst_privilege_level : out   std_logic;
      calls                : out   std_logic;
      in_demw              : out   std_logic;
      kill_writes          : in    std_logic;
      wr_tlb_ins_dad       : out   std_logic;
      wr_tlb_virt_phys     : out   std_logic;
      wr_tlb_we            : out   std_logic
    );
  end component;

end package control_unit_components;
