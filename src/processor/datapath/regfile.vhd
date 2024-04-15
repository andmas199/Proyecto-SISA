LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY regfile IS
	PORT (clk    : IN  STD_LOGIC;
	      wrd    : IN  STD_LOGIC;
	      d      : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
	      addr_a : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
				addr_b : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
	      addr_d : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
	      a      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
				b      : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END regfile;


ARCHITECTURE Structure OF regfile IS
  TYPE regs_t IS ARRAY(7 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL regs: regs_t;
BEGIN
	PROCESS(clk, wrd, addr_a, addr_b)
	BEGIN
		IF rising_edge(clk) and wrd = '1' THEN
			regs(to_integer(unsigned(addr_d))) <= d;
		END IF;
	END PROCESS;

	a <= regs(to_integer(unsigned(addr_a)));
	b <= regs(to_integer(unsigned(addr_b)));
END Structure;
