LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY tlb IS
    PORT (
        clk: in std_logic;
        boot: in std_logic;
        virt_tag: in std_logic_vector(3 downto 0);

        new_index: in std_logic_vector(3 downto 0);
        new_vtag: in std_logic_vector(3 downto 0);
        new_ptag: in std_logic_vector(3 downto 0);
        new_v: in std_logic;
        new_r: in std_logic;
        we_vtag: in std_logic;
        we_ptag: in std_logic;
        we_v: in std_logic;
        we_r: in std_logic;
        
        miss: out std_logic;
        phys_tag: out std_logic_vector(3 downto 0);
        present: out std_logic;
        writable: out std_logic
    );
END tlb;

ARCHITECTURE rtl OF tlb IS
  TYPE entry_t IS RECORD
    vtag: std_logic_vector(3 downto 0);
    ptag: std_logic_vector(3 downto 0);
    v: std_logic;
    r: std_logic;
  END RECORD;
  SIGNAL selected_entry: entry_t;

  TYPE entries_t IS ARRAY(7 DOWNTO 0) OF entry_t;
  SIGNAL entries: entries_t;

  TYPE hits_t IS ARRAY(7 DOWNTO 0) OF boolean;
  SIGNAL hits: hits_t;
BEGIN

  PROCESS (clk)
  BEGIN
    IF rising_edge(clk) THEN
      IF boot = '1' THEN
        entries(0) <= (vtag => "0000", ptag => "0000", v => '1', r => '0');
        entries(1) <= (vtag => "0001", ptag => "0001", v => '1', r => '0');
        entries(2) <= (vtag => "0010", ptag => "0010", v => '1', r => '0');
        entries(3) <= (vtag => "1000", ptag => "1000", v => '1', r => '1');
        entries(4) <= (vtag => "1100", ptag => "1100", v => '1', r => '1');
        entries(5) <= (vtag => "1101", ptag => "1101", v => '1', r => '1');
        entries(6) <= (vtag => "1110", ptag => "1110", v => '1', r => '1');
        entries(7) <= (vtag => "1111", ptag => "1111", v => '1', r => '1');
      ELSE
        IF we_vtag = '1' THEN
          entries(to_integer(unsigned(new_index))).vtag <= new_vtag;
        END IF;

        IF we_ptag = '1' THEN
          entries(to_integer(unsigned(new_index))).ptag <= new_ptag;
        END IF;

        IF we_v = '1' THEN
          entries(to_integer(unsigned(new_index))).v <= new_v;
        END IF;

        IF we_r = '1' THEN
          entries(to_integer(unsigned(new_index))).r <= new_r;
        END IF;

      END IF;
    END IF;
  END PROCESS;

  hits_generate: FOR i IN 0 TO 7 GENERATE
    hits(i) <= virt_tag = entries(i).vtag;
  END GENERATE hits_generate;

  selected_entry <= entries(0) WHEN hits(0) ELSE
                    entries(1) WHEN hits(1) ELSE
                    entries(2) WHEN hits(2) ELSE
                    entries(3) WHEN hits(3) ELSE
                    entries(4) WHEN hits(4) ELSE
                    entries(5) WHEN hits(5) ELSE
                    entries(6) WHEN hits(6) ELSE
                    entries(7) WHEN hits(7) ELSE
                    (vtag => "----", ptag => "----", v => '0', r => '-');

  miss <= '1' WHEN hits = (7 downto 0 => false) ELSE '0';
  phys_tag <= selected_entry.ptag;
  present <= selected_entry.v;
  writable <= not selected_entry.r;
END rtl;
