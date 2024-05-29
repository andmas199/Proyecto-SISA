library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity tlb is
  port (
    clk      : in    std_logic;
    boot     : in    std_logic;
    virt_tag : in    std_logic_vector(3 downto 0);

    new_index : in    std_logic_vector(3 downto 0);
    new_vtag  : in    std_logic_vector(3 downto 0);
    new_ptag  : in    std_logic_vector(3 downto 0);
    new_v     : in    std_logic;
    new_r     : in    std_logic;
    we_vtag   : in    std_logic;
    we_ptag   : in    std_logic;
    we_v      : in    std_logic;
    we_r      : in    std_logic;

    miss     : out   std_logic;
    phys_tag : out   std_logic_vector(3 downto 0);
    present  : out   std_logic;
    writable : out   std_logic
  );
end entity tlb;

architecture rtl of tlb is

  type entry_t is record
    vtag : std_logic_vector(3 downto 0);
    ptag : std_logic_vector(3 downto 0);
    v    : std_logic;
    r    : std_logic;
  end record entry_t;

  signal selected_entry : entry_t;

  type entries_t is ARRAY(7 downto 0) OF entry_t;

  signal entries : entries_t;

  type hits_t is ARRAY(7 downto 0) OF boolean;

  signal hits : hits_t;

begin

  process (clk) is
  begin

    if rising_edge(clk) then
      if (boot = '1') then
        entries(0) <= (vtag => "0000", ptag => "0000", v => '1', r => '0');
        entries(1) <= (vtag => "0001", ptag => "0001", v => '1', r => '0');
        entries(2) <= (vtag => "0010", ptag => "0010", v => '1', r => '0');
        entries(3) <= (vtag => "1000", ptag => "1000", v => '1', r => '0');
        entries(4) <= (vtag => "1100", ptag => "1100", v => '1', r => '1');
        entries(5) <= (vtag => "1101", ptag => "1101", v => '1', r => '1');
        entries(6) <= (vtag => "1110", ptag => "1110", v => '1', r => '1');
        entries(7) <= (vtag => "1111", ptag => "1111", v => '1', r => '1');
      else
        if (we_vtag = '1') then
          entries(to_integer(unsigned(new_index))).vtag <= new_vtag;
        end if;

        if (we_ptag = '1') then
          entries(to_integer(unsigned(new_index))).ptag <= new_ptag;
        end if;

        if (we_v = '1') then
          entries(to_integer(unsigned(new_index))).v <= new_v;
        end if;

        if (we_r = '1') then
          entries(to_integer(unsigned(new_index))).r <= new_r;
        end if;
      end if;
    end if;

  end process;

  hits_generate : for i IN 0 to 7 generate
    hits(i) <= virt_tag = entries(i).vtag;
  end generate hits_generate;

  selected_entry <= entries(0) when hits(0) else
                    entries(1) when hits(1) else
                    entries(2) when hits(2) else
                    entries(3) when hits(3) else
                    entries(4) when hits(4) else
                    entries(5) when hits(5) else
                    entries(6) when hits(6) else
                    entries(7) when hits(7) else
                    (vtag => "----", ptag => "----", v => '0', r => '-');

  miss     <= '1' when hits = (7 downto 0 => false) else
              '0';
  phys_tag <= selected_entry.ptag;
  present  <= selected_entry.v;
  writable <= not selected_entry.r;

end architecture rtl;
