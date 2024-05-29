library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity regfile is
  port (
    clk             : in    std_logic;
    wrd_1           : in    std_logic;
    wrd_2           : in    std_logic;
    d_1             : in    std_logic_vector(15 downto 0);
    d_2             : in    std_logic_vector(15 downto 0);
    chg_mode        : in    std_logic;
    clear           : in    std_logic;
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
end entity regfile;

architecture structure of regfile is

  type regs_t is ARRAY(7 downto 0) OF std_logic_vector(15 downto 0);

  signal regs : regs_t;

begin

  process (clk, wrd_1, wrd_2, addr_a, addr_b, regs) is
  begin

    if rising_edge(clk) then
      if (clear = '1') then
        regs(0) <= (OTHERS => '0');
        regs(1) <= (OTHERS => '0');
        regs(2) <= (OTHERS => '0');
        regs(3) <= (OTHERS => '0');
        regs(4) <= (OTHERS => '0');
        regs(5) <= (OTHERS => '0');
        regs(6) <= (OTHERS => '0');
        regs(7) <=
        (
          0      => '1',                                    -- System mode
          1      => '0',                                    -- Interrupts disabled
          OTHERS => '0'
        );
      else
        if (chg_mode = '1') then
          regs(0) <= regs(7);
          if (bad_alignment = '1') then
            regs(3) <= m_addr;
          end if;
          regs(1)    <= d_1;
          regs(2)    <= d_2;
          regs(7)(0) <= '1';                           -- Enter system mode
          regs(7)(1) <= '0';                           -- Disable interrupts
        end if;
        if (wrd_1 = '1') then
          regs(to_integer(unsigned(addr_d_1))) <= d_1;
        end if;
        if (wrd_2 = '1') then
          regs(to_integer(unsigned(addr_d_2))) <= d_2;
        end if;
      end if;
    end if;

    privilege_level <= regs(7)(0);
    intr_enabl      <= regs(7)(1);

  end process;

  a <= regs(to_integer(unsigned(addr_a)));
  b <= regs(to_integer(unsigned(addr_b)));

end architecture structure;
