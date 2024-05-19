LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.exception_unit_components.all;

ENTITY exception_controller IS
	PORT (  instruction 	: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
	        bad_alignment : IN  STD_LOGIC;
			  div_zero	   : IN  STD_LOGIC;
			  inta				: IN	STD_LOGIC;
			  exc_code 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END exception_controller;

ARCHITECTURE Structure OF exception_controller IS
BEGIN
	exc_code <= "0000" WHEN instruction = "0000000000000000" ELSE
					"0001" WHEN bad_alignment = '1' ELSE
					"0100" WHEN div_zero = '1' ELSE
					"1111" WHEN inta = '1' ELSE
					"----";
END Structure;
