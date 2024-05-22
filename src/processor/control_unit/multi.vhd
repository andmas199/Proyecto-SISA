library ieee;
USE ieee.std_logic_1164.all;

entity multi is
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
		 memory_access: OUT STD_LOGIC);
			
end entity;

architecture Structure of multi is

	type state_t is (F, DEMW, SYSTEM);
	
	signal state: state_t;

begin

	PROCESS (clk, boot)
	BEGIN
		IF boot = '1' THEN
			state <= F;
		ELSIF rising_edge(clk) THEN
			CASE state IS
				WHEN F =>
					state <= DEMW;
				WHEN DEMW =>
					IF excp = '1' THEN
						state <= SYSTEM;
					ELSE
						state <= F;
					END IF;
				WHEN SYSTEM =>
					state <= F;
			END CASE;
		END IF;
	END PROCESS;

	PROCESS (state, ldpc_l, wrd_1_l, wrd_2_l, wr_m_l, w_b, inta_l, memory_access_l)
	BEGIN
		CASE state IS
			WHEN F =>
				ldpc <= '0';
				wrd_1 <= '0';
				wrd_2 <= '0';
				wr_m <= '0';
				word_byte <= '0';
				ins_dad <= '0';
				ldir <= '1';
				inta <= '0';
				chg_mode <= '0';
				memory_access <= '1';
			WHEN DEMW =>
				ldpc <= ldpc_l;
				wrd_1 <= wrd_1_l;
				wrd_2 <= wrd_2_l;
				wr_m <= wr_m_l;
				word_byte <= w_b;
				ins_dad <= '1';
				ldir <= '0';
				inta <= inta_l;
				chg_mode <= '0';
				memory_access <= memory_access_l;
			WHEN SYSTEM =>
				ldpc <= ldpc_l;
				wrd_1 <= wrd_1_l;
				wrd_2 <= wrd_2_l;
				wr_m <= '0';
				word_byte <= '0';
				ins_dad <= '0';
				ldir <= '0';
				inta <= '0';
				chg_mode <= '1';
				memory_access <= memory_access_l;
		END CASE;
	END PROCESS;
end Structure;
