library ieee;
  use ieee.std_logic_1164.all;
  use ieee.numeric_std.all;

entity interrupting_driver is
  generic (
    width : natural
  );
  port (
    boot       : in    std_logic;
    clk        : in    std_logic;
    device_in  : in    std_logic_vector(width - 1 downto 0);
    inta       : in    std_logic;
    device_out : out   std_logic_vector(width - 1 downto 0);
    intr       : out   std_logic
  );
end entity interrupting_driver;

architecture rtl of interrupting_driver is

  type state_t is (clear, interrupted);

  signal state : state_t;

  signal changed     : boolean;
  signal device_buff : std_logic_vector(width - 1 downto 0);

begin

  changed <= device_buff /= device_in;
  intr    <= '1' when state = interrupted else
             '0';

  process (clk, boot) is
  begin

    if rising_edge(clk) then
      if (boot = '1') then
        state       <= clear;
        device_buff <= device_in;
      else
        state <= state;

        case state is

          when clear =>

            if (changed) then
              state       <= interrupted;
              device_buff <= device_in;
            end if;

          when interrupted =>

            if (inta = '1') then
              device_out <= device_buff;
              if (changed) then
                device_buff <= device_in;
              else
                state <= clear;
              end if;
            end if;

        end case;

      end if;
    end if;

  end process;

end architecture rtl;
