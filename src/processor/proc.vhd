LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.datapath_components.datapath;
USE work.control_unit_components.unidad_control;

ENTITY proc IS
    PORT (clk       : IN  STD_LOGIC;
          boot      : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          addr_m    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          data_wr   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC);
END proc;


ARCHITECTURE Structure OF proc IS
	
	SIGNAL op :			STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL wrd	:		STD_LOGIC;
	SIGNAL addr_a :	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL addr_b :	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL addr_d :	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL immed :		STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL immed_x2: 	STD_LOGIC;
	SIGNAL ins_dad:	STD_LOGIC;
	SIGNAL pc:			STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL in_d:		STD_LOGIC;

BEGIN
	e0: datapath
		PORT MAP	(	 clk => clk,
						 op => op,
						 wrd => wrd,
						 addr_a => addr_a,
						 addr_b => addr_b,
						 addr_d => addr_d,
						 immed => immed,
						 immed_x2 => immed_x2,
						 datard_m => datard_m,
						 ins_dad => ins_dad,
						 pc => pc,
						 in_d => in_d,
						 addr_m => addr_m,
						 data_wr => data_wr);
	
	co: unidad_control
		PORT MAP	(	 boot => boot,
						 clk => clk,
						 datard_m => datard_m,
						 op => op,
						 wrd => wrd,
						 addr_a => addr_a,
						 addr_b => addr_b,
						 addr_d => addr_d,
						 immed => immed,
						 pc => pc,
						 ins_dad => ins_dad,
						 in_d => in_d,
						 immed_x2 => immed_x2,
						 wr_m => wr_m,
						 word_byte => word_byte);
END Structure;