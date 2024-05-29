library ieee;
  use ieee.std_logic_1164.all;

package exception_unit_components is

  component exception_controller is
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
  end component;

end package exception_unit_components;
