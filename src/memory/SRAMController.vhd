library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity sramcontroller is
  port (
    clk : in    std_logic;
    -- se�ales para la placa de desarrollo
    sram_addr : out   std_logic_vector(17 downto 0);
    sram_dq   : inout std_logic_vector(15 downto 0);
    sram_ub_n : out   std_logic;
    sram_lb_n : out   std_logic;
    sram_ce_n : out   std_logic;
    sram_oe_n : out   std_logic;
    sram_we_n : out   std_logic;
    -- se�ales internas del procesador
    address     : in    std_logic_vector(15 downto 0) := "0000000000000000";
    datareaded  : out   std_logic_vector(15 downto 0);
    datatowrite : in    std_logic_vector(15 downto 0);
    wr          : in    std_logic;
    byte_m      : in    std_logic                     := '0'
  );
end entity sramcontroller;

architecture comportament of sramcontroller is

  type state_t is (idle, write, done);

  signal state : state_t := idle;

begin

  sram_ce_n <= '0';
  sram_oe_n <= '0';

  sram_addr <= "000" & address(15 downto 1);
  sram_ub_n <= not address(0) when byte_m = '1' else
               '0';
  sram_lb_n <= address(0) when byte_m = '1' else
               '0';

  datareaded <= std_logic_vector(resize(signed(sram_dq(7 downto 0)), 16)) when byte_m = '1' and address(0) = '0' else
                std_logic_vector(resize(signed(sram_dq(15 downto 8)), 16)) when byte_m = '1' and address(0) = '1' else
                sram_dq;

  sram_we_n <= not wr when state = write else
               '1';

  SRAM_DQ(7 DOWNTO 0) <= datatowrite(7 downto 0) when wr = '1' and (byte_m = '0' or address(0) = '0') else
                         (others => 'Z');

  SRAM_DQ(15 DOWNTO 8) <= datatowrite(7 downto 0) when wr = '1' and byte_m = '1' and address(0) = '1' else
                          datatowrite(15 downto 8) when wr = '1' and byte_m = '0' else
                          (others => 'Z');

  process (clk) is
  begin

    if rising_edge(clk) then

      case state is

        when idle =>

          if (wr = '1') then
            state <= write;
          else
            state <= idle;
          end if;

        when write =>

          state <= done;

        when done =>

          if (wr = '0') then
            state <= idle;
          else
            state <= done;
          end if;

      end case;

    end if;

  end process;

end architecture comportament;
