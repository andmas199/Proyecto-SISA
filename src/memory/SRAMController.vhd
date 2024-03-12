library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SRAMController is
    port (clk         : in    std_logic;
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

	TYPE state_t IS (IDLE, READ_SETUP, READ_ACQUIRE, READ_PROVIDE, WRITE_SETUP, WRITE_START, WRITE_END);
	SIGNAL state: state_t := IDLE;
	
begin

	SRAM_CE_N <= '0';
	SRAM_OE_N <= '0';

	PROCESS (clk)
	BEGIN
		
		IF rising_edge(clk) THEN
			CASE state IS
				WHEN IDLE => 
					IF WR = '0' THEN 
						state <= READ_SETUP;
					ELSE
						state <= WRITE_SETUP;
					END IF;
				WHEN READ_SETUP => state <= READ_ACQUIRE;
				WHEN READ_ACQUIRE => state <= READ_PROVIDE;
				WHEN READ_PROVIDE => state <= IDLE;
				WHEN WRITE_SETUP => state <= WRITE_START;
				WHEN WRITE_START => state <= WRITE_END;
				WHEN WRITE_END => state <= IDLE;
			END CASE;
		END IF;
		
		
	END PROCESS;
	
	PROCESS (state)
		VARIABLE read_buff: STD_LOGIC_VECTOR(15 DOWNTO 0);
	BEGIN
		CASE state IS
			WHEN IDLE =>
				SRAM_WE_N <= '1';

			WHEN READ_SETUP =>
				SRAM_UB_N <= '0';
				SRAM_LB_N <= '0';
				SRAM_ADDR <= "000" & address(15 DOWNTO 1);
				SRAM_DQ <= (OTHERS => 'Z');
			WHEN READ_ACQUIRE =>
				IF byte_m = '1' and address(0) = '0' THEN
					read_buff := STD_LOGIC_VECTOR(resize(signed(SRAM_DQ(7 DOWNTO 0)), 16));
				ELSIF byte_m = '1' and address(0) = '1' THEN
					read_buff := STD_LOGIC_VECTOR(resize(signed(SRAM_DQ(15 DOWNTO 8)), 16));
				ELSE
					read_buff := SRAM_DQ;
				END IF;
			WHEN READ_PROVIDE =>
				dataReaded <= read_buff;

			WHEN WRITE_SETUP =>
				IF byte_m = '1' THEN
					SRAM_UB_N <= not address(0);
					SRAM_LB_N <= address(0);
					SRAM_DQ <= dataToWrite(7 DOWNTO 0) & dataToWrite(7 DOWNTO 0);
				ELSE
					SRAM_UB_N <= '0';
					SRAM_LB_N <= '0';
					SRAM_DQ <= dataToWrite;
				END IF;

				SRAM_ADDR <= "000" & address(15 DOWNTO 1);
			WHEN WRITE_START =>
				SRAM_WE_N <= '0';
			WHEN WRITE_END =>
				SRAM_WE_N <= '1';
		END CASE;
	END PROCESS;

end comportament;
