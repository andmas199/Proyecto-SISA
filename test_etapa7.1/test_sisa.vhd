library ieee;
   use ieee.std_logic_1164.all;


entity test_sisa is
end test_sisa;

architecture comportament of test_sisa is
   component async_64Kx16 is
		generic
			(ADDR_BITS		: integer := 16;
			DATA_BITS		: integer := 16;
			depth 			: integer := 65536;
			
			TimingInfo		: BOOLEAN := TRUE;
			TimingChecks	: std_logic := '1'
			);
		Port (
			CE_b    : IN Std_Logic;	                                                -- Chip Enable CE#
			WE_b  	: IN Std_Logic;	                                                -- Write Enable WE#
			OE_b  	: IN Std_Logic;                                                 -- Output Enable OE#
			BHE_b	: IN std_logic;                                                 -- Byte Enable High BHE#
			BLE_b   : IN std_logic;                                                 -- Byte Enable Low BLE#
			A 		: IN Std_Logic_Vector(addr_bits-1 downto 0);                    -- Address Inputs A
			DQ		: INOUT Std_Logic_Vector(DATA_BITS-1 downto 0):=(others=>'Z');   -- Read/Write Data IO
			boot    : in std_logic
			); 
   end component;
   
   component sisa IS 
	PORT (CLOCK_50  : IN    STD_LOGIC;
		SRAM_ADDR : out   std_logic_vector(17 downto 0);
		SRAM_DQ   : inout std_logic_vector(15 downto 0);
		SRAM_UB_N : out   std_logic;
		SRAM_LB_N : out   std_logic;
		SRAM_CE_N : out   std_logic := '1';
		SRAM_OE_N : out   std_logic := '1';
		SRAM_WE_N : out   std_logic := '1';
		LEDG      : out   std_logic_vector(7 downto 0);
		LEDR      : out   std_logic_vector(7 downto 0);
		KEY       : in std_logic_vector(3 downto 0);
		SW        : in std_logic_vector(9 downto 0);
		HEX0      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX1      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX2      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		HEX3      : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
		PS2_CLK   : INOUT std_logic;
		PS2_DAT   : INOUT std_logic;
		BLANK_OUT      : OUT STD_LOGIC;
		CSYNC_OUT      : OUT STD_LOGIC;
		VGA_R        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		VGA_G      : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		VGA_B       : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		VGA_HS : OUT STD_LOGIC;
		VGA_VS  : OUT STD_LOGIC);
   end component;

   
   -- Registres (entrades) i cables
   signal clk           : std_logic := '0';
   signal reset_ram    	: std_logic := '0';
   signal reset_proc    : std_logic := '0';

   signal addr_SoC      : std_logic_vector(17 downto 0);
   signal addr_mem      : std_logic_vector(15 downto 0);
   signal data_mem      : std_logic_vector(15 downto 0);

   signal ub_m           : std_logic;
   signal lb_m           : std_logic;
   signal ce_m           : std_logic;
   signal oe_m           : std_logic;
   signal we_m           : std_logic;
   signal ce_m2           : std_logic;

   signal botones      : std_logic_vector(9 downto 0);

   signal LEDG : std_logic_vector(7 downto 0);
   signal LEDR : std_logic_vector(7 downto 0);
   signal HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
   signal HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
   signal HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
   signal HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);

	
begin
   
   ce_m2 <= '1', ce_m after 100 ns;
   -- Instanciacions de moduls
   SoC : sisa
      port map (
         CLOCK_50   => clk,
         SW        => botones,

         SRAM_ADDR => addr_SoC,
         SRAM_DQ   => data_mem,
	 SRAM_UB_N => ub_m,
	 SRAM_LB_N => lb_m,
	 SRAM_CE_N => ce_m,
	 SRAM_OE_N => oe_m,
	 SRAM_WE_N => we_m,
	 KEY	   => "0000",
	 LEDG	   => LEDG,
	 LEDR      => LEDR,
	 HEX0      => HEX0,
	 HEX1      => HEX1,
    	 HEX2      => HEX2,
	 HEX3      => HEX3			
      );

   mem0 : async_64Kx16
      port map (
				A 	 => addr_mem,
				DQ  => data_mem,
				
				--CE_b => ce_m,
				CE_b => ce_m2,
				OE_b => oe_m,
				WE_b => we_m,
				BLE_b => lb_m,
				BHE_b => ub_m,

				boot     => reset_ram
      );
	  

		addr_mem (15 downto 0) <= addr_SOC (15 downto 0);
		botones(9) <= reset_proc;
		
   -- Descripcio del comportament
	clk <= not clk after 10 ns;
	reset_ram <= '1' after 15 ns, '0' after 50 ns;    -- reseteamos la RAm en el primer ciclo
	reset_proc <= '1' after 25 ns, '0' after 320 ns;  -- reseteamos el procesador en el segundo ciclo

	
end comportament;


