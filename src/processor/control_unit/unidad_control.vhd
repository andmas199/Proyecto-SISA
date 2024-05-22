LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE ieee.std_logic_unsigned.all;

USE work.control_l_defs.all;
USE work.control_unit_components.control_l;
USE work.control_unit_components.multi;

ENTITY unidad_control IS
    PORT (boot      : IN  STD_LOGIC;
          clk       : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 alu_out   : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 z		     : IN  STD_LOGIC;
			 op_group  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
          op        : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          wrd_1     : OUT STD_LOGIC;
          addr_a    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_b    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
          addr_d_1  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			 addr_d_2  : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
			 clear	  : OUT STD_LOGIC;
			 chg_mode  : OUT STD_LOGIC;
          immed     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
			 d_sys	  : OUT STD_LOGIC;
			 wrd_2		  : OUT STD_LOGIC;
          pc        : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          ins_dad   : OUT STD_LOGIC;
          regfile_input : OUT regfile_input_1_t;
			 sel_reg_out : OUT STD_LOGIC;
			 Rb_N		  : OUT STD_LOGIC;	
          immed_x2  : OUT STD_LOGIC;
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
			 addr_io: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			 rd_in: OUT STD_LOGIC;
			 wr_out: OUT STD_LOGIC;
			 inta: OUT STD_LOGIC;
			 mux_regS : OUT STD_LOGIC;
			 tipo_int : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
			 invalid_inst : OUT STD_LOGIC;
			 memory_access : OUT STD_LOGIC;
			 excp : IN STD_LOGIC;
			 inst_privilege_level : OUT STD_LOGIC;
			 calls : OUT STD_LOGIC);
END unidad_control;

ARCHITECTURE Structure OF unidad_control IS
	SIGNAL ir: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL pc_reg: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL booted: STD_LOGIC := '0';

	SIGNAL ldpc_l: STD_LOGIC;
	SIGNAL wrd_1_l: STD_LOGIC;
	SIGNAL wrd_2_l: STD_LOGIC;
	SIGNAL wr_m_l: STD_LOGIC;
	SIGNAL w_b: STD_LOGIC;
	SIGNAL inta_l: STD_LOGIC;
	SIGNAL memory_access_l: STD_LOGIC;

	SIGNAL chg_mode_multi: STD_LOGIC;
	
	SIGNAL ldpc: STD_LOGIC;
	SIGNAL ldir: STD_LOGIC;

	SIGNAL immediate: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL sequencing_mode: sequencing_mode_t;
BEGIN

--------------------------------------
--              AVISO               --
--          MUY IMPORTANTE          --
--------------------------------------
-- No confundir el signal wrd_l con --
-- la salida wrd_l de la unidad de  --
-- control. La salida es el numero  --
-- uno y el signal la letra "ele"   --
--------------------------------------

	immed <= immediate;
	chg_mode <= chg_mode_multi;

	c0: control_l
		PORT MAP (ir => ir,
					 z => z,
					 system => chg_mode_multi,
					 op_group => op_group,
					 op => op,
					 ldpc => ldpc_l,
					 wrd_1 => wrd_1_l,
					 addr_a => addr_a,
					 addr_b => addr_b,
					 addr_d_1 => addr_d_1,
					 addr_d_2 => addr_d_2,
					 immed => immediate,
					 d_sys => d_sys,
					 wrd_2 => wrd_2_l,
					 wr_m => wr_m_l,
					 regfile_input => regfile_input,
					 Rb_N => Rb_N,
					 immed_x2 => immed_x2,
					 sel_reg_out => sel_reg_out,
					 word_byte => w_b,
					 sequencing_mode => sequencing_mode,
					 addr_io => addr_io,
					 rd_in => rd_in,
					 wr_out => wr_out,
					 inta => inta_l,
					 mux_regS => mux_regS,
					 tipo_int => tipo_int,
					 invalid_inst => invalid_inst,
					 memory_access => memory_access_l,
					 inst_privilege_level => inst_privilege_level,
					 calls => calls);
	
	m0: multi
		PORT MAP(clk => clk,
					boot => boot,
					ldpc_l => ldpc_l,
					wrd_1_l => wrd_1_l,
					wrd_2_l => wrd_2_l,
					wr_m_l => wr_m_l,
					w_b => w_b,
					inta_l => inta_l,
					memory_access_l => memory_access_l,
					chg_mode => chg_mode_multi,
					ldpc => ldpc,
					wrd_1  => wrd_1,
					wrd_2  => wrd_2,
					wr_m => wr_m,
					ldir => ldir,
					ins_dad => ins_dad,
					word_byte => word_byte,
					excp => excp,
					inta => inta,
					memory_access => memory_access);
	
	PROCESS(clk, pc_reg)
	BEGIN
		IF rising_edge(clk) THEN
			clear <= boot;
			IF booted = '1' and ldpc = '1' THEN
				CASE sequencing_mode IS
					WHEN IMPLICIT => pc_reg <= pc_reg + 2;
					WHEN RELATIVE => pc_reg <= STD_LOGIC_VECTOR(signed(unsigned(pc_reg)) + 2 + signed(immediate(7 DOWNTO 0) & '0'));
					WHEN ABSOLUTE => pc_reg <= alu_out;
				END CASE;
			ELSIF boot = '1' THEN
				pc_reg <= x"C000";
				booted <= '1';
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
