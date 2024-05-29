library ieee;
  use ieee.std_logic_1164.all;

package keyboard_components is

  component keyboard_controller is
    port (
      clk        : in    std_logic;
      reset      : in    std_logic;
      ps2_clk    : inout std_logic;
      ps2_data   : inout std_logic;
      read_char  : out   std_logic_vector(7 downto 0);
      clear_char : in    std_logic;
      data_ready : out   std_logic;
      intr       : out   std_logic;
      inta       : in    std_logic
    );
  end component;

end package keyboard_components;
