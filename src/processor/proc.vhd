LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.control_l_defs.regfile_input_1_t;
USE work.datapath_components.all;
USE work.control_unit_components.unidad_control;
USE work.exception_unit_components.all;
USE work.memory_management_unit_components.all;

ENTITY proc IS
    PORT (clk       : IN  STD_LOGIC;
          boot      : IN  STD_LOGIC;
          datard_m  : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
			 intr		  : IN STD_LOGIC;
          addr_m    : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          data_wr   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          wr_m      : OUT STD_LOGIC;
          word_byte : OUT STD_LOGIC;
		  addr_io   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		  rd_io		: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		  wr_io		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		  rd_in		: OUT STD_LOGIC;
		  wr_out	: OUT STD_LOGIC;
		  inta : OUT STD_LOGIC;
		  bad_alignment : IN STD_LOGIC);
END proc;


ARCHITECTURE Structure OF proc IS
	
	SIGNAL op_groupS : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL op :			STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL wrd_1	:	STD_LOGIC;
	SIGNAL addr_a :	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL addr_b :	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL addr_d_1 :	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL addr_d_2 :	STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL chg_mode : STD_LOGIC;
	SIGNAL immed :		STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL d_sys :		STD_LOGIC;
	SIGNAL wrd_2 :		STD_LOGIC;
	SIGNAL immed_x2: 	STD_LOGIC;
	SIGNAL sel_reg_out:STD_LOGIC;
	SIGNAL ins_dad:	STD_LOGIC;
	SIGNAL Rb_N :		STD_LOGIC;
	SIGNAL pc:			STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL regfile_input : regfile_input_1_t;
	SIGNAL alu_out : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL z : STD_LOGIC;
	SIGNAL clear : STD_LOGIC;
	SIGNAL intr_enabl: STD_LOGIC;
	SIGNAL div_zero : STD_LOGIC;
	SIGNAL mux_regS : STD_LOGIC;
	SIGNAL exc_code : STD_LOGIC_VECTOR(3 DOWNTO 0);
	SIGNAL invalid_inst : STD_LOGIC;
	SIGNAL memory_access : STD_LOGIC;
	SIGNAL excp : STD_LOGIC;
	SIGNAL virt_addr: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL proc_privilege_level: STD_LOGIC;
	SIGNAL inst_privilege_level: STD_LOGIC;
	SIGNAL protected_inst: STD_LOGIC;
	SIGNAL mmu_accessible: STD_LOGIC;
	SIGNAL calls: STD_LOGIC;
BEGIN
	e0: datapath
		PORT MAP	(	 clk => clk,
						 op_group => op_groupS,
						 op => op,
						 wrd_1 => wrd_1,
						 addr_a => addr_a,
						 addr_b => addr_b,
						 addr_d_1 => addr_d_1,
						 addr_d_2 => addr_d_2,
						 chg_mode => chg_mode,
						 immed => immed,
						 immed_x2 => immed_x2,
						 clear => clear,
						 d_sys	=> d_sys,
						 wrd_2 => wrd_2,
						 sel_reg_out => sel_reg_out,
						 datard_m => datard_m,
						 ins_dad => ins_dad,
						 Rb_N => Rb_N,
						 pc => pc,
						 regfile_input => regfile_input,
						 addr_m => virt_addr,
						 data_wr => data_wr,
						 alu_out => alu_out,
						 z => z,
						 rd_io => rd_io,
						 wr_io => wr_io,
						 intr_enabl => intr_enabl,
						 div_zero => div_zero,
						 mux_regS => mux_regS,
						 exc_code => exc_code,
						 proc_privilege_level => proc_privilege_level
		);
	
	co: unidad_control
		PORT MAP	(	 boot => boot,
						 clk => clk,
						 datard_m => datard_m,
						 op_group => op_groupS,
						 op => op,
						 wrd_1 => wrd_1,
						 addr_a => addr_a,
						 addr_b => addr_b,
						 addr_d_1 => addr_d_1,
						 addr_d_2 => addr_d_2,
						 clear => clear,
						 chg_mode => chg_mode,
						 immed => immed,
						 d_sys => d_sys,
						 wrd_2 => wrd_2,
						 Rb_N => Rb_N,
						 pc => pc,
						 ins_dad => ins_dad,
						 regfile_input => regfile_input,
						 immed_x2 => immed_x2,
						 sel_reg_out => sel_reg_out,
						 wr_m => wr_m,
						 word_byte => word_byte,
						 alu_out => alu_out,
						 z => z,
						 addr_io => addr_io,
						 rd_in => rd_in,
						 wr_out => wr_out,
						 inta => inta,
						 mux_regS => mux_regS,
						 tipo_int => exc_code,
						 invalid_inst => invalid_inst,
						 memory_access => memory_access,
						 excp => excp,
						 inst_privilege_level => inst_privilege_level,
						 calls => calls);
	
	exc0: exception_controller
		PORT MAP (
			clk => clk,
			invalid_inst => invalid_inst or (calls and inst_privilege_level),
			bad_alignment => bad_alignment and memory_access,
			div_zero => div_zero,
			protected_mem => not mmu_accessible and memory_access,
			protected_inst => protected_inst,
			calls => calls, -- We ignore validity here as invalid instruction takes higher preference
			intr => intr,
			intr_enabl => intr_enabl,
			exc_code => exc_code,
			excp => excp);
	
	mmu0: mmu
		PORT MAP (
			virt_addr => virt_addr,
			proc_privilege_level => proc_privilege_level,
			phys_addr => addr_m,
			-- present => ignored,
			accessible => mmu_accessible
			-- writable => ignored
		);
	
	protected_inst <= '1' WHEN inst_privilege_level > proc_privilege_level ELSE '0';
END Structure;