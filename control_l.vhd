LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY control_l IS
    PORT (ir     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op     : OUT STD_LOGIC;
          ldpc   : OUT STD_LOGIC;
          wrd    : OUT STD_LOGIC;
          addr_a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END control_l;


ARCHITECTURE Structure OF control_l IS
BEGIN
	op <= ir(8);
	ldpc <= '0' WHEN ir = x"FFFF" ELSE '1';
	wrd <= '1' WHEN ir(15 DOWNTO 12) = "0101" ELSE '0';
	addr_a <= ir(11 DOWNTO 9);
	addr_d <= ir(11 DOWNTO 9);
	immed <= std_logic_vector(resize(signed(ir(7 DOWNTO 0)), immed'length));
END Structure;