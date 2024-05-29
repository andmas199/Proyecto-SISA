library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.control_l_defs.all;
  use work.datapath_components.all;
  use work.io_components.all;

entity datapath is
  port (
    clk                  : in    std_logic;
    op_group             : in    std_logic_vector(1 downto 0);
    op                   : in    std_logic_vector(2 downto 0);
    wrd_1                : in    std_logic;
    addr_a               : in    std_logic_vector(2 downto 0);
    addr_b               : in    std_logic_vector(2 downto 0);
    addr_d_1             : in    std_logic_vector(2 downto 0);
    addr_d_2             : in    std_logic_vector(2 downto 0);
    clear                : in    std_logic;
    chg_mode             : in    std_logic;
    immed                : in    std_logic_vector(15 downto 0);
    d_sys                : in    std_logic;
    wrd_2                : in    std_logic;
    regfile_input        : in    regfile_input_1_t;
    sel_reg_out          : in    std_logic;
    immed_x2             : in    std_logic;
    datard_m             : in    std_logic_vector(15 downto 0);
    ins_dad              : in    std_logic;
    pc                   : in    std_logic_vector(15 downto 0);
    rb_n                 : in    std_logic;
    addr_m               : out   std_logic_vector(15 downto 0);
    data_wr              : out   std_logic_vector(15 downto 0);
    alu_out              : out   std_logic_vector(15 downto 0);
    z                    : out   std_logic;
    rd_io                : in    std_logic_vector(15 downto 0);
    wr_io                : out   std_logic_vector(15 downto 0);
    intr_enabl           : out   std_logic;
    div_zero             : out   std_logic;
    mux_regs             : in    std_logic;
    exc_code             : in    std_logic_vector(3 downto 0);
    fetch_excp           : in    std_logic;
    proc_privilege_level : out   std_logic
  );
end entity datapath;

architecture structure of datapath is

  signal w              : std_logic_vector(15 downto 0);
  signal reg_out        : std_logic_vector(15 downto 0);
  signal immediate      : std_logic_vector(15 downto 0);
  signal a              : std_logic_vector(15 downto 0);
  signal b              : std_logic_vector(15 downto 0);
  signal y              : std_logic_vector(15 downto 0);
  signal a_esp          : std_logic_vector(15 downto 0);
  signal b_esp          : std_logic_vector(15 downto 0);
  signal d              : std_logic_vector(15 downto 0);
  signal d_2            : std_logic_vector(15 downto 0);
  signal wrd_gen        : std_logic;
  signal wrd_esp        : std_logic;
  signal pc_old         : std_logic_vector(15 downto 0);
  signal w_old          : std_logic_vector(15 downto 0);
  signal reg_s_m_addr   : std_logic_vector(15 downto 0);
  signal fetch_excp_old : std_logic;

begin

  process (clk) is
  begin

    if rising_edge(clk) then
      pc_old         <= pc;
      w_old          <= w;
      fetch_excp_old <= fetch_excp;
    end if;

  end process;

  alu0 : component alu
    port map (
      x        => reg_out,
      y        => y,
      op_group => op_group,
      op       => op,
      w        => w,
      z        => z,
      div_zero => div_zero
    );

  reg0 : component regfile
    port map (
      clk           => clk,
      wrd_1         => wrd_gen,
      wrd_2         => '0',
      d_1           => d,
      d_2           => (OTHERS => '0'),
      addr_a        => addr_a,
      addr_b        => addr_b,
      addr_d_1      => addr_d_1,
      addr_d_2      => "000",
      clear         => clear,
      chg_mode      => '0',
      bad_alignment => '0',
      a             => a,
      b             => b,
      m_addr        => (OTHERS => '0')
    );

  regs : component regfile
    port map (
      clk             => clk,
      wrd_1           => wrd_esp,
      wrd_2           => wrd_2,
      d_1             => d,
      d_2             => d_2,
      addr_a          => addr_a,
      addr_b          => addr_b,
      addr_d_1        => addr_d_1,
      addr_d_2        => addr_d_2,
      clear           => clear,
      chg_mode        => chg_mode,
      a               => a_esp,
      b               => b_esp,
      intr_enabl      => intr_enabl,
      bad_alignment   => mux_regs,
      m_addr          => reg_s_m_addr,
      privilege_level => proc_privilege_level
    );

  reg_s_m_addr <= pc_old when fetch_excp_old = '1' else
                  w_old;

  d_2       <= "000000000000" & exc_code when chg_mode = '1' else
               b_esp;
  data_wr   <= b;
  reg_out   <= a when sel_reg_out = '0' else
               a_esp; -- 0 is normal register bank, 1 is special bank
  wrd_esp   <= wrd_1 and d_sys;
  wrd_gen   <= wrd_1 and not d_sys;
  immediate <= immed when immed_x2 = '0' else
               immed(14 downto 0) & '0';
  y         <= immediate when rb_n = '0' else
               b;

  -- Input 1 of both register banks
  with regfile_input select d <=
    w when REG_IN_1_ALU,
    datard_m when REG_IN_1_MEM,
    pc when REG_IN_1_PC,
    std_logic_vector(unsigned(pc) + 2) when REG_IN_1_PC_UPD,
    rd_io when REG_IN_1_IO,
    (others => '-') when REG_IN_1_DONTCARE;

  addr_m  <= pc when ins_dad = '0' else
             w;
  alu_out <= w;

  wr_io <= b;

end architecture structure;
