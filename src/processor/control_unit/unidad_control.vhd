library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use ieee.std_logic_unsigned.all;
  use work.control_l_defs.all;
  use work.control_unit_components.control_l;
  use work.control_unit_components.multi;

entity unidad_control is
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
    sel_reg_out          : out   std_logic;
    rb_n                 : out   std_logic;
    immed_x2             : out   std_logic;
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
end entity unidad_control;

architecture structure of unidad_control is

  signal ir     : std_logic_vector(15 downto 0);
  signal pc_reg : std_logic_vector(15 downto 0);
  signal booted : std_logic := '0';

  signal ldpc_l          : std_logic;
  signal wrd_1_l         : std_logic;
  signal wrd_2_l         : std_logic;
  signal wr_m_l          : std_logic;
  signal w_b             : std_logic;
  signal inta_l          : std_logic;
  signal memory_access_l : std_logic;

  signal chg_mode_multi : std_logic;

  signal ldpc : std_logic;
  signal ldir : std_logic;

  signal immediate       : std_logic_vector(15 downto 0);
  signal sequencing_mode : sequencing_mode_t;

begin

  --------------------------------------
  --              AVISO               --
  --          MUY IMPORTANTE          --
  --------------------------------------
  -- No confundir el signal wrd_l con --
  -- la salida wrd_l de la unidad de  --
  -- control. La salida es el numero  --
  -- uno y el signal la letra "ele"   --
  --------------------------------------

  immed    <= immediate;
  chg_mode <= chg_mode_multi;

  c0 : component control_l
    port map (
      ir                   => ir,
      z                    => z,
      system               => chg_mode_multi,
      op_group             => op_group,
      op                   => op,
      ldpc                 => ldpc_l,
      wrd_1                => wrd_1_l,
      addr_a               => addr_a,
      addr_b               => addr_b,
      addr_d_1             => addr_d_1,
      addr_d_2             => addr_d_2,
      immed                => immediate,
      d_sys                => d_sys,
      wrd_2                => wrd_2_l,
      wr_m                 => wr_m_l,
      regfile_input        => regfile_input,
      rb_n                 => rb_n,
      immed_x2             => immed_x2,
      sel_reg_out          => sel_reg_out,
      word_byte            => w_b,
      sequencing_mode      => sequencing_mode,
      addr_io              => addr_io,
      rd_in                => rd_in,
      wr_out               => wr_out,
      inta                 => inta_l,
      mux_regs             => mux_regs,
      tipo_int             => tipo_int,
      invalid_inst         => invalid_inst,
      may_divide           => may_divide,
      memory_access        => memory_access_l,
      inst_privilege_level => inst_privilege_level,
      calls                => calls,
      wr_tlb_ins_dad       => wr_tlb_ins_dad,
      wr_tlb_virt_phys     => wr_tlb_virt_phys,
      wr_tlb_we            => wr_tlb_we
    );

  m0 : component multi
    port map (
      clk             => clk,
      boot            => boot,
      ldpc_l          => ldpc_l,
      wrd_1_l         => wrd_1_l,
      wrd_2_l         => wrd_2_l,
      wr_m_l          => wr_m_l,
      w_b             => w_b,
      inta_l          => inta_l,
      memory_access_l => memory_access_l,
      chg_mode        => chg_mode_multi,
      ldpc            => ldpc,
      wrd_1           => wrd_1,
      wrd_2           => wrd_2,
      wr_m            => wr_m,
      ldir            => ldir,
      ins_dad         => ins_dad,
      word_byte       => word_byte,
      excp            => excp,
      inta            => inta,
      memory_access   => memory_access,
      in_demw         => in_demw
    );

  process (clk, pc_reg) is
  begin

    if rising_edge(clk) then
      clear <= boot;
      if (booted = '1' and ldpc = '1') then
        if (kill_writes = '1') then
          pc_reg <= pc_reg + 2; -- On exceptions that abort state changes, keep implicit sequencing
        else

          case sequencing_mode is

            when IMPLICIT =>

              pc_reg <= pc_reg + 2;

            when RELATIVE =>

              pc_reg <= std_logic_vector(signed(unsigned(pc_reg)) + 2 + signed(immediate(7 downto 0) & '0'));

            when ABSOLUTE =>

              pc_reg <= alu_out;

          end case;

        end if;
      elsif (boot = '1') then
        pc_reg <= x"C000";
        booted <= '1';
      end if;
    end if;

    pc <= pc_reg;

  end process;

  process (clk) is
  begin

    if rising_edge(clk) then
      if (ldir = '1') then
        ir <= datard_m;
      elsif (boot = '1') then
        ir <= (others => '0');
      end if;
    end if;

  end process;

end architecture structure;
