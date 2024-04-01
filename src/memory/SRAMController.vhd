library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SRAMController is
    port (clk         : in    std_logic;
		  proc_clk	  : in    std_logic; -- necesario para sincronizar las dos unidades
          -- señales para la placa de desarrollo
          SRAM_ADDR   : out   std_logic_vector(17 downto 0);
          SRAM_DQ     : inout std_logic_vector(15 downto 0);
          SRAM_UB_N   : out   std_logic;
          SRAM_LB_N   : out   std_logic;
          SRAM_CE_N   : out   std_logic;
          SRAM_OE_N   : out   std_logic;
          SRAM_WE_N   : out   std_logic;
          -- señales internas del procesador
          address     : in    std_logic_vector(15 downto 0) := "0000000000000000";
          dataReaded  : out   std_logic_vector(15 downto 0);
          dataToWrite : in    std_logic_vector(15 downto 0);
          WR          : in    std_logic;
          byte_m      : in    std_logic := '0');
end SRAMController;

architecture comportament of SRAMController is

	TYPE state_t IS (IDLE, SETUP, WRITE, STOP);
	SIGNAL state: state_t := IDLE;
begin

	SRAM_CE_N <= '0';
	SRAM_OE_N <= '0';

	SRAM_ADDR <= "000" & address(15 DOWNTO 1);
	SRAM_UB_N <= not address(0) WHEN byte_m = '1' ELSE '0';
	SRAM_LB_N <= address(0) WHEN byte_m = '1' ELSE '0';

	PROCESS (clk)
	BEGIN
		
		IF rising_edge(clk) THEN
			CASE state IS
				WHEN IDLE => IF proc_clk = '0' THEN state <= SETUP; END IF;
				WHEN SETUP => state <= WRITE;
				WHEN WRITE => state <= STOP;
				WHEN STOP => state <= IDLE;
			END CASE;
		END IF;

	END PROCESS;

	PROCESS (state, WR, byte_m, dataToWrite, address(0), SRAM_DQ)
	BEGIN

		CASE state IS
			WHEN IDLE =>
				SRAM_WE_N <= '1';

			WHEN SETUP =>
				SRAM_WE_N <= '1';

				IF WR = '1' THEN
					IF byte_m = '1' THEN
						SRAM_DQ <= dataToWrite(7 DOWNTO 0) & dataToWrite(7 DOWNTO 0);
					ELSE
						SRAM_DQ <= dataToWrite;
					END IF;
				ELSE
					SRAM_DQ <= (others => 'Z');
				END IF;

			WHEN WRITE =>
				SRAM_WE_N <= not WR;

			WHEN STOP =>
				SRAM_WE_N <= '1';

				IF byte_m = '1' and address(0) = '0' THEN
					dataReaded <= STD_LOGIC_VECTOR(resize(signed(SRAM_DQ(7 DOWNTO 0)), 16));
				ELSIF byte_m = '1' and address(0) = '1' THEN
					dataReaded <= STD_LOGIC_VECTOR(resize(signed(SRAM_DQ(15 DOWNTO 8)), 16));
				ELSE
					dataReaded <= SRAM_DQ;
				END IF;
		END CASE;

	END PROCESS;

	-- PROCESS (clk)
	-- BEGIN
	-- 	IF rising_edge(clk) and state = OPERATE THEN

	-- 	ELSIF falling_edge(clk) and state = OPERATE THEN
	-- 		SRAM_WE_N <= not WR;
			
	-- 		IF WR = '1' THEN
	-- 			IF byte_m = '1' THEN
	-- 				SRAM_DQ <= dataToWrite(7 DOWNTO 0) & dataToWrite(7 DOWNTO 0);
	-- 			ELSE
	-- 				SRAM_DQ <= dataToWrite;
	-- 			END IF;
	-- 		ELSE
	-- 			SRAM_DQ <= (others => 'Z');
	-- 		END IF;
	-- 	ELSIF rising_edge(clk) and state = IDLE THEN
	-- 		SRAM_WE_N <= '1';
	-- 	END IF;
	-- END PROCESS;

	-- PROCESS (clk)
	-- BEGIN
	-- 	IF rising_edge(clk) THEN
	-- 		CASE state IS
	-- 			WHEN IDLE3 => state <= IDLE2;
	-- 			WHEN IDLE2 => state <= IDLE1;
	-- 			WHEN IDLE1 => state <= IDLE0;
	-- 			WHEN IDLE0 => state <= IDLE;

	-- 			WHEN IDLE => 
	-- 				IF WR = '0' THEN 
	-- 					state <= READ_SETUP;
	-- 				ELSE
	-- 					state <= WRITE_SETUP;
	-- 				END IF;
	-- 			WHEN READ_SETUP => state <= READ_ACQUIRE;
	-- 			WHEN READ_ACQUIRE => state <= READ_PROVIDE;
	-- 			WHEN READ_PROVIDE => state <= IDLE3;
	-- 			WHEN WRITE_SETUP => state <= WRITE_START;
	-- 			WHEN WRITE_START => state <= WRITE_END;
	-- 			WHEN WRITE_END => state <= IDLE3;
	-- 		END CASE;
	-- 	END IF;
		
		
	-- END PROCESS;
	
	-- PROCESS (state)
	-- 	VARIABLE read_buff: STD_LOGIC_VECTOR(15 DOWNTO 0);
	-- BEGIN
	-- 	CASE state IS
	-- 		WHEN IDLE3 =>
	-- 			SRAM_WE_N <= '1';
	-- 		WHEN IDLE2 =>
	-- 		WHEN IDLE1 =>
	-- 		WHEN IDLE0 =>
	-- 		WHEN IDLE =>

	-- 		WHEN READ_SETUP =>
	-- 			SRAM_UB_N <= '0';
	-- 			SRAM_LB_N <= '0';
	-- 			SRAM_ADDR <= "000" & address(15 DOWNTO 1);
	-- 			SRAM_DQ <= (OTHERS => 'Z');
	-- 		WHEN READ_ACQUIRE =>
	-- 			IF byte_m = '1' and address(0) = '0' THEN
	-- 				read_buff := STD_LOGIC_VECTOR(resize(signed(SRAM_DQ(7 DOWNTO 0)), 16));
	-- 			ELSIF byte_m = '1' and address(0) = '1' THEN
	-- 				read_buff := STD_LOGIC_VECTOR(resize(signed(SRAM_DQ(15 DOWNTO 8)), 16));
	-- 			ELSE
	-- 				read_buff := SRAM_DQ;
	-- 			END IF;
	-- 		WHEN READ_PROVIDE =>
	-- 			dataReaded <= read_buff;

	-- 		WHEN WRITE_SETUP =>
	-- 			IF byte_m = '1' THEN
	-- 				SRAM_UB_N <= not address(0);
	-- 				SRAM_LB_N <= address(0);
	-- 				SRAM_DQ <= dataToWrite(7 DOWNTO 0) & dataToWrite(7 DOWNTO 0);
	-- 			ELSE
	-- 				SRAM_UB_N <= '0';
	-- 				SRAM_LB_N <= '0';
	-- 				SRAM_DQ <= dataToWrite;
	-- 			END IF;

	-- 			SRAM_ADDR <= "000" & address(15 DOWNTO 1);
	-- 		WHEN WRITE_START =>
	-- 			SRAM_WE_N <= '0';
	-- 		WHEN WRITE_END =>
	-- 			SRAM_WE_N <= '1';
	-- 	END CASE;
	-- END PROCESS;



end comportament;
