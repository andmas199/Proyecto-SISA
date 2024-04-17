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

	TYPE state_t IS (IDLE, WRITE, DONE);
	SIGNAL state: state_t := IDLE;
begin

	SRAM_CE_N <= '0';
	SRAM_OE_N <= '0';

	SRAM_ADDR <= "000" & address(15 DOWNTO 1);
	SRAM_UB_N <= not address(0) WHEN byte_m = '1' ELSE '0';
	SRAM_LB_N <= address(0) WHEN byte_m = '1' ELSE '0';

	dataReaded <= STD_LOGIC_VECTOR(resize(signed(SRAM_DQ(7 DOWNTO 0)), 16)) WHEN byte_m = '1' and address(0) = '0' ELSE
								STD_LOGIC_VECTOR(resize(signed(SRAM_DQ(15 DOWNTO 8)), 16)) WHEN byte_m = '1' and address(0) = '1' ELSE
								SRAM_DQ;

	SRAM_WE_N <= not WR WHEN state = WRITE ELSE '1';

	SRAM_DQ(7 DOWNTO 0) <= dataToWrite(7 DOWNTO 0) WHEN WR = '1' and (byte_m = '0' or address(0) = '0') ELSE
												 (others => 'Z');

	SRAM_DQ(15 DOWNTO 8) <= dataToWrite(7 DOWNTO 0) WHEN WR = '1' and byte_m = '1' and address(0) = '1' ELSE
													dataToWrite(15 DOWNTO 8) WHEN WR = '1' and byte_m = '0' ELSE
													(others => 'Z');

	PROCESS (clk)
	BEGIN
		
		IF rising_edge(clk) THEN
			CASE state IS
				WHEN IDLE => IF WR = '1' THEN state <= WRITE; ELSE state <= IDLE; END IF;
				WHEN WRITE => state <= DONE;
				WHEN DONE => IF WR = '0' THEN state <= IDLE; ELSE state <= DONE; END IF;
			END CASE;
		END IF;

	END PROCESS;
end comportament;