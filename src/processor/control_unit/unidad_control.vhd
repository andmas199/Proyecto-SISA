LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;

USE work.control_unit_components.sequencing_mode_t;
USE work.datapath_components.regfile_input_t;
USE work.control_unit_components.control_l;
USE work.control_unit_components.multi;

ENTITY unidad_control IS
    PORT (boot      : IN  STD_LOGIC;
          clk       : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		  alu_out   : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		  z			: IN STD_LOGIC;
			 op_group  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          wrd       : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          pc        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad   : OUT STD_LOGIC;
          regfile_input : OUT regfile_input_t;
			 Rb_N		  : OUT STD_LOGIC;	
          immed_x2  : OUT STD_LOGIC;
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC);
END unidad_control;

ARCHITECTURE Structure OF unidad_control IS
	SIGNAL ir: STD_LOGIC_VECTOR(15 DOWNTO 0);

	SIGNAL ldpc_l: STD_LOGIC;
	SIGNAL wrd_l: STD_LOGIC;
	SIGNAL wr_m_l: STD_LOGIC;
	SIGNAL w_b: STD_LOGIC;
	
	SIGNAL ldpc: STD_LOGIC;
	SIGNAL ldir: STD_LOGIC;

	SIGNAL immediate: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL sequencing_mode: sequencing_mode_t;
BEGIN

	immed <= immediate;

	c0: control_l
		PORT MAP (ir => ir,
					 z => z,
					 op_group => op_group,
					 op => op,
					 ldpc => ldpc_l,
					 wrd => wrd_l,
					 addr_a => addr_a,
					 addr_b => addr_b,
					 addr_d => addr_d,
					 immed => immediate,
					 wr_m => wr_m_l,
					 regfile_input => regfile_input,
					 Rb_N => Rb_N,
					 immed_x2 => immed_x2,
					 word_byte => w_b,
					 sequencing_mode => sequencing_mode);
	
	m0: multi
		PORT MAP(clk => clk,
					boot => boot,
					ldpc_l => ldpc_l,
					wrd_l => wrd_l,
					wr_m_l => wr_m_l,
					w_b => w_b,
					ldpc => ldpc,
					wrd  => wrd,
					wr_m => wr_m,
					ldir => ldir,
					ins_dad => ins_dad,
					word_byte => word_byte);
	
	PROCESS(clk)
		VARIABLE pc_reg: STD_LOGIC_VECTOR(15 DOWNTO 0);
		VARIABLE booted: STD_LOGIC := '0';
	BEGIN
		IF rising_edge(clk) THEN
			IF booted = '1' and ldpc = '1' THEN
				CASE sequencing_mode IS
					WHEN IMPLICIT => pc_reg := pc_reg + 2;
					WHEN RELATIVE => pc_reg := STD_LOGIC_VECTOR(signed(unsigned(pc_reg)) + 2 + signed(immediate(7 DOWNTO 0)));
					WHEN ABSOLUTE => pc_reg := alu_out;
				END CASE;
			ELSIF boot = '1' THEN
				pc_reg := x"C000";
				booted := '1';
			END IF;
		END IF;
		
		pc <= pc_reg;
	END PROCESS;
	
	PROCESS(clk)
	BEGIN
		IF rising_edge(clk) THEN
			IF ldir = '1' THEN
				ir <= datard_m;
			ELSIF boot = '1' THEN
				ir <= (others => '0');
			END IF;
		END IF;
	END PROCESS;
END Structure;