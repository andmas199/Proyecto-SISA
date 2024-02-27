LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;

ENTITY unidad_control IS
    PORT (boot   : IN  STD_LOGIC;
          clk    : IN  STD_LOGIC;
          ir     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
          op     : OUT STD_LOGIC;
          wrd    : OUT STD_LOGIC;
          addr_a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END unidad_control;

ARCHITECTURE Structure OF unidad_control IS

    COMPONENT control_l IS
		 PORT (ir     : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
				 op     : OUT STD_LOGIC;
				 ldpc   : OUT STD_LOGIC;
				 wrd    : OUT STD_LOGIC;
				 addr_a : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				 addr_d : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
				 immed  : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;

	SIGNAL ldpc: STD_LOGIC;
BEGIN
	c0: control_l
		PORT MAP (	ir => ir,
						op => op,
						ldpc => ldpc,
						wrd => wrd,
						addr_a => addr_a,
						addr_d => addr_d,
						immed => immed);
	
	PROCESS(clk)
		VARIABLE pc_reg: STD_LOGIC_VECTOR(15 DOWNTO 0);
		VARIABLE booted: STD_LOGIC := '0';
	BEGIN
		IF rising_edge(clk) THEN
			IF booted = '1' and ldpc = '1' THEN
				pc_reg := pc_reg + 2;
			ELSIF boot = '1' THEN
				pc_reg := x"C000";
				booted := '1';
			END IF;
		END IF;
		
		pc <= pc_reg;
	END PROCESS;

END Structure;