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
	SIGNAL calls: STD_LOGIC;
	SIGNAL interrupt: STD_LOGIC;
	SIGNAL in_demw: STD_LOGIC;
	SIGNAL kill_writes: STD_LOGIC;
	SIGNAL wr_m_uc: STD_LOGIC;
	SIGNAL rd_in_uc: STD_LOGIC;
	SIGNAL wr_out_uc: STD_LOGIC;
	SIGNAL inta_uc: STD_LOGIC;
	SIGNAL miss_tlb: STD_LOGIC;
	SIGNAL accessible_tlb: STD_LOGIC;
	SIGNAL present_tlb: STD_LOGIC;
	SIGNAL writable_tlb: STD_LOGIC;
	SIGNAL wr_tlb_ins_dad: STD_LOGIC;
	SIGNAL wr_tlb_virt_phys: STD_LOGIC;
	SIGNAL wr_tlb_we: STD_LOGIC;
BEGIN
	e0: datapath
		PORT MAP	(	 clk => clk,
						 op_group => op_groupS,
						 op => op,
						 wrd_1 => wrd_1 and not kill_writes,
						 addr_a => addr_a,
						 addr_b => addr_b,
						 addr_d_1 => addr_d_1,
						 addr_d_2 => addr_d_2,
						 chg_mode => chg_mode,
						 immed => immed,
						 immed_x2 => immed_x2,
						 clear => clear,
						 d_sys	=> d_sys,
						 wrd_2 => wrd_2 and not kill_writes,
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
						 wr_m => wr_m_uc,
						 word_byte => word_byte,
						 alu_out => alu_out,
						 z => z,
						 addr_io => addr_io,
						 rd_in => rd_in_uc,
						 wr_out => wr_out_uc,
						 inta => inta_uc,
						 mux_regS => mux_regS,
						 tipo_int => exc_code,
						 invalid_inst => invalid_inst,
						 memory_access => memory_access,
						 excp => excp,
						 inst_privilege_level => inst_privilege_level,
						 calls => calls,
						 in_demw => in_demw,
						 kill_writes => kill_writes,
						 wr_tlb_ins_dad => wr_tlb_ins_dad,
						 wr_tlb_virt_phys => wr_tlb_virt_phys,
						 wr_tlb_we => wr_tlb_we);
	
	exc0: exception_controller
		PORT MAP (
			clk => clk,
			invalid_inst => invalid_inst or (calls and proc_privilege_level),
			bad_alignment => bad_alignment and memory_access,
			div_zero => div_zero,
			ins_dad => ins_dad,
			miss_tlb => miss_tlb and memory_access,
			invalid_tlb => not present_tlb and memory_access,
			protected_tlb => not accessible_tlb and memory_access,
			readonly_tlb => not writable_tlb and memory_access and wr_m_uc,
			protected_inst => protected_inst,
			calls => calls, -- We ignore validity here as invalid instruction takes higher preference
			intr => intr,
			intr_enabl => intr_enabl,
			exc_code => exc_code,
			excp => excp,
			interrupt => interrupt);
	
	mmu0: mmu
		PORT MAP (
			clk => clk,
			boot => boot,
			virt_addr => virt_addr,
			proc_privilege_level => proc_privilege_level,
			ins_dad => ins_dad,
			wr_tlb_ins_dad => wr_tlb_ins_dad,
			wr_tlb_virt_phys => wr_tlb_virt_phys,
			wr_tlb_index => alu_out(3 downto 0),
			wr_tlb_data => alu_out(13 downto 8),
			wr_tlb_we => wr_tlb_we,
			miss => miss_tlb,
			phys_addr => addr_m,
			present => present_tlb,
			accessible => accessible_tlb,
			writable => writable_tlb
		);
	
	protected_inst <= '1' WHEN inst_privilege_level > proc_privilege_level ELSE '0';
	
	kill_writes <= in_demw and excp and not interrupt and not calls;
	wr_m <= wr_m_uc and not kill_writes;
	rd_in <= rd_in_uc and not kill_writes;
	wr_out <= wr_out_uc and not kill_writes;
	inta <= inta_uc and not kill_writes;
END Structure;
