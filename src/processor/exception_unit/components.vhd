LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE exception_unit_components IS

    COMPONENT exception_controller IS
        PORT (  clk : IN STD_LOGIC;
				invalid_inst 	: IN  STD_LOGIC;
					 bad_alignment : IN  STD_LOGIC;
					 div_zero	   : IN  STD_LOGIC;
					 protected_mem : IN STD_LOGIC;
					 protected_inst : IN STD_LOGIC;
					 calls : IN STD_LOGIC;
					 intr				: IN	STD_LOGIC;
					 intr_enabl: IN STD_LOGIC;
					 exc_code 		: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
					 excp				: OUT STD_LOGIC;
					 fetch_excp : OUT STD_LOGIC;
					 interrupt : OUT STD_LOGIC);
    END COMPONENT;


END PACKAGE;