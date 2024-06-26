LIBRARY ieee;
USE ieee.std_logic_1164.all;

USE work.control_l_defs.sequencing_mode_t;
USE work.control_l_defs.regfile_input_1_t;

PACKAGE control_unit_components IS

    COMPONENT control_l IS
        PORT (ir     		: IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
            z			: IN STD_LOGIC;
            system     : IN STD_LOGIC;
            op_group	: OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
         op     		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
         ldpc   		: OUT STD_LOGIC;
         wrd_1  		: OUT STD_LOGIC;
         addr_a 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            addr_b 		: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
         addr_d_1 	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            addr_d_2 	: OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
         immed  		: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            wr_m	  		: OUT STD_LOGIC;
            regfile_input: OUT regfile_input_1_t;
            Rb_N			: OUT STD_LOGIC;
            immed_x2	: OUT STD_LOGIC;
            sel_reg_out: OUT STD_LOGIC;
            word_byte	: OUT STD_LOGIC;
            sequencing_mode: OUT sequencing_mode_t;
            addr_io: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            rd_in: OUT STD_LOGIC;
            wr_out: OUT STD_LOGIC;
            d_sys:	OUT STD_LOGIC;
            wrd_2 : OUT STD_LOGIC;
            inta : OUT STD_LOGIC;
            mux_regS : OUT STD_LOGIC;
            tipo_int : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            invalid_inst : OUT STD_LOGIC;
            may_divide : OUT STD_LOGIC;
            memory_access : OUT STD_LOGIC;
            inst_privilege_level : OUT STD_LOGIC;
            calls : OUT STD_LOGIC;
						wr_tlb_ins_dad : OUT STD_LOGIC;
						wr_tlb_virt_phys : OUT STD_LOGIC;
						wr_tlb_we : OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT multi is
        port(clk       : IN  STD_LOGIC;
            boot      : IN  STD_LOGIC;
            ldpc_l    : IN  STD_LOGIC;
            wrd_1_l     : IN  STD_LOGIC;
            wrd_2_l   : IN STD_LOGIC;
            wr_m_l    : IN  STD_LOGIC;
            w_b       : IN  STD_LOGIC;
            inta_l    : IN  STD_LOGIC;
            memory_access_l : IN STD_LOGIC;
               chg_mode  : OUT STD_LOGIC;
            ldpc      : OUT STD_LOGIC;
            wrd_1       : OUT STD_LOGIC;
            wrd_2		 : OUT STD_LOGIC;
            wr_m      : OUT STD_LOGIC;
            ldir      : OUT STD_LOGIC;
            ins_dad   : OUT STD_LOGIC;
            word_byte : OUT STD_LOGIC;
               excp: IN STD_LOGIC;
            inta      : OUT STD_LOGIC;
            memory_access: OUT STD_LOGIC;
            in_demw: OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT regfile IS
    PORT (  clk     : IN  STD_LOGIC;
            wrd     : IN  STD_LOGIC;
            d       : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
            addr_a  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            addr_b  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            addr_d  : IN  STD_LOGIC_VECTOR(2 DOWNTO 0);
            a       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            b       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
    END COMPONENT;

    COMPONENT unidad_control IS
        PORT (  boot        : IN  STD_LOGIC;
                clk         : IN  STD_LOGIC;
                datard_m    : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
                alu_out     : IN	 STD_LOGIC_VECTOR(15 DOWNTO 0);
                z           : IN  STD_LOGIC;
					 op_group	 : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
                op          : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                wrd_1       : OUT STD_LOGIC;
                addr_a      : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_b      : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
                addr_d_1    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
					 addr_d_2    : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
					 clear		 : OUT STD_LOGIC;
					 chg_mode	 : OUT STD_LOGIC;
                immed       : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
					 d_sys		 : OUT STD_LOGIC;
					 wrd_2 		 : OUT STD_LOGIC;
                pc          : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                ins_dad     : OUT STD_LOGIC;
                regfile_input : OUT regfile_input_1_t;
					 Rb_N			 : OUT STD_LOGIC;
                immed_x2    : OUT STD_LOGIC;
					 sel_reg_out : OUT STD_LOGIC;
                wr_m        : OUT STD_LOGIC;
                word_byte : OUT STD_LOGIC;
                addr_io: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                rd_in: OUT STD_LOGIC;
                wr_out: OUT STD_LOGIC;
					 inta : OUT STD_LOGIC;
					 mux_regS : OUT STD_LOGIC;
					 tipo_int : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
					 invalid_inst : OUT STD_LOGIC;
            may_divide : OUT STD_LOGIC;
                     memory_access : OUT STD_LOGIC;
					 excp : IN STD_LOGIC;
                inst_privilege_level: OUT STD_LOGIC;
                calls: OUT STD_LOGIC;
                in_demw: OUT STD_LOGIC;
                kill_writes: IN STD_LOGIC;
    						wr_tlb_ins_dad : OUT STD_LOGIC;
    						wr_tlb_virt_phys : OUT STD_LOGIC;
    						wr_tlb_we : OUT STD_LOGIC);
    END COMPONENT;
END PACKAGE;
