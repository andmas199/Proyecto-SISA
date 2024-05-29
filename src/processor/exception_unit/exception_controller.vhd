library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;
  use work.exception_unit_components.all;

entity exception_controller is
  port (
    clk            : in    std_logic;
    invalid_inst   : in    std_logic;
    bad_alignment  : in    std_logic;
    div_zero       : in    std_logic;
    ins_dad        : in    std_logic;
    miss_tlb       : in    std_logic;
    invalid_tlb    : in    std_logic;
    protected_tlb  : in    std_logic;
    readonly_tlb   : in    std_logic;
    protected_inst : in    std_logic;
    calls          : in    std_logic;
    intr           : in    std_logic;
    intr_enabl     : in    std_logic;
    exc_code       : out   std_logic_vector(3 downto 0);
    excp           : out   std_logic;
    fetch_excp     : out   std_logic;
    interrupt      : out   std_logic
  );
end entity exception_controller;

architecture structure of exception_controller is

  type exception_t is record
    present : BOOLEAN;
    code    : integer;
  end record exception_t;

  signal exception, prev_exception : exception_t;

  function fetch_exception (
    exc: exception_t
  ) return boolean is
  begin

    RETURN exc.present and (exc.code = 1 or exc.code = 6 or exc.code = 8 or exc.code = 10);

  end function;

begin

  exception <=
               (present => true, code => 0) when invalid_inst = '1' else
               (present => true, code => 1) when bad_alignment = '1' else
               (present => true, code => 4) when div_zero = '1' else
               (present => true, code => 6) when miss_tlb = '1' and ins_dad = '0' else
               (present => true, code => 7) when miss_tlb = '1' and ins_dad = '1' else
               (present => true, code => 8) when invalid_tlb = '1' and ins_dad = '0' else
               (present => true, code => 9) when invalid_tlb = '1' and ins_dad = '1' else
               (present => true, code => 10) when protected_tlb = '1' and ins_dad = '0' else
               (present => true, code => 11) when protected_tlb = '1' and ins_dad = '1' else
               (present => true, code => 12) when readonly_tlb = '1' else
               (present => true, code => 13) when protected_inst = '1' else
               (present => true, code => 14) when calls = '1' else
               (present => true, code => 15) when intr = '1' and intr_enabl = '1' else
               (present => false, code => 0);

  excp       <= '1' when exception.present or fetch_exception(prev_exception) else
                '0';
  fetch_excp <= '1' when fetch_exception(prev_exception) else
                '0';
  interrupt  <= '1' when (exception.present and exception.code = 15) or (fetch_exception(prev_exception) and prev_exception.code = 15) else
                '0';

  process (clk) is
  begin

    if rising_edge(clk) then
      if fetch_exception(prev_exception) then
        exc_code <= std_logic_vector(to_unsigned(prev_exception.code, exc_code'length));
      elsif (exception.present) then
        exc_code <= std_logic_vector(to_unsigned(exception.code, exc_code'length));
      else
        exc_code <= (others => '-');
      end if;

      prev_exception <= exception;
    end if;

  end process;

end architecture structure;
