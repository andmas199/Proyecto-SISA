LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE keyboard_components IS

  COMPONENT keyboard_controller IS
      PORT (clk        : IN    STD_LOGIC;
            reset      : IN    STD_LOGIC;
            ps2_clk    : INOUT STD_LOGIC;
            ps2_data   : INOUT STD_LOGIC;
            read_char  : OUT   STD_LOGIC_VECTOR (7 DOWNTO 0);
            clear_char : IN    STD_LOGIC;
            data_ready : OUT   STD_LOGIC);
  END COMPONENT;

END PACKAGE;
