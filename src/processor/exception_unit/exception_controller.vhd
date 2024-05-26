LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.exception_unit_components.all;

ENTITY exception_controller IS
	PORT (  clk : IN STD_LOGIC;
			invalid_inst	: IN  STD_LOGIC;
	        bad_alignment : IN  STD_LOGIC;
			  div_zero	   : IN  STD_LOGIC;
			  protected_mem : IN STD_LOGIC;
			  protected_inst : IN STD_LOGIC;
			  calls: IN STD_LOGIC;
			  intr				: IN	STD_LOGIC;
			  intr_enabl: IN STD_LOGIC;
			  exc_code 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			  excp : OUT STD_LOGIC;
			  interrupt : OUT STD_LOGIC);
END exception_controller;

ARCHITECTURE Structure OF exception_controller IS
	TYPE exception_t IS RECORD
		present: BOOLEAN;
		code: INTEGER;
	END RECORD;

	SIGNAL exception, prev_exception: exception_t;

	FUNCTION fetch_exception (exc: exception_t) RETURN boolean IS
	BEGIN
		RETURN exc.present and (exc.code = 1 or exc.code = 11);
	END FUNCTION;
BEGIN

	exception <=
		(present => true, code => 0) WHEN invalid_inst = '1' ELSE
		(present => true, code => 1) WHEN bad_alignment = '1' ELSE
		(present => true, code => 4) WHEN div_zero = '1' ELSE
		(present => true, code => 11) WHEN protected_mem = '1' ELSE
		(present => true, code => 13) WHEN protected_inst = '1' ELSE
		(present => true, code => 14) WHEN calls = '1' ELSE
		(present => true, code => 15) WHEN intr = '1' and intr_enabl = '1' else
		(present => false, code => 0);

	excp <= '1' WHEN exception.present or fetch_exception(prev_exception) ELSE '0';
	interrupt <= '1' WHEN (exception.present and exception.code = 15) or (fetch_exception(prev_exception) and prev_exception.code = 15) ELSE '0';

	PROCESS (clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF fetch_exception(prev_exception) THEN
				exc_code <= std_logic_vector(to_unsigned(prev_exception.code, exc_code'length));
			ELSIF exception.present THEN
				exc_code <= std_logic_vector(to_unsigned(exception.code, exc_code'length));
			ELSE
				exc_code <= (others => '-');
			END IF;

			prev_exception <= exception;
		END IF;
	END PROCESS;
END Structure;
