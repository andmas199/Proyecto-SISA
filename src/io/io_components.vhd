LIBRARY ieee;
USE ieee.std_logic_1164.all;

PACKAGE io_components IS
    COMPONENT controladores_IO IS
        PORT (  boot: IN STD_LOGIC;
                CLOCK_50: IN STD_LOGIC;
                clk: IN STD_LOGIC;
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
				intr: OUT STD_LOGIC;
				inta: IN STD_LOGIC;
                vga_cursor: OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
                vga_cursor_enable: OUT STD_LOGIC;
                ps2_clk : INOUT std_logic;
                ps2_data : INOUT std_logic);
    END COMPONENT;

    COMPONENT cycle_counter IS
        PORT (
            clock_50: in std_logic;
            milis_in: in std_logic_vector(15 downto 0);
            wre: in std_logic;
            cycles: out std_logic_vector(15 downto 0);
            milis: out std_logic_vector(15 downto 0)
        );
    END COMPONENT;

    COMPONENT interrupting_driver IS
        GENERIC (
            width: natural
        );
        PORT (
            boot: in std_logic;
            clk: in std_logic;
            device_in: in std_logic_vector(width - 1 downto 0);
            inta: in std_logic;
            device_out: out std_logic_vector(width - 1 downto 0);
            intr: out std_logic
        );
    END COMPONENT;

    COMPONENT interruption_controller IS
        GENERIC (
            interruption_sources: natural
        );
        PORT (
            boot: in std_logic;
            clk: in std_logic;
            global_inta: in std_logic;
            devices_intr: in std_logic_vector(interruption_sources - 1 downto 0);
            global_intr: out std_logic;
            devices_inta: out std_logic_vector(interruption_sources - 1 downto 0);
            iid: out std_logic_vector(7 downto 0)
        );
    END COMPONENT;

    COMPONENT seg7_driver IS
      PORT (enable: in  std_logic;
            value:  in  std_logic_vector(3 DOWNTO 0);
            hex:    out std_logic_vector(6 DOWNTO 0));
    END COMPONENT;

    COMPONENT timer IS
        PORT (
            CLOCK_50: in std_logic;
            boot: in std_logic;
            inta: in std_logic;
            intr: out std_logic
        );
    END COMPONENT;
END PACKAGE;
