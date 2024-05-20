LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.exception_unit_components.all;

ENTITY exception_controller IS
	PORT (  invalid_inst	: IN  STD_LOGIC;
	        bad_alignment : IN  STD_LOGIC;
			  div_zero	   : IN  STD_LOGIC;
			  intr				: IN	STD_LOGIC;
			  intr_enabl: IN STD_LOGIC;
			  exc_code 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			  excp : OUT STD_LOGIC);
END exception_controller;

ARCHITECTURE Structure OF exception_controller IS
	SIGNAL exception_code : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
	exception_code <= "10000" WHEN invalid_inst = '1' ELSE
							"10001" WHEN bad_alignment = '1' ELSE
							"10100" WHEN div_zero = '1' ELSE
							"11111" WHEN intr = '1' and intr_enabl = '1' ELSE
							"0----";
	excp <= exception_code(4);
	
	exc_code <= exception_code(3 DOWNTO 0);
END Structure;
