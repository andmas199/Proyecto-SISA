LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;


  ------------------------------------------------------------------
--	The instructions are coded using the op_group and the op signals --
--         The following table shows all the groups:                --
  ------------------------------------------------------------------
                                                                
  ------------------------------------------------------------------
  -- op \ op_group  |    00    |    01    |    10    |     11     --
  ------------------------------------------------------------------
  -- 000            |    AND   |   CMPLT  |   MOVI   |    MUL     --
  ------------------------------------------------------------------
  -- 001            |    OR    |   CMPLE  |   MOVHI  |    MULH    --
  ------------------------------------------------------------------
  -- 010            |    XOR   |    --    |    --    |    MULHU   --
  ------------------------------------------------------------------
  -- 011            |    NOT   |   CMPEQ  |    --    |     --     --
  ------------------------------------------------------------------
  -- 100            |    ADD   |   CMPLTU |    --    |    DIV     --
  ------------------------------------------------------------------
  -- 101            |    SUB   |   CMPLEU |    --    |    DIVU    --
  ------------------------------------------------------------------
  -- 110            |    SHA   |    --    |    --    |     X      --
  ------------------------------------------------------------------
  -- 111            |    SHL   |    --    |    --    |     --     --
  ------------------------------------------------------------------


ENTITY alu IS
    PORT (x  : 		IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          y  		 : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op_group : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
			 op 		 : IN	 STD_LOGIC_VECTOR(2 DOWNTO 0);
          w  		 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z	 		 :	OUT STD_LOGIC;
			 div_zero : OUT STD_LOGIC);
END alu;


ARCHITECTURE Structure OF alu IS
BEGIN

PROCESS(x, y, op_group, op)
	VARIABLE output : STD_LOGIC_VECTOR(15 DOWNTO 0);
	VARIABLE ALU_sel: STD_LOGIC_VECTOR(4 DOWNTO 0);
	VARIABLE LTU :		STD_LOGIC;
	VARIABLE LT :		STD_LOGIC;
	VARIABLE EQ :		STD_LOGIC;
	VARIABLE MUL : 	STD_LOGIC_VECTOR(31 DOWNTO 0);
BEGIN
	
	ALU_sel := op_group & op;
	IF unsigned(x) < unsigned(y) THEN
		LTU := '1';
	ELSE
		LTU := '0';
	END IF;
	
	IF signed(x) < signed(y) THEN
		LT := '1';
	ELSE
		LT := '0';
	END IF;
	
	IF x = y THEN
		EQ := '1';
	ELSE
		EQ := '0';
	END IF;
	
	CASE ALU_sel IS
-- Logic and Arithmetic Instructions
		WHEN "00000" =>
			output := x and y;
		WHEN "00001" =>
			output := x or y;
		WHEN "00010" =>
			output := x xor y;
		WHEN "00011" =>
			output := not x;
		WHEN "00100" =>
			output := STD_LOGIC_VECTOR(unsigned(x) + unsigned(y));
		WHEN "00101" =>
			output := STD_LOGIC_VECTOR(unsigned(x) - unsigned(y));
		WHEN "00110" =>
			IF y(4) = '0' THEN
				output := STD_LOGIC_VECTOR(shift_left(signed(x), natural(to_integer(unsigned(y(4 DOWNTO 0))))));
			ELSE
				output := STD_LOGIC_VECTOR(shift_right(signed(x), natural(to_integer(abs(signed(y(4 DOWNTO 0)))))));
			END IF;
		WHEN "00111" =>
			IF y(4) = '0' THEN
				output := STD_LOGIC_VECTOR(shift_left(unsigned(x), natural(to_integer(unsigned(y(4 DOWNTO 0))))));
			ELSE
				output := STD_LOGIC_VECTOR(shift_right(unsigned(x), natural(to_integer(abs(signed(y(4 DOWNTO 0)))))));
			END IF;

-- Comparison instructions
		WHEN "01000" =>
				output := "000000000000000" & LT;
		WHEN "01001" =>
			output := "000000000000000" & (LT or EQ);
		WHEN "01011" =>
				output := "000000000000000" & EQ;
		WHEN "01100" =>
				output := "000000000000000" & LTU;
		WHEN "01101" =>
			output := "000000000000000" & (LTU or EQ);
			
-- Move instructions
		WHEN "10001" =>
			output := y(7 DOWNTO 0) & x(7 DOWNTO 0);
-- Arithmetic extension(MUL and DIV)
		WHEN "11000" =>
			MUL := STD_LOGIC_VECTOR(signed(x) * signed(y));
			output := MUL(15 DOWNTO 0);
		WHEN "11001" =>
			MUL := STD_LOGIC_VECTOR(signed(x) * signed(y));
			output := MUL(31 DOWNTO 16);
		WHEN "11010" =>
			MUL := STD_LOGIC_VECTOR(unsigned(x) * unsigned(y));
			output := MUL(31 DOWNTO 16);
		WHEN "11100" =>
			IF y /= x"0000" THEN
				output := STD_LOGIC_VECTOR(signed(x) / signed(y));
			ELSE
				output := x"0000"; -- TODO: Exception!
			END IF;
		WHEN "11101" =>
			IF y /= x"0000" THEN
				output := STD_LOGIC_VECTOR(unsigned(x) / unsigned(y));
			ELSE
				output := x"0000"; -- TODO: Exception!
			END IF;
	
	-- Special
		WHEN "11110" =>
			output := x;
		WHEN OTHERS =>
			output := y;
			

	END CASE;
	
	 IF unsigned(y) = x"00" THEN
		z <= '1';
	 ELSE
		z <= '0';
	END IF;
	
	IF op_group = "11" and (op = "100" or op = "101") and y = "0000000000000000" THEN
		div_zero <= '1';
	ELSE
		div_zero <= '0';
	END IF;
	
	w <= output;
END PROCESS;
	
END Structure;
