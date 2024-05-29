library ieee;
  use ieee.std_logic_1164.all;
  use work.control_l_defs.regfile_input_1_t;
  use work.datapath_components.all;
  use work.control_unit_components.unidad_control;
  use work.exception_unit_components.all;
  use work.memory_management_unit_components.all;

entity proc is
  port (
    clk           : in    std_logic;
    boot          : in    std_logic;
    datard_m      : in    std_logic_vector(15 downto 0);
    intr          : in    std_logic;
    addr_m        : out   std_logic_vector(15 downto 0);
    data_wr       : out   std_logic_vector(15 downto 0);
    wr_m          : out   std_logic;
    word_byte     : out   std_logic;
    addr_io       : out   std_logic_vector(7 downto 0);
    rd_io         : in    std_logic_vector(15 downto 0);
    wr_io         : out   std_logic_vector(15 downto 0);
    rd_in         : out   std_logic;
    wr_out        : out   std_logic;
    inta          : out   std_logic;
    bad_alignment : in    std_logic
  );
end entity proc;

architecture structure of proc is

  signal op_groups            : std_logic_vector(1 downto 0);
  signal op                   : std_logic_vector(2 downto 0);
  signal wrd_1                : std_logic;
  signal addr_a               : std_logic_vector(2 downto 0);
  signal addr_b               : std_logic_vector(2 downto 0);
  signal addr_d_1             : std_logic_vector(2 downto 0);
  signal addr_d_2             : std_logic_vector(2 downto 0);
  signal chg_mode             : std_logic;
  signal immed                : std_logic_vector(15 downto 0);
  signal d_sys                : std_logic;
  signal wrd_2                : std_logic;
  signal immed_x2             : std_logic;
  signal sel_reg_out          : std_logic;
  signal ins_dad              : std_logic;
  signal rb_n                 : std_logic;
  signal pc                   : std_logic_vector(15 downto 0);
  signal regfile_input        : regfile_input_1_t;
  signal alu_out              : std_logic_vector(15 downto 0);
  signal z                    : std_logic;
  signal clear                : std_logic;
  signal intr_enabl           : std_logic;
  signal div_zero             : std_logic;
  signal mux_regs             : std_logic;
  signal exc_code             : std_logic_vector(3 downto 0);
  signal fetch_excp           : std_logic;
  signal invalid_inst         : std_logic;
  signal may_divide           : std_logic;
  signal memory_access        : std_logic;
  signal excp                 : std_logic;
  signal virt_addr            : std_logic_vector(15 downto 0);
  signal proc_privilege_level : std_logic;
  signal inst_privilege_level : std_logic;
  signal protected_inst       : std_logic;
  signal calls                : std_logic;
  signal interrupt            : std_logic;
  signal in_demw              : std_logic;
  signal kill_writes          : std_logic;
  signal wr_m_uc              : std_logic;
  signal rd_in_uc             : std_logic;
  signal wr_out_uc            : std_logic;
  signal inta_uc              : std_logic;
  signal miss_tlb             : std_logic;
  signal accessible_tlb       : std_logic;
  signal present_tlb          : std_logic;
  signal writable_tlb         : std_logic;
  signal wr_tlb_ins_dad       : std_logic;
  signal wr_tlb_virt_phys     : std_logic;
  signal wr_tlb_we            : std_logic;

begin

  e0 : component datapath
    port map (
      clk                  => clk,
      op_group             => op_groups,
      op                   => op,
      wrd_1                => wrd_1 and not kill_writes,
      addr_a               => addr_a,
      addr_b               => addr_b,
      addr_d_1             => addr_d_1,
      addr_d_2             => addr_d_2,
      chg_mode             => chg_mode,
      immed                => immed,
      immed_x2             => immed_x2,
      clear                => clear,
      d_sys                => d_sys,
      wrd_2                => wrd_2 and not kill_writes,
      sel_reg_out          => sel_reg_out,
      datard_m             => datard_m,
      ins_dad              => ins_dad,
      rb_n                 => rb_n,
      pc                   => pc,
      regfile_input        => regfile_input,
      addr_m               => virt_addr,
      data_wr              => data_wr,
      alu_out              => alu_out,
      z                    => z,
      rd_io                => rd_io,
      wr_io                => wr_io,
      intr_enabl           => intr_enabl,
      div_zero             => div_zero,
      mux_regs             => mux_regs,
      exc_code             => exc_code,
      fetch_excp           => fetch_excp,
      proc_privilege_level => proc_privilege_level
    );

  co : component unidad_control
    port map (
      boot                 => boot,
      clk                  => clk,
      datard_m             => datard_m,
      op_group             => op_groups,
      op                   => op,
      wrd_1                => wrd_1,
      addr_a               => addr_a,
      addr_b               => addr_b,
      addr_d_1             => addr_d_1,
      addr_d_2             => addr_d_2,
      clear                => clear,
      chg_mode             => chg_mode,
      immed                => immed,
      d_sys                => d_sys,
      wrd_2                => wrd_2,
      rb_n                 => rb_n,
      pc                   => pc,
      ins_dad              => ins_dad,
      regfile_input        => regfile_input,
      immed_x2             => immed_x2,
      sel_reg_out          => sel_reg_out,
      wr_m                 => wr_m_uc,
      word_byte            => word_byte,
      alu_out              => alu_out,
      z                    => z,
      addr_io              => addr_io,
      rd_in                => rd_in_uc,
      wr_out               => wr_out_uc,
      inta                 => inta_uc,
      mux_regs             => mux_regs,
      tipo_int             => exc_code,
      invalid_inst         => invalid_inst,
      may_divide           => may_divide,
      memory_access        => memory_access,
      excp                 => excp,
      inst_privilege_level => inst_privilege_level,
      calls                => calls,
      in_demw              => in_demw,
      kill_writes          => kill_writes,
      wr_tlb_ins_dad       => wr_tlb_ins_dad,
      wr_tlb_virt_phys     => wr_tlb_virt_phys,
      wr_tlb_we            => wr_tlb_we
    );

  exc0 : component exception_controller
    port map (
      clk            => clk,
      invalid_inst   => invalid_inst or (calls and proc_privilege_level),
      bad_alignment  => bad_alignment and memory_access,
      div_zero       => div_zero and may_divide and in_demw,
      ins_dad        => ins_dad,
      miss_tlb       => miss_tlb and memory_access,
      invalid_tlb    => not present_tlb and memory_access,
      protected_tlb  => not accessible_tlb and memory_access,
      readonly_tlb   => not writable_tlb and memory_access and wr_m_uc,
      protected_inst => protected_inst,
      calls          => calls,
      intr           => intr,
      intr_enabl     => intr_enabl,
      exc_code       => exc_code,
      excp           => excp,
      fetch_excp     => fetch_excp,
      interrupt      => interrupt
    );

  mmu0 : component mmu
    port map (
      clk                  => clk,
      boot                 => boot,
      virt_addr            => virt_addr,
      proc_privilege_level => proc_privilege_level,
      ins_dad              => ins_dad,
      wr_tlb_ins_dad       => wr_tlb_ins_dad,
      wr_tlb_virt_phys     => wr_tlb_virt_phys,
      wr_tlb_index         => alu_out(3 downto 0),
      wr_tlb_data          => alu_out(13 downto 8),
      wr_tlb_we            => wr_tlb_we,
      miss                 => miss_tlb,
      phys_addr            => addr_m,
      present              => present_tlb,
      accessible           => accessible_tlb,
      writable             => writable_tlb
    );

  protected_inst <= '1' when inst_privilege_level > proc_privilege_level else
                    '0';

  kill_writes <= in_demw and excp and not interrupt and not calls;
  wr_m        <= wr_m_uc and not kill_writes;
  rd_in       <= rd_in_uc and not kill_writes;
  wr_out      <= wr_out_uc and not kill_writes;
  inta        <= inta_uc and not kill_writes;

end architecture structure;
