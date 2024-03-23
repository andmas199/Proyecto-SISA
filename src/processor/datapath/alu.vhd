LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

----------------------------------------------------------------------
--	The instructions are coded using the op_group and the op signals --
-- The instructions inside a certain group are coded in ascending   --
--	       order from left to right using the op signal              --
--         The following table shows all the groups:                --
--                                                                  --
--  op_group |      Group Name      | Group instructions            --
----------------------------------------------------------------------
--    000    | Logic and Arithmetic | AND, OR, XOR, NOT, ADD, SUB   --
--				 |     instructions     | SHA, SHL                      -- 
----------------------------------------------------------------------
--    001    |     Comparison       | CMPLT, CMPLE, -, CMPEQ,       --
--           |                      | CMPLTU, CMPLEU, -, -          --
----------------------------------------------------------------------
--    010    |      Immediates      | ADDI                          --
----------------------------------------------------------------------   
--    011    |  Memory Management   | LD, ST, LDB, STB              --
----------------------------------------------------------------------
--    100    |   Immediate Moves    | MOVI, MOVHI                   --
----------------------------------------------------------------------
--    101    |        Jumps         | BZ, BNZ                       --
----------------------------------------------------------------------
--    110    |         I/O          | IN, OUT                       --
----------------------------------------------------------------------
--    111    |         RFU          |                               --
----------------------------------------------------------------------



ENTITY alu IS
    PORT (x  : 		IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  		 : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op_group : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
			 op 		 : IN	 STD_LOGIC_VECTOR(2 DOWNTO 0);
          w  		 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z	 		 :	OUT STD_LOGIC);
END alu;


ARCHITECTURE Structure OF alu IS
BEGIN

PROCESS(x, y, op_group, op)
	VARIABLE shift_value : unsigned(4 DOWNTO 0);
	VARIABLE output : STD_LOGIC_VECTOR(15 DOWNTO 0);
BEGIN

-- Logic and Arithmetic Instructions
	IF op_group = "0000" THEN
		CASE op IS
			WHEN "000" =>
				output := 	x and y;
			WHEN "001" =>
				output := x or y;
			WHEN "010" =>
				output := x xor y;
			WHEN "011" =>
				output := not x;
			WHEN "100" =>
				output := STD_LOGIC_VECTOR(signed(x) + signed(y));
			WHEN "101" =>
				output := STD_LOGIC_VECTOR(signed(x) - signed(y));
			WHEN "110" =>
				IF y(15) = '0' THEN
					output := STD_LOGIC_VECTOR(shift_left(signed(x), natural(to_integer(unsigned(y(4 DOWNTO 0))))));
				ELSE
					output := STD_LOGIC_VECTOR(shift_right(signed(x), natural(to_integer(unsigned(y(4 DOWNTO 0))))));
				END IF;
			WHEN "111" =>
				IF y(15) = '0' THEN
					output := STD_LOGIC_VECTOR(shift_left(unsigned(x), natural(to_integer(unsigned(y(4 DOWNTO 0))))));
				ELSE
					output := STD_LOGIC_VECTOR(shift_right(unsigned(x), natural(to_integer(unsigned(y(4 DOWNTO 0))))));
				END IF;
		END CASE;

-- Comparison intrusctions
	ELSIF op_group = "0001" THEN
		CASE op IS
			WHEN "000" =>
				IF signed(x) < signed(y) THEN
					output := (0 => '1', OTHERS => '0');
				ELSE
					output := (OTHERS => '0');
				END IF;
			WHEN "001" =>
				IF signed(x) <= signed(y) THEN
					output := (0 => '1', OTHERS => '0');
				ELSE
					output := (OTHERS => '0');
				END IF;
			WHEN "010" =>
				output := x;
			WHEN "011" =>
				IF signed(x) = signed(y) THEN
					output := (0 => '1', OTHERS => '0');
				ELSE
					output := (OTHERS => '0');
				END IF;
			WHEN "100" =>
				IF unsigned(x) < unsigned(y) THEN
					output := (0 => '1', OTHERS => '0');
				ELSE
					output := (OTHERS => '0');
				END IF;
			WHEN "101" =>
				IF unsigned(x) <= unsigned(y) THEN
					output := (0 => '1', OTHERS => '0');
				ELSE
					output := (OTHERS => '0');
				END IF;
			WHEN "110" =>
				output := x;
			WHEN "111" =>
				output := x;
		END CASE;

-- Immediate Instructions
	ELSIF op_group = "010" THEN
		output := STD_LOGIC_VECTOR(signed(x) + signed(y));

-- Memory Management instructions
	ELSIF op_group = "011" THEN
		output := STD_LOGIC_VECTOR(unsigned(x) + unsigned(y));

-- Move instructions
	ELSIF op_group = "100" THEN
		CASE op IS
			WHEN "001" =>
				output := y(7 DOWNTO 0) & x(7 DOWNTO 0);
			WHEN OTHERS =>
				output := y;
		END CASE;
		
-- Jump instructions
	ELSIF op_group = "101" THEN
		output := y;

-- I/O instructions
	ELSIF op_group = "110" THEN
		output := y;
	END IF;
	
	 IF unsigned(output) = "0" THEN
		z <= '1';
	 ELSE
		z <= '0';
	END IF;
END PROCESS;
	
END Structure;