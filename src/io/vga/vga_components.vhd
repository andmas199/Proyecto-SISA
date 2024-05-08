
LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE vga_components IS
    COMPONENT vga_controller IS
        PORT (clk_50mhz      : in  std_logic; -- system clock signal
              reset          : in  std_logic; -- system reset
    		  --
              blank_out      : out std_logic; -- vga control signal
              csync_out      : out std_logic; -- vga control signal
              red_out        : out std_logic_vector(7 downto 0); -- vga red pixel value
              green_out      : out std_logic_vector(7 downto 0); -- vga green pixel value
              blue_out       : out std_logic_vector(7 downto 0); -- vga blue pixel value
              horiz_sync_out : out std_logic; -- vga control signal
              vert_sync_out  : out std_logic; -- vga control signal
              --
              addr_vga          : in std_logic_vector(12 downto 0);
              we                : in std_logic;
              wr_data           : in std_logic_vector(15 downto 0);
              rd_data           : out std_logic_vector(15 downto 0);
              byte_m            : in std_logic;
              vga_cursor        : in std_logic_vector(15 downto 0);
              vga_cursor_enable : in std_logic);
    END COMPONENT;
END PACKAGE;
