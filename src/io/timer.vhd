library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity timer is
  port (
    clock_50 : in    std_logic;
    boot     : in    std_logic;
    inta     : in    std_logic;
    intr     : out   std_logic
  );
end entity timer;

architecture rtl of timer is

  signal   cycles   : unsigned(21 downto 0);
  constant interval : unsigned(21 downto 0) := to_unsigned(2500000, cycles'length);

begin

  process (clock_50) is
  begin

    if rising_edge(clock_50) then
      if (boot = '1') then
        cycles <= interval;
      else
        if (cycles = 0) then
          cycles <= interval;
          intr   <= '1';
        else
          cycles <= cycles - 1;
        end if;

        if (inta = '1') then
          intr <= '0';
        end if;
      end if;
    end if;

  end process;

end architecture rtl;
