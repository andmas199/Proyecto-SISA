library ieee;
USE ieee.std_logic_1164.all;

entity multi is
    port(clk       : IN  STD_LOGIC;
         boot      : IN  STD_LOGIC;
         ldpc_l    : IN  STD_LOGIC;
         wrd_l     : IN  STD_LOGIC;
         wr_m_l    : IN  STD_LOGIC;
         w_b       : IN  STD_LOGIC;
			intr		 : IN  STD_LOGIC;
			chg_mode  : OUT STD_LOGIC;
         ldpc      : OUT STD_LOGIC;
         wrd       : OUT STD_LOGIC;
         wr_m      : OUT STD_LOGIC;
         ldir      : OUT STD_LOGIC;
         ins_dad   : OUT STD_LOGIC;
         word_byte : OUT STD_LOGIC;
			intr_enabl: IN STD_LOGIC);
			
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
					IF intr = '1' and intr_enabl = '1' THEN
						state <= SYSTEM;
					ELSE
						state <= F;
					END IF;
				WHEN SYSTEM =>
					state <= F;
			END CASE;
		END IF;
	END PROCESS;

	PROCESS (state, ldpc_l, wrd_l, wr_m_l, w_b)
	BEGIN
		CASE state IS
			WHEN F =>
				ldpc <= '0';
				wrd <= '0';
				wr_m <= '0';
				word_byte <= '0';
				ins_dad <= '0';
				ldir <= '1';
				chg_mode <= '0';
			WHEN DEMW =>
				ldpc <= ldpc_l;
				wrd <= wrd_l;
				wr_m <= wr_m_l;
				word_byte <= w_b;
				ins_dad <= '1';
				ldir <= '0';
				chg_mode <= '0';
			WHEN SYSTEM =>
				ldpc <= '0';
				wrd <= '1';
				wr_m <= '0';
				word_byte <= '0';
				ins_dad <= '0';
				ldir <= '0';
				chg_mode <= '1';
			
		END CASE;
	END PROCESS;
end Structure;
