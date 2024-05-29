library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity seg7_driver is
  port (
    enable : in    std_logic;
    value  : in    std_logic_vector(3 downto 0);
    hex    : out   std_logic_vector(6 downto 0)
  );
end entity seg7_driver;

architecture structure of seg7_driver is

  signal hex_buff : std_logic_vector(6 downto 0);

begin

  with value select hex_buff <=
    "1000000" when x"0",
    "1111001" when x"1",
    "0100100" when x"2",
    "0110000" when x"3",
    "0011001" when x"4",
    "0010010" when x"5",
    "0000010" when x"6",
    "1111000" when x"7",
    "0000000" when x"8",
    "0011000" when x"9",
    "0001000" when x"A",
    "0000011" when x"B",
    "1000110" when x"C",
    "0100001" when x"D",
    "0000110" when x"E",
    "0001110" when x"F",
    "-------" when OTHERS;

  hex <= hex_buff when enable = '1' else
         (others => '1');

end architecture structure;
