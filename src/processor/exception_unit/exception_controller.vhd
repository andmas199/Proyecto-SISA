LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.exception_unit_components.all;

ENTITY exception_controller IS
	PORT (  invalid_inst	: IN  STD_LOGIC;
	        bad_alignment : IN  STD_LOGIC;
			  div_zero	   : IN  STD_LOGIC;
			  inta				: IN	STD_LOGIC;
			  exc_code 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
			  excp : OUT STD_LOGIC);
END exception_controller;

ARCHITECTURE Structure OF exception_controller IS
SIGNAL exception_code : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
	exception_code <= "0000" WHEN invalid_inst = '1' ELSE
							"0001" WHEN bad_alignment = '1' ELSE
							"0100" WHEN div_zero = '1' ELSE
							"1111" WHEN inta = '1' ELSE
							"----";
	excp <= '1' WHEN exception_code /= "----" ELSE '0';
	
	exc_code <= exception_code;
END Structure;
