LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

USE work.exception_unit_components.all;

ENTITY exception_controller IS
	PORT (  invalid_inst	: IN  STD_LOGIC;
	        bad_alignment : IN  STD_LOGIC;
			  div_zero	   : IN  STD_LOGIC;
			  protected_mem : IN STD_LOGIC;
			  protected_inst : IN STD_LOGIC;
			  intr				: IN	STD_LOGIC;
			  intr_enabl: IN STD_LOGIC;
			  exc_code 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			  excp : OUT STD_LOGIC);
END exception_controller;

ARCHITECTURE Structure OF exception_controller IS
	TYPE exception_t IS RECORD
		present: BOOLEAN;
		code: INTEGER;
	END RECORD;

	SIGNAL exception: exception_t;
BEGIN

	exception <=
		(present => true, code => 0) WHEN invalid_inst = '1' ELSE
		(present => true, code => 1) WHEN bad_alignment = '1' ELSE
		(present => true, code => 4) WHEN div_zero = '1' ELSE
		(present => true, code => 11) WHEN protected_mem = '1' ELSE
		(present => true, code => 13) WHEN protected_inst = '1' ELSE
		(present => true, code => 15) WHEN intr = '1' and intr_enabl = '1' else
		(present => false, code => 0);

	excp <= '1' WHEN exception.present ELSE '0';
	exc_code <= std_logic_vector(to_unsigned(exception.code, exc_code'length)) WHEN exception.present ELSE (others => '-');
END Structure;
