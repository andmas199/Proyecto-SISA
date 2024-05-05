LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE io_components IS
    COMPONENT controladores_IO IS
        PORT (  boot: IN STD_LOGIC;
                CLOCK_50: IN STD_LOGIC;
                addr_io: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                wr_io: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
                rd_io: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                wr_out: IN STD_LOGIC;
                rd_in: IN STD_LOGIC;
                led_verdes: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                led_rojos: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
                keys: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
                switches: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
                HEX0: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
                HEX1: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
                HEX2: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
                HEX3: OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
					 intr: OUT STD_LOGIC);
    END COMPONENT;

    COMPONENT seg7_driver IS
      PORT (enable: in  std_logic;
            value:  in  std_logic_vector(3 DOWNTO 0);
            hex:    out std_logic_vector(6 DOWNTO 0));
    END COMPONENT;
END PACKAGE;
