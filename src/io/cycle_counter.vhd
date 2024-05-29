library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity cycle_counter is
  port (
    clock_50 : in    std_logic;
    milis_in : in    std_logic_vector(15 downto 0);
    wre      : in    std_logic;
    cycles   : out   std_logic_vector(15 downto 0);
    milis    : out   std_logic_vector(15 downto 0)
  );
end entity cycle_counter;

architecture rtl of cycle_counter is

  signal cycles_internal : unsigned(15 downto 0);
  signal milis_internal  : unsigned(15 downto 0);

begin

  process (clock_50) is
  begin

    if rising_edge(clock_50) then
      if (wre = '1') then
        milis_internal <= unsigned(milis_in);
      end if;

      if (cycles_internal = 0) then
        cycles_internal <= x"C350";
        if (milis_internal > 0) then
          milis_internal <= milis_internal - 1;
        end if;
      else
        cycles_internal <= cycles_internal - 1;
      end if;
    end if;

  end process;

  cycles <= std_logic_vector(cycles_internal);
  milis  <= std_logic_vector(milis_internal);

end architecture rtl;
