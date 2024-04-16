LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY seg7_driver IS
  PORT (enable: in  std_logic;
        value:  in  std_logic_vector(3 DOWNTO 0);
        hex:    out std_logic_vector(6 DOWNTO 0));
END seg7_driver;

ARCHITECTURE Structure OF seg7_driver IS
  SIGNAL hex_buff: std_logic_vector(6 DOWNTO 0);
BEGIN
  WITH value SELECT
    hex_buff <= "1000000" WHEN x"0",
      					"1111001" WHEN x"1",
      					"0100100" WHEN x"2",
      					"0110000" WHEN x"3",
      					"0011001" WHEN x"4",
      					"0010010" WHEN x"5",
      					"0000010" WHEN x"6",
      					"1111000" WHEN x"7",
                "0000000" WHEN x"8",
                "0011000" WHEN x"9",
                "0001000" WHEN x"A",
      					"0000011" WHEN x"B",
      					"1000110" WHEN x"C",
      					"0100001" WHEN x"D",
      					"0000110" WHEN x"E",
      					"0001110" WHEN x"F",
                "-------" WHEN OTHERS;

  hex <= hex_buff WHEN enable = '1' ELSE (others => '1');
END Structure;
