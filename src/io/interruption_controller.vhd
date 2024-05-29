library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity interruption_controller is
  generic (
    interruption_sources : natural
  );
  port (
    boot         : in    std_logic;
    clk          : in    std_logic;
    global_inta  : in    std_logic;
    devices_intr : in    std_logic_vector(interruption_sources - 1 downto 0);
    global_intr  : out   std_logic;
    devices_inta : out   std_logic_vector(interruption_sources - 1 downto 0);
    iid          : out   std_logic_vector(7 downto 0)
  );
end entity interruption_controller;

architecture rtl of interruption_controller is

  signal active_iid : unsigned(7 downto 0);

begin

  process (clk, boot, active_iid, global_inta, devices_intr) is
  begin

    if rising_edge(clk) then
      if (boot = '1') then
        devices_inta <= devices_intr;
      else
        devices_inta <= (others => '0');

        for i IN 0 to interruption_sources - 1 loop

          if (devices_intr(i) = '1') then
            active_iid <= to_unsigned(i, active_iid'length);
            EXIT;
          end if;

        end loop;

      end if;
    end if;

    devices_inta(to_integer(active_iid)) <= global_inta;

  end process;

  global_intr <= devices_intr(to_integer(active_iid));
  iid         <= std_logic_vector(active_iid);

end architecture rtl;
