LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE exception_unit_components IS

    COMPONENT exception_controller IS
        PORT (  instruction 	: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
					 bad_alignment : IN  STD_LOGIC;
					 div_zero	   : IN  STD_LOGIC;
					 inta				: IN	STD_LOGIC;
					 exc_code 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
    END COMPONENT;


END PACKAGE;