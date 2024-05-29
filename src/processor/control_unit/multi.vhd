library ieee;
  use ieee.std_logic_1164.all;

entity multi is
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
end entity multi;

architecture structure of multi is

  type state_t is (f, demw, system);

  signal state : state_t;

begin

  process (clk, boot) is
  begin

    if (boot = '1') then
      state <= f;
    elsif rising_edge(clk) then

      case state is

        when f =>

          state <= demw;

        when demw =>

          if (excp = '1') then
            state <= system;
          else
            state <= f;
          end if;

        when system =>

          state <= f;

      end case;

    end if;

  end process;

  process (state, ldpc_l, wrd_1_l, wrd_2_l, wr_m_l, w_b, inta_l, memory_access_l) is
  begin

    case state is

      when f =>

        ldpc          <= '0';
        wrd_1         <= '0';
        wrd_2         <= '0';
        wr_m          <= '0';
        word_byte     <= '0';
        ins_dad       <= '0';
        ldir          <= '1';
        inta          <= '0';
        chg_mode      <= '0';
        memory_access <= '1';
        in_demw       <= '0';

      when demw =>

        ldpc          <= ldpc_l;
        wrd_1         <= wrd_1_l;
        wrd_2         <= wrd_2_l;
        wr_m          <= wr_m_l;
        word_byte     <= w_b;
        ins_dad       <= '1';
        ldir          <= '0';
        inta          <= inta_l;
        chg_mode      <= '0';
        memory_access <= memory_access_l;
        in_demw       <= '1';

      when system =>

        ldpc          <= ldpc_l;
        wrd_1         <= wrd_1_l;
        wrd_2         <= wrd_2_l;
        wr_m          <= '0';
        word_byte     <= '0';
        ins_dad       <= '0';
        ldir          <= '0';
        inta          <= '0';
        chg_mode      <= '1';
        memory_access <= memory_access_l;
        in_demw       <= '0';

    end case;

  end process;

end architecture structure;
