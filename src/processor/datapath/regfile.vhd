LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY regfile IS
	PORT (clk    	: IN  STD_LOGIC;
	      wrd_1  	: IN  STD_LOGIC;
			wrd_2  	: IN  STD_LOGIC;
	      d_1     	: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			d_2     	: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			chg_mode	: IN	STD_LOGIC;
			clear		: IN  STD_LOGIC;
	      addr_a 	: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			addr_b 	: IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
	      addr_d_1 : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			addr_d_2 : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
	      a      	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			b      	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END regfile;


ARCHITECTURE Structure OF regfile IS
  TYPE regs_t IS ARRAY(7 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL regs: regs_t;
BEGIN
	PROCESS(clk, wrd_1, wrd_2, addr_a, addr_b)
	BEGIN
		IF rising_edge(clk) THEN
			IF clear = '1' THEN
				regs(0) <= (OTHERS => '0');
				regs(1) <= (OTHERS => '0');
				regs(2) <= (OTHERS => '0');
				regs(3) <= (OTHERS => '0');
				regs(4) <= (OTHERS => '0');
				regs(5) <= (OTHERS => '0');
				regs(6) <= (OTHERS => '0');
				regs(7) <= (OTHERS => '0');
			ELSE
				IF chg_mode = '1' and regs(7)(1) = '1' THEN
					regs(0) <= regs(7);
					regs(1) <= d_1;
					regs(2) <= X"000F";
					regs(7)(1) <= '0';
				END IF;
				IF wrd_1 = '1' THEN
					regs(to_integer(unsigned(addr_d_1))) <= d_1;
				END IF;
				IF wrd_2 = '1' THEN
					regs(to_integer(unsigned(addr_d_2))) <= d_2;
				END IF;
			END IF;
		END IF;
		
	END PROCESS;

	a <= regs(to_integer(unsigned(addr_a)));
	b <= regs(to_integer(unsigned(addr_b)));
END Structure;
