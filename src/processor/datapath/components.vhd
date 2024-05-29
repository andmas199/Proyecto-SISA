library ieee;
  use ieee.std_logic_1164.all;
  use work.control_l_defs.regfile_input_1_t;

package datapath_components is

  component alu is
    port (
      x        : in    std_logic_vector(15 downto 0);
      y        : in    std_logic_vector(15 downto 0);
      op_group : in    std_logic_vector(1 downto 0);
      op       : in    std_logic_vector(2 downto 0);
      w        : out   std_logic_vector(15 downto 0);
      z        : out   std_logic;
      div_zero : out   std_logic
    );
  end component;

  component datapath is
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
      immed_x2             : in    std_logic;
      d_sys                : in    std_logic;
      wrd_2                : in    std_logic;
      sel_reg_out          : in    std_logic;
      datard_m             : in    std_logic_vector(15 downto 0);
      ins_dad              : in    std_logic;
      rb_n                 : in    std_logic;
      pc                   : in    std_logic_vector(15 downto 0);
      regfile_input        : in    regfile_input_1_t;
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
  end component;

  component regfile is
    port (
      clk             : in    std_logic;
      wrd_1           : in    std_logic;
      wrd_2           : in    std_logic;
      d_1             : in    std_logic_vector(15 downto 0);
      d_2             : in    std_logic_vector(15 downto 0);
      clear           : in    std_logic;
      chg_mode        : in    std_logic;
      addr_a          : in    std_logic_vector(2 downto 0);
      addr_b          : in    std_logic_vector(2 downto 0);
      addr_d_1        : in    std_logic_vector(2 downto 0);
      addr_d_2        : in    std_logic_vector(2 downto 0);
      a               : out   std_logic_vector(15 downto 0);
      b               : out   std_logic_vector(15 downto 0);
      intr_enabl      : out   std_logic;
      bad_alignment   : in    std_logic;
      m_addr          : in    std_logic_vector(15 downto 0);
      privilege_level : out   std_logic
    );
  end component;

end package datapath_components;
