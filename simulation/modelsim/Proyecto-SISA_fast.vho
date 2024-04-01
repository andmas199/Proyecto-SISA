-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "04/01/2024 19:23:00"

-- 
-- Device: Altera EP2C20F484C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sisa IS
    PORT (
	CLOCK_50 : IN std_logic;
	SRAM_ADDR : OUT std_logic_vector(17 DOWNTO 0);
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_UB_N : OUT std_logic;
	SRAM_LB_N : OUT std_logic;
	SRAM_CE_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	SW : IN std_logic_vector(9 DOWNTO 9)
	);
END sisa;

-- Design Ports Information
-- SRAM_DQ[0]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[1]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[2]	=>  Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[3]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[4]	=>  Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[5]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[6]	=>  Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[7]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[8]	=>  Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[9]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[10]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[11]	=>  Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[12]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[13]	=>  Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[14]	=>  Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_DQ[15]	=>  Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[0]	=>  Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[1]	=>  Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[2]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[3]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[4]	=>  Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[5]	=>  Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[6]	=>  Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[7]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[8]	=>  Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[9]	=>  Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[10]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[11]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[12]	=>  Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[13]	=>  Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[14]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[15]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[16]	=>  Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_ADDR[17]	=>  Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_UB_N	=>  Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_LB_N	=>  Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_CE_N	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_OE_N	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SRAM_WE_N	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SW[9]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF sisa IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 9);
SIGNAL \mem0|sramContr|state.STOP~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mem0|sramContr|state.SETUP~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock8~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pro0|e0|alu0|Add0~19_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~21_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~23_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~25_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~31_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[13]~41\ : std_logic;
SIGNAL \pro0|co|pc_reg[14]~42_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[14]~43\ : std_logic;
SIGNAL \pro0|co|pc_reg[15]~44_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~158_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~160_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~164_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~69_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~165_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~166_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~167_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux9~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux2~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux14~1_combout\ : std_logic;
SIGNAL \pro0|co|c0|Equal0~0_combout\ : std_logic;
SIGNAL \pro0|co|c0|Equal0~1_combout\ : std_logic;
SIGNAL \pro0|co|c0|Equal0~2_combout\ : std_logic;
SIGNAL \pro0|co|c0|Equal0~3_combout\ : std_logic;
SIGNAL \pro0|co|c0|Equal0~4_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~102_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~168_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~118_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~169_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~86_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~170_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~171_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~134_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~172_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~173_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~38_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~175_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~22_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~176_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~177_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~179_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~180_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~184_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~132_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~185_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~186_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~190_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~192_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~193_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~88_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~209_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~56_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~213_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~121_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~221_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~89_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~222_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~223_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~106_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~233_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~122_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~234_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~90_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~235_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~236_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~138_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~237_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~238_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~42_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~240_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~242_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~74_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~243_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~244_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~245_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~75_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~256_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~262_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~140_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~263_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~264_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~268_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~270_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~271_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~125_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~273_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~93_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~274_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~275_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~277_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~61_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~278_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~45_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~279_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~29_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~280_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~281_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~77_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~282_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~283_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~284_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~288_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~142_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~289_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~290_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~294_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~296_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~297_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~95_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~300_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~301_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~303_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~63_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~304_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~31_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~306_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~307_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~309_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~310_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~128_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~312_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~96_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~313_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~314_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~316_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~320_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~322_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~323_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~129_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~325_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~97_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~326_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~327_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~329_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~333_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~335_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~336_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~340_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~342_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~346_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~348_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~349_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~99_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~352_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~147_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~354_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~359_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~373_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~374_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~375_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~388_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~389_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~390_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~393_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~394_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~407_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~409_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~410_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~419_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~423_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~39_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~40_combout\ : std_logic;
SIGNAL \CLOCK_50~combout\ : std_logic;
SIGNAL \clock8~clkctrl_outclk\ : std_logic;
SIGNAL \CLOCK_50~clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_DQ[0]~0\ : std_logic;
SIGNAL \SRAM_DQ[1]~1\ : std_logic;
SIGNAL \SRAM_DQ[2]~2\ : std_logic;
SIGNAL \SRAM_DQ[3]~3\ : std_logic;
SIGNAL \SRAM_DQ[4]~4\ : std_logic;
SIGNAL \SRAM_DQ[5]~5\ : std_logic;
SIGNAL \SRAM_DQ[6]~6\ : std_logic;
SIGNAL \SRAM_DQ[7]~7\ : std_logic;
SIGNAL \SRAM_DQ[8]~8\ : std_logic;
SIGNAL \SRAM_DQ[9]~9\ : std_logic;
SIGNAL \SRAM_DQ[10]~10\ : std_logic;
SIGNAL \SRAM_DQ[11]~11\ : std_logic;
SIGNAL \SRAM_DQ[12]~12\ : std_logic;
SIGNAL \SRAM_DQ[13]~13\ : std_logic;
SIGNAL \SRAM_DQ[14]~14\ : std_logic;
SIGNAL \SRAM_DQ[15]~15\ : std_logic;
SIGNAL \pro0|co|m0|state~0_combout\ : std_logic;
SIGNAL \pro0|co|m0|state~regout\ : std_logic;
SIGNAL \clock8_counter[0]~1_combout\ : std_logic;
SIGNAL \clock8_counter[1]~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \clock8~feeder_combout\ : std_logic;
SIGNAL \clock8~regout\ : std_logic;
SIGNAL \mem0|sramContr|Selector0~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|state.IDLE~regout\ : std_logic;
SIGNAL \mem0|sramContr|state~10_combout\ : std_logic;
SIGNAL \mem0|sramContr|state.SETUP~regout\ : std_logic;
SIGNAL \mem0|sramContr|state.WRITE~feeder_combout\ : std_logic;
SIGNAL \mem0|sramContr|state.WRITE~regout\ : std_logic;
SIGNAL \mem0|sramContr|state.STOP~feeder_combout\ : std_logic;
SIGNAL \mem0|sramContr|state.STOP~regout\ : std_logic;
SIGNAL \mem0|sramContr|state.STOP~clkctrl_outclk\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~5_combout\ : std_logic;
SIGNAL \pro0|co|ir~3_combout\ : std_logic;
SIGNAL \pro0|co|ir[9]~1_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~1_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~2_combout\ : std_logic;
SIGNAL \pro0|co|ir~0_combout\ : std_logic;
SIGNAL \pro0|co|c0|immed_x2~combout\ : std_logic;
SIGNAL \pro0|e0|y[0]~2_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~15_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~9_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~10_combout\ : std_logic;
SIGNAL \pro0|co|ir~7_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux15~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_LB_N~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~3_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~4_combout\ : std_logic;
SIGNAL \pro0|co|ir~2_combout\ : std_logic;
SIGNAL \pro0|co|c0|Mux3~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_UB_N~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~11_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~12_combout\ : std_logic;
SIGNAL \pro0|co|ir~8_combout\ : std_logic;
SIGNAL \pro0|co|ir~6_combout\ : std_logic;
SIGNAL \pro0|co|c0|Mux3~1_combout\ : std_logic;
SIGNAL \pro0|e0|d[0]~3_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~19_combout\ : std_logic;
SIGNAL \pro0|e0|d[0]~4_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~20_regout\ : std_logic;
SIGNAL \pro0|co|m0|wrd~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~13_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~14_combout\ : std_logic;
SIGNAL \pro0|co|ir~9_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~15_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~16_combout\ : std_logic;
SIGNAL \pro0|co|ir~10_combout\ : std_logic;
SIGNAL \rtl~11_combout\ : std_logic;
SIGNAL \rtl~2_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~189_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~36_regout\ : std_logic;
SIGNAL \rtl~1_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~188_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~365_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~68_regout\ : std_logic;
SIGNAL \rtl~10_combout\ : std_logic;
SIGNAL \rtl~3_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~191_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~52_regout\ : std_logic;
SIGNAL \rtl~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~187_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~366_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~116_regout\ : std_logic;
SIGNAL \rtl~9_combout\ : std_logic;
SIGNAL \rtl~5_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~182_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~84_regout\ : std_logic;
SIGNAL \rtl~8_combout\ : std_logic;
SIGNAL \rtl~6_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~183_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~363_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~100_regout\ : std_logic;
SIGNAL \rtl~4_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~181_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~364_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~367_combout\ : std_logic;
SIGNAL \mem0|sramContr|state.SETUP~clkctrl_outclk\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[0]$latch~combout\ : std_logic;
SIGNAL \pro0|co|c0|wr_m~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~22_combout\ : std_logic;
SIGNAL \pro0|co|ir~16_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~18_combout\ : std_logic;
SIGNAL \pro0|co|ir~12_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~17_combout\ : std_logic;
SIGNAL \pro0|co|ir~11_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux1~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux1~1_combout\ : std_logic;
SIGNAL \pro0|co|c0|Mux3~2_combout\ : std_logic;
SIGNAL \pro0|e0|y[7]~7_combout\ : std_logic;
SIGNAL \pro0|e0|y[6]~6_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~21_combout\ : std_logic;
SIGNAL \pro0|co|ir~15_combout\ : std_logic;
SIGNAL \pro0|e0|y[5]~5_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~20_combout\ : std_logic;
SIGNAL \pro0|co|ir~14_combout\ : std_logic;
SIGNAL \pro0|e0|y[4]~4_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux11~0_combout\ : std_logic;
SIGNAL \pro0|e0|d[4]~7_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~40_regout\ : std_logic;
SIGNAL \pro0|e0|d[4]~8_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~214_combout\ : std_logic;
SIGNAL \pro0|co|c0|addr_a[0]~0_combout\ : std_logic;
SIGNAL \pro0|co|c0|addr_a[1]~1_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~216_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~72_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~217_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~218_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~136_regout\ : std_logic;
SIGNAL \rtl~7_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~211_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~120_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~208_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~210_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~212_combout\ : std_logic;
SIGNAL \pro0|co|c0|addr_a[2]~2_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~219_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~119_regout\ : std_logic;
SIGNAL \pro0|e0|d[3]~6_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~195_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~197_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~103_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~194_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~199_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~23_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~202_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~203_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~6_combout\ : std_logic;
SIGNAL \pro0|co|ir~5_combout\ : std_logic;
SIGNAL \pro0|e0|y[3]~3_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux12~0_combout\ : std_logic;
SIGNAL \pro0|e0|d[3]~5_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~71_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~204_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~205_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~206_combout\ : std_logic;
SIGNAL \pro0|e0|y[2]~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~0_combout\ : std_logic;
SIGNAL \pro0|co|ir~4_combout\ : std_logic;
SIGNAL \pro0|co|ir~13_combout\ : std_logic;
SIGNAL \pro0|e0|y[1]~1_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~16\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~18\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~20\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~22\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~24\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~26\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~28\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~30\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~32\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~34\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~36\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~38\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~40\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~42\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~43_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux1~2_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[14]~19_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux0~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~83_regout\ : std_logic;
SIGNAL \pro0|e0|d[15]~22_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~360_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~67_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~356_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~361_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~115_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~350_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~131_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~351_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~353_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~355_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~362_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~44\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~45_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux0~1_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[15]~20_combout\ : std_logic;
SIGNAL \mem0|we_validated~3_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[0]_346~combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~17_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux14~2_combout\ : std_logic;
SIGNAL \pro0|e0|d[1]~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~101_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~155_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~133_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~159_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~85_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~157_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~117_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~156_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~368_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~369_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~21_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~163_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~37_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~162_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~370_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~53_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~161_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~371_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~372_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[1]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~70_regout\ : std_logic;
SIGNAL \pro0|e0|d[2]~2_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~178_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux13~0_combout\ : std_logic;
SIGNAL \pro0|e0|d[2]~1_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~54_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~174_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~376_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~377_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[2]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~39_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~201_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~380_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~55_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~200_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~381_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~87_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~196_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~378_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~135_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~198_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~379_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~382_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[3]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~383_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~104_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~207_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~384_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~24_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~215_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~385_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~386_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~387_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[4]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~57_regout\ : std_logic;
SIGNAL \pro0|e0|d[5]~10_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~226_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~41_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~227_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~25_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~228_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~229_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~231_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~137_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~224_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~105_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~220_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~225_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~232_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux10~0_combout\ : std_logic;
SIGNAL \pro0|e0|d[5]~9_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~73_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~230_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~391_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~392_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[5]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~27_combout\ : std_logic;
SIGNAL \pro0|e0|d[6]~11_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~26_regout\ : std_logic;
SIGNAL \pro0|e0|d[6]~12_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~241_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~395_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~58_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~239_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~396_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~397_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[6]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~43_regout\ : std_logic;
SIGNAL \pro0|e0|d[7]~14_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~253_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~27_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~254_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~255_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~59_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~252_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~257_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~91_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~248_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~249_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~107_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~246_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~251_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~258_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux8~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~29_combout\ : std_logic;
SIGNAL \pro0|e0|d[7]~13_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~123_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~247_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~398_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~139_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~250_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~399_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~402_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[7]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux7~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux7~1_combout\ : std_logic;
SIGNAL \pro0|e0|d[8]~15_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~28_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~267_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~44_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~266_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~405_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~76_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~269_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~60_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~265_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~406_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~108_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~259_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~124_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~260_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~92_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~261_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~403_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~404_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~32_combout\ : std_logic;
SIGNAL \pro0|co|c0|word_byte~0_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~46_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[8]$latch~combout\ : std_logic;
SIGNAL \mem0|sramContr|process_1~0_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~141_regout\ : std_logic;
SIGNAL \pro0|e0|d[9]~16_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~276_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~109_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~272_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~408_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~33_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~47_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[9]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux5~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~35_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux5~1_combout\ : std_logic;
SIGNAL \pro0|e0|d[10]~17_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~126_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~286_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~94_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~287_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~411_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~110_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~285_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~412_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~78_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~295_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~46_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~292_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~30_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~293_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~413_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~62_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~291_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~414_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~34_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~48_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[10]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~79_regout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~37_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux4~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux4~1_combout\ : std_logic;
SIGNAL \pro0|e0|d[11]~18_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~308_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~47_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~305_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~417_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~418_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~127_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~299_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~415_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~111_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~298_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~143_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~302_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~416_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~35_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~49_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[11]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~32_regout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux3~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~39_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux3~1_combout\ : std_logic;
SIGNAL \pro0|e0|d[12]~19_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~319_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~48_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~318_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~421_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~64_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~317_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~80_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~321_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~422_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~112_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~311_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~144_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~315_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~420_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~36_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~50_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[12]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~113_regout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~7_combout\ : std_logic;
SIGNAL \mem0|sramContr|dataReaded~8_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~41_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux2~1_combout\ : std_logic;
SIGNAL \pro0|e0|d[13]~20_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~324_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~145_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~328_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~424_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~65_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~330_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~81_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~334_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~33_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~332_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~49_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~331_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~425_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~426_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~37_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~51_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[13]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~82_regout\ : std_logic;
SIGNAL \pro0|e0|d[14]~21_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~347_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~34_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~345_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~50_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~344_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~429_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~66_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~343_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~430_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~146_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~341_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~114_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~337_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~98_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~339_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~130_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~338_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~427_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~428_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~38_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~52_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[14]$latch~combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~400_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~401_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~35_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~358_combout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~51_regout\ : std_logic;
SIGNAL \pro0|e0|reg0|regs~357_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~41_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~42_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~43_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~44_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~53_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ~45_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_DQ[15]$latch~combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[1]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \pro0|co|booted~0_combout\ : std_logic;
SIGNAL \pro0|co|booted~regout\ : std_logic;
SIGNAL \pro0|co|process_0~0_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[2]~17_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[1]~0_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[2]~1_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[1]~16\ : std_logic;
SIGNAL \pro0|co|pc_reg[2]~18_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[2]~2_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[3]~3_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[2]~19\ : std_logic;
SIGNAL \pro0|co|pc_reg[3]~20_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[3]~4_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[4]~5_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[3]~21\ : std_logic;
SIGNAL \pro0|co|pc_reg[4]~22_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[4]~6_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[5]~7_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[4]~23\ : std_logic;
SIGNAL \pro0|co|pc_reg[5]~24_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[5]~8_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[6]~9_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[5]~25\ : std_logic;
SIGNAL \pro0|co|pc_reg[6]~26_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[6]~10_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[7]~11_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[6]~27\ : std_logic;
SIGNAL \pro0|co|pc_reg[7]~28_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[7]~12_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[7]~29\ : std_logic;
SIGNAL \pro0|co|pc_reg[8]~30_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[8]~13_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[8]~31\ : std_logic;
SIGNAL \pro0|co|pc_reg[9]~32_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Add0~33_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux6~0_combout\ : std_logic;
SIGNAL \pro0|e0|alu0|Mux6~1_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[9]~14_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[9]~33\ : std_logic;
SIGNAL \pro0|co|pc_reg[10]~34_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[10]~15_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[10]~35\ : std_logic;
SIGNAL \pro0|co|pc_reg[11]~36_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[11]~16_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[11]~37\ : std_logic;
SIGNAL \pro0|co|pc_reg[12]~38_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[12]~17_combout\ : std_logic;
SIGNAL \pro0|co|pc_reg[12]~39\ : std_logic;
SIGNAL \pro0|co|pc_reg[13]~40_combout\ : std_logic;
SIGNAL \pro0|e0|addr_m[13]~18_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_LB_N~1_combout\ : std_logic;
SIGNAL \mem0|we_validated~2_combout\ : std_logic;
SIGNAL \mem0|sramContr|SRAM_WE_N~0_combout\ : std_logic;
SIGNAL clock8_counter : std_logic_vector(2 DOWNTO 0);
SIGNAL \pro0|co|ir\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \pro0|co|pc_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \mem0|sramContr|dataReaded\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \SW~combout\ : std_logic_vector(9 DOWNTO 9);
SIGNAL \mem0|sramContr|ALT_INV_SRAM_UB_N~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_WE_N <= ww_SRAM_WE_N;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\mem0|sramContr|state.STOP~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mem0|sramContr|state.STOP~regout\);

\mem0|sramContr|state.SETUP~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \mem0|sramContr|state.SETUP~regout\);

\clock8~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock8~regout\);

\CLOCK_50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLOCK_50~combout\);
\mem0|sramContr|ALT_INV_SRAM_UB_N~0_combout\ <= NOT \mem0|sramContr|SRAM_UB_N~0_combout\;

-- Location: LCCOMB_X18_Y8_N4
\pro0|e0|alu0|Add0~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~19_combout\ = ((\pro0|e0|reg0|regs~180_combout\ $ (\pro0|e0|y[2]~0_combout\ $ (!\pro0|e0|alu0|Add0~18\)))) # (GND)
-- \pro0|e0|alu0|Add0~20\ = CARRY((\pro0|e0|reg0|regs~180_combout\ & ((\pro0|e0|y[2]~0_combout\) # (!\pro0|e0|alu0|Add0~18\))) # (!\pro0|e0|reg0|regs~180_combout\ & (\pro0|e0|y[2]~0_combout\ & !\pro0|e0|alu0|Add0~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~180_combout\,
	datab => \pro0|e0|y[2]~0_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~18\,
	combout => \pro0|e0|alu0|Add0~19_combout\,
	cout => \pro0|e0|alu0|Add0~20\);

-- Location: LCCOMB_X18_Y8_N6
\pro0|e0|alu0|Add0~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~21_combout\ = (\pro0|e0|y[3]~3_combout\ & ((\pro0|e0|reg0|regs~206_combout\ & (\pro0|e0|alu0|Add0~20\ & VCC)) # (!\pro0|e0|reg0|regs~206_combout\ & (!\pro0|e0|alu0|Add0~20\)))) # (!\pro0|e0|y[3]~3_combout\ & 
-- ((\pro0|e0|reg0|regs~206_combout\ & (!\pro0|e0|alu0|Add0~20\)) # (!\pro0|e0|reg0|regs~206_combout\ & ((\pro0|e0|alu0|Add0~20\) # (GND)))))
-- \pro0|e0|alu0|Add0~22\ = CARRY((\pro0|e0|y[3]~3_combout\ & (!\pro0|e0|reg0|regs~206_combout\ & !\pro0|e0|alu0|Add0~20\)) # (!\pro0|e0|y[3]~3_combout\ & ((!\pro0|e0|alu0|Add0~20\) # (!\pro0|e0|reg0|regs~206_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|y[3]~3_combout\,
	datab => \pro0|e0|reg0|regs~206_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~20\,
	combout => \pro0|e0|alu0|Add0~21_combout\,
	cout => \pro0|e0|alu0|Add0~22\);

-- Location: LCCOMB_X18_Y8_N8
\pro0|e0|alu0|Add0~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~23_combout\ = ((\pro0|e0|y[4]~4_combout\ $ (\pro0|e0|reg0|regs~219_combout\ $ (!\pro0|e0|alu0|Add0~22\)))) # (GND)
-- \pro0|e0|alu0|Add0~24\ = CARRY((\pro0|e0|y[4]~4_combout\ & ((\pro0|e0|reg0|regs~219_combout\) # (!\pro0|e0|alu0|Add0~22\))) # (!\pro0|e0|y[4]~4_combout\ & (\pro0|e0|reg0|regs~219_combout\ & !\pro0|e0|alu0|Add0~22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|y[4]~4_combout\,
	datab => \pro0|e0|reg0|regs~219_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~22\,
	combout => \pro0|e0|alu0|Add0~23_combout\,
	cout => \pro0|e0|alu0|Add0~24\);

-- Location: LCCOMB_X18_Y8_N10
\pro0|e0|alu0|Add0~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~25_combout\ = (\pro0|e0|reg0|regs~232_combout\ & ((\pro0|e0|y[5]~5_combout\ & (\pro0|e0|alu0|Add0~24\ & VCC)) # (!\pro0|e0|y[5]~5_combout\ & (!\pro0|e0|alu0|Add0~24\)))) # (!\pro0|e0|reg0|regs~232_combout\ & ((\pro0|e0|y[5]~5_combout\ & 
-- (!\pro0|e0|alu0|Add0~24\)) # (!\pro0|e0|y[5]~5_combout\ & ((\pro0|e0|alu0|Add0~24\) # (GND)))))
-- \pro0|e0|alu0|Add0~26\ = CARRY((\pro0|e0|reg0|regs~232_combout\ & (!\pro0|e0|y[5]~5_combout\ & !\pro0|e0|alu0|Add0~24\)) # (!\pro0|e0|reg0|regs~232_combout\ & ((!\pro0|e0|alu0|Add0~24\) # (!\pro0|e0|y[5]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~232_combout\,
	datab => \pro0|e0|y[5]~5_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~24\,
	combout => \pro0|e0|alu0|Add0~25_combout\,
	cout => \pro0|e0|alu0|Add0~26\);

-- Location: LCFF_X22_Y5_N27
\pro0|co|pc_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[14]~42_combout\,
	sdata => VCC,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(14));

-- Location: LCFF_X22_Y5_N29
\pro0|co|pc_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[15]~44_combout\,
	sdata => VCC,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(15));

-- Location: LCCOMB_X18_Y8_N16
\pro0|e0|alu0|Add0~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~31_combout\ = ((\pro0|e0|reg0|regs~271_combout\ $ (\pro0|co|c0|Mux3~2_combout\ $ (!\pro0|e0|alu0|Add0~30\)))) # (GND)
-- \pro0|e0|alu0|Add0~32\ = CARRY((\pro0|e0|reg0|regs~271_combout\ & ((\pro0|co|c0|Mux3~2_combout\) # (!\pro0|e0|alu0|Add0~30\))) # (!\pro0|e0|reg0|regs~271_combout\ & (\pro0|co|c0|Mux3~2_combout\ & !\pro0|e0|alu0|Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~271_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~30\,
	combout => \pro0|e0|alu0|Add0~31_combout\,
	cout => \pro0|e0|alu0|Add0~32\);

-- Location: LCCOMB_X22_Y5_N24
\pro0|co|pc_reg[13]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[13]~40_combout\ = (\pro0|co|pc_reg\(13) & (\pro0|co|pc_reg[12]~39\ $ (GND))) # (!\pro0|co|pc_reg\(13) & (!\pro0|co|pc_reg[12]~39\ & VCC))
-- \pro0|co|pc_reg[13]~41\ = CARRY((\pro0|co|pc_reg\(13) & !\pro0|co|pc_reg[12]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|pc_reg\(13),
	datad => VCC,
	cin => \pro0|co|pc_reg[12]~39\,
	combout => \pro0|co|pc_reg[13]~40_combout\,
	cout => \pro0|co|pc_reg[13]~41\);

-- Location: LCCOMB_X22_Y5_N26
\pro0|co|pc_reg[14]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[14]~42_combout\ = (\pro0|co|pc_reg\(14) & (!\pro0|co|pc_reg[13]~41\)) # (!\pro0|co|pc_reg\(14) & ((\pro0|co|pc_reg[13]~41\) # (GND)))
-- \pro0|co|pc_reg[14]~43\ = CARRY((!\pro0|co|pc_reg[13]~41\) # (!\pro0|co|pc_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|pc_reg\(14),
	datad => VCC,
	cin => \pro0|co|pc_reg[13]~41\,
	combout => \pro0|co|pc_reg[14]~42_combout\,
	cout => \pro0|co|pc_reg[14]~43\);

-- Location: LCCOMB_X22_Y5_N28
\pro0|co|pc_reg[15]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[15]~44_combout\ = \pro0|co|pc_reg[14]~43\ $ (!\pro0|co|pc_reg\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \pro0|co|pc_reg\(15),
	cin => \pro0|co|pc_reg[14]~43\,
	combout => \pro0|co|pc_reg[15]~44_combout\);

-- Location: LCCOMB_X19_Y7_N2
\pro0|e0|reg0|regs~158\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~158_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~156_combout\) # ((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|e0|reg0|regs~157_combout\ & 
-- !\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~156_combout\,
	datab => \pro0|e0|reg0|regs~157_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~158_combout\);

-- Location: LCCOMB_X19_Y7_N8
\pro0|e0|reg0|regs~160\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~160_combout\ = (\pro0|e0|reg0|regs~158_combout\ & ((\pro0|e0|reg0|regs~159_combout\) # ((!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~158_combout\ & (((\pro0|e0|reg0|regs~155_combout\ & 
-- \pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~159_combout\,
	datab => \pro0|e0|reg0|regs~155_combout\,
	datac => \pro0|e0|reg0|regs~158_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~160_combout\);

-- Location: LCCOMB_X19_Y7_N20
\pro0|e0|reg0|regs~164\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~164_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~162_combout\))) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~163_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~163_combout\,
	datab => \pro0|e0|reg0|regs~162_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~164_combout\);

-- Location: LCFF_X20_Y9_N1
\pro0|e0|reg0|regs~69\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~165_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~69_regout\);

-- Location: LCCOMB_X20_Y9_N0
\pro0|e0|reg0|regs~165\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~165_combout\ = (\rtl~3_combout\ & (\pro0|e0|d[1]~0_combout\)) # (!\rtl~3_combout\ & ((\pro0|e0|reg0|regs~69_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[1]~0_combout\,
	datac => \pro0|e0|reg0|regs~69_regout\,
	datad => \rtl~3_combout\,
	combout => \pro0|e0|reg0|regs~165_combout\);

-- Location: LCCOMB_X20_Y7_N16
\pro0|e0|reg0|regs~166\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~166_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~164_combout\ & (\pro0|e0|reg0|regs~165_combout\)) # (!\pro0|e0|reg0|regs~164_combout\ & ((\pro0|e0|reg0|regs~161_combout\))))) # (!\pro0|co|c0|addr_a[1]~1_combout\ 
-- & (((\pro0|e0|reg0|regs~164_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~165_combout\,
	datab => \pro0|e0|reg0|regs~161_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|e0|reg0|regs~164_combout\,
	combout => \pro0|e0|reg0|regs~166_combout\);

-- Location: LCCOMB_X19_Y7_N30
\pro0|e0|reg0|regs~167\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~167_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~160_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~166_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~166_combout\,
	datac => \pro0|e0|reg0|regs~160_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~167_combout\);

-- Location: LCCOMB_X19_Y8_N8
\pro0|e0|alu0|Mux9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux9~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|reg0|regs~245_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|e0|y[6]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~245_combout\,
	datab => \pro0|e0|y[6]~6_combout\,
	datac => \pro0|co|ir\(8),
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux9~0_combout\);

-- Location: LCCOMB_X16_Y8_N22
\pro0|e0|alu0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux2~0_combout\ = (\pro0|co|ir\(13) & (((\pro0|co|ir\(5))))) # (!\pro0|co|ir\(13) & ((\pro0|co|ir\(8) & ((\pro0|co|ir\(5)))) # (!\pro0|co|ir\(8) & (\pro0|co|ir\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(13),
	datab => \pro0|co|ir\(7),
	datac => \pro0|co|ir\(8),
	datad => \pro0|co|ir\(5),
	combout => \pro0|e0|alu0|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y9_N4
\pro0|e0|alu0|Mux14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux14~1_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|reg0|regs~167_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|e0|y[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~167_combout\,
	datab => \pro0|co|c0|Mux3~0_combout\,
	datac => \pro0|co|ir\(8),
	datad => \pro0|e0|y[1]~1_combout\,
	combout => \pro0|e0|alu0|Mux14~1_combout\);

-- Location: LCCOMB_X18_Y9_N0
\pro0|co|c0|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|Equal0~0_combout\ = (((!\pro0|co|ir\(15)) # (!\pro0|co|ir\(12))) # (!\pro0|co|ir\(14))) # (!\pro0|co|ir\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(0),
	datab => \pro0|co|ir\(14),
	datac => \pro0|co|ir\(12),
	datad => \pro0|co|ir\(15),
	combout => \pro0|co|c0|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y8_N18
\pro0|co|c0|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|Equal0~1_combout\ = (((!\pro0|co|ir\(10)) # (!\pro0|co|ir\(13))) # (!\pro0|co|ir\(5))) # (!\pro0|co|ir\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(11),
	datab => \pro0|co|ir\(5),
	datac => \pro0|co|ir\(13),
	datad => \pro0|co|ir\(10),
	combout => \pro0|co|c0|Equal0~1_combout\);

-- Location: LCCOMB_X15_Y8_N30
\pro0|co|c0|Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|Equal0~2_combout\ = (((!\pro0|co|ir\(1)) # (!\pro0|co|ir\(3))) # (!\pro0|co|ir\(2))) # (!\pro0|co|ir\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(4),
	datab => \pro0|co|ir\(2),
	datac => \pro0|co|ir\(3),
	datad => \pro0|co|ir\(1),
	combout => \pro0|co|c0|Equal0~2_combout\);

-- Location: LCCOMB_X16_Y8_N20
\pro0|co|c0|Equal0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|Equal0~3_combout\ = (((!\pro0|co|ir\(6)) # (!\pro0|co|ir\(7))) # (!\pro0|co|ir\(8))) # (!\pro0|co|ir\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(8),
	datac => \pro0|co|ir\(7),
	datad => \pro0|co|ir\(6),
	combout => \pro0|co|c0|Equal0~3_combout\);

-- Location: LCCOMB_X16_Y8_N6
\pro0|co|c0|Equal0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|Equal0~4_combout\ = (\pro0|co|c0|Equal0~3_combout\) # ((\pro0|co|c0|Equal0~1_combout\) # ((\pro0|co|c0|Equal0~2_combout\) # (\pro0|co|c0|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Equal0~3_combout\,
	datab => \pro0|co|c0|Equal0~1_combout\,
	datac => \pro0|co|c0|Equal0~2_combout\,
	datad => \pro0|co|c0|Equal0~0_combout\,
	combout => \pro0|co|c0|Equal0~4_combout\);

-- Location: LCFF_X16_Y9_N17
\pro0|e0|reg0|regs~102\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~168_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~102_regout\);

-- Location: LCCOMB_X16_Y9_N16
\pro0|e0|reg0|regs~168\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~168_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[2]~1_combout\) # ((\pro0|e0|d[2]~2_combout\)))) # (!\rtl~4_combout\ & (((\pro0|e0|reg0|regs~102_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4_combout\,
	datab => \pro0|e0|d[2]~1_combout\,
	datac => \pro0|e0|reg0|regs~102_regout\,
	datad => \pro0|e0|d[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~168_combout\);

-- Location: LCFF_X16_Y9_N5
\pro0|e0|reg0|regs~118\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~169_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~118_regout\);

-- Location: LCCOMB_X16_Y9_N4
\pro0|e0|reg0|regs~169\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~169_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[2]~1_combout\) # ((\pro0|e0|d[2]~2_combout\)))) # (!\rtl~5_combout\ & (((\pro0|e0|reg0|regs~118_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5_combout\,
	datab => \pro0|e0|d[2]~1_combout\,
	datac => \pro0|e0|reg0|regs~118_regout\,
	datad => \pro0|e0|d[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~169_combout\);

-- Location: LCFF_X16_Y9_N23
\pro0|e0|reg0|regs~86\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~170_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~86_regout\);

-- Location: LCCOMB_X16_Y9_N22
\pro0|e0|reg0|regs~170\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~170_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[2]~1_combout\) # ((\pro0|e0|d[2]~2_combout\)))) # (!\rtl~6_combout\ & (((\pro0|e0|reg0|regs~86_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datab => \pro0|e0|d[2]~1_combout\,
	datac => \pro0|e0|reg0|regs~86_regout\,
	datad => \pro0|e0|d[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~170_combout\);

-- Location: LCCOMB_X19_Y9_N2
\pro0|e0|reg0|regs~171\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~171_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~169_combout\) # ((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|e0|reg0|regs~170_combout\ & 
-- !\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~169_combout\,
	datab => \pro0|e0|reg0|regs~170_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~171_combout\);

-- Location: LCFF_X16_Y9_N21
\pro0|e0|reg0|regs~134\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~172_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~134_regout\);

-- Location: LCCOMB_X16_Y9_N20
\pro0|e0|reg0|regs~172\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~172_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[2]~1_combout\) # ((\pro0|e0|d[2]~2_combout\)))) # (!\rtl~7_combout\ & (((\pro0|e0|reg0|regs~134_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datab => \pro0|e0|d[2]~1_combout\,
	datac => \pro0|e0|reg0|regs~134_regout\,
	datad => \pro0|e0|d[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~172_combout\);

-- Location: LCCOMB_X16_Y9_N14
\pro0|e0|reg0|regs~173\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~173_combout\ = (\pro0|e0|reg0|regs~171_combout\ & (((\pro0|e0|reg0|regs~172_combout\) # (!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~171_combout\ & (\pro0|e0|reg0|regs~168_combout\ & 
-- ((\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~168_combout\,
	datab => \pro0|e0|reg0|regs~171_combout\,
	datac => \pro0|e0|reg0|regs~172_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~173_combout\);

-- Location: LCFF_X16_Y9_N3
\pro0|e0|reg0|regs~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~38_regout\);

-- Location: LCCOMB_X16_Y9_N2
\pro0|e0|reg0|regs~175\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~175_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[2]~1_combout\) # ((\pro0|e0|d[2]~2_combout\)))) # (!\rtl~1_combout\ & (((\pro0|e0|reg0|regs~38_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datab => \pro0|e0|d[2]~1_combout\,
	datac => \pro0|e0|reg0|regs~38_regout\,
	datad => \pro0|e0|d[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~175_combout\);

-- Location: LCFF_X16_Y9_N29
\pro0|e0|reg0|regs~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~22_regout\);

-- Location: LCCOMB_X16_Y9_N28
\pro0|e0|reg0|regs~176\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~176_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[2]~1_combout\) # ((\pro0|e0|d[2]~2_combout\)))) # (!\rtl~2_combout\ & (((\pro0|e0|reg0|regs~22_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[2]~1_combout\,
	datab => \rtl~2_combout\,
	datac => \pro0|e0|reg0|regs~22_regout\,
	datad => \pro0|e0|d[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~176_combout\);

-- Location: LCCOMB_X19_Y9_N24
\pro0|e0|reg0|regs~177\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~177_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~175_combout\))) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~176_combout\,
	datab => \pro0|e0|reg0|regs~175_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~177_combout\);

-- Location: LCCOMB_X21_Y9_N22
\pro0|e0|reg0|regs~179\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~179_combout\ = (\pro0|e0|reg0|regs~177_combout\ & (((\pro0|e0|reg0|regs~178_combout\) # (!\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|e0|reg0|regs~177_combout\ & (\pro0|e0|reg0|regs~174_combout\ & 
-- ((\pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~174_combout\,
	datab => \pro0|e0|reg0|regs~177_combout\,
	datac => \pro0|e0|reg0|regs~178_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~179_combout\);

-- Location: LCCOMB_X18_Y5_N6
\pro0|e0|reg0|regs~180\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~180_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~173_combout\)) # (!\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~179_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~173_combout\,
	datab => \pro0|e0|reg0|regs~179_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~180_combout\);

-- Location: LCCOMB_X20_Y9_N24
\pro0|e0|reg0|regs~184\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~184_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~182_combout\))) # 
-- (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~183_combout\,
	datab => \pro0|e0|reg0|regs~182_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~184_combout\);

-- Location: LCFF_X20_Y9_N11
\pro0|e0|reg0|regs~132\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~132_regout\);

-- Location: LCCOMB_X20_Y9_N10
\pro0|e0|reg0|regs~185\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~185_combout\ = (\rtl~7_combout\ & (\pro0|e0|d[0]~4_combout\)) # (!\rtl~7_combout\ & ((\pro0|e0|reg0|regs~132_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~4_combout\,
	datac => \pro0|e0|reg0|regs~132_regout\,
	datad => \rtl~7_combout\,
	combout => \pro0|e0|reg0|regs~185_combout\);

-- Location: LCCOMB_X18_Y9_N22
\pro0|e0|reg0|regs~186\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~186_combout\ = (\pro0|e0|reg0|regs~184_combout\ & ((\pro0|e0|reg0|regs~185_combout\) # ((!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~184_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\ & 
-- \pro0|e0|reg0|regs~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~185_combout\,
	datab => \pro0|e0|reg0|regs~184_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|e0|reg0|regs~181_combout\,
	combout => \pro0|e0|reg0|regs~186_combout\);

-- Location: LCCOMB_X20_Y9_N18
\pro0|e0|reg0|regs~190\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~190_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~188_combout\) # ((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|e0|reg0|regs~189_combout\ & 
-- !\pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~188_combout\,
	datab => \pro0|e0|reg0|regs~189_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~190_combout\);

-- Location: LCCOMB_X20_Y9_N2
\pro0|e0|reg0|regs~192\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~192_combout\ = (\pro0|e0|reg0|regs~190_combout\ & ((\pro0|e0|reg0|regs~191_combout\) # ((!\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|e0|reg0|regs~190_combout\ & (((\pro0|e0|reg0|regs~187_combout\ & 
-- \pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~191_combout\,
	datab => \pro0|e0|reg0|regs~190_combout\,
	datac => \pro0|e0|reg0|regs~187_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~192_combout\);

-- Location: LCCOMB_X19_Y8_N30
\pro0|e0|reg0|regs~193\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~193_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~186_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~192_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~192_combout\,
	datac => \pro0|e0|reg0|regs~186_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~193_combout\);

-- Location: LCFF_X19_Y5_N7
\pro0|e0|reg0|regs~88\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~209_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~88_regout\);

-- Location: LCCOMB_X19_Y5_N6
\pro0|e0|reg0|regs~209\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~209_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[4]~7_combout\) # ((\pro0|e0|d[4]~8_combout\)))) # (!\rtl~6_combout\ & (((\pro0|e0|reg0|regs~88_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[4]~7_combout\,
	datab => \rtl~6_combout\,
	datac => \pro0|e0|reg0|regs~88_regout\,
	datad => \pro0|e0|d[4]~8_combout\,
	combout => \pro0|e0|reg0|regs~209_combout\);

-- Location: LCFF_X19_Y5_N11
\pro0|e0|reg0|regs~56\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~213_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~56_regout\);

-- Location: LCCOMB_X19_Y5_N10
\pro0|e0|reg0|regs~213\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~213_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[4]~7_combout\) # ((\pro0|e0|d[4]~8_combout\)))) # (!\rtl~0_combout\ & (((\pro0|e0|reg0|regs~56_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[4]~7_combout\,
	datab => \rtl~0_combout\,
	datac => \pro0|e0|reg0|regs~56_regout\,
	datad => \pro0|e0|d[4]~8_combout\,
	combout => \pro0|e0|reg0|regs~213_combout\);

-- Location: LCFF_X20_Y6_N5
\pro0|e0|reg0|regs~121\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~221_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~121_regout\);

-- Location: LCCOMB_X20_Y6_N4
\pro0|e0|reg0|regs~221\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~221_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[5]~9_combout\) # ((\pro0|e0|d[5]~10_combout\)))) # (!\rtl~5_combout\ & (((\pro0|e0|reg0|regs~121_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5_combout\,
	datab => \pro0|e0|d[5]~9_combout\,
	datac => \pro0|e0|reg0|regs~121_regout\,
	datad => \pro0|e0|d[5]~10_combout\,
	combout => \pro0|e0|reg0|regs~221_combout\);

-- Location: LCFF_X20_Y6_N27
\pro0|e0|reg0|regs~89\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~222_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~89_regout\);

-- Location: LCCOMB_X20_Y6_N26
\pro0|e0|reg0|regs~222\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~222_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[5]~9_combout\) # ((\pro0|e0|d[5]~10_combout\)))) # (!\rtl~6_combout\ & (((\pro0|e0|reg0|regs~89_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datab => \pro0|e0|d[5]~9_combout\,
	datac => \pro0|e0|reg0|regs~89_regout\,
	datad => \pro0|e0|d[5]~10_combout\,
	combout => \pro0|e0|reg0|regs~222_combout\);

-- Location: LCCOMB_X19_Y6_N6
\pro0|e0|reg0|regs~223\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~223_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~221_combout\)) # 
-- (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~222_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~221_combout\,
	datab => \pro0|co|c0|addr_a[0]~0_combout\,
	datac => \pro0|e0|reg0|regs~222_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~223_combout\);

-- Location: LCFF_X20_Y7_N27
\pro0|e0|reg0|regs~106\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~233_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~106_regout\);

-- Location: LCCOMB_X20_Y7_N26
\pro0|e0|reg0|regs~233\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~233_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[6]~12_combout\) # ((\pro0|e0|d[6]~11_combout\)))) # (!\rtl~4_combout\ & (((\pro0|e0|reg0|regs~106_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[6]~12_combout\,
	datab => \pro0|e0|d[6]~11_combout\,
	datac => \pro0|e0|reg0|regs~106_regout\,
	datad => \rtl~4_combout\,
	combout => \pro0|e0|reg0|regs~233_combout\);

-- Location: LCFF_X20_Y7_N11
\pro0|e0|reg0|regs~122\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~234_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~122_regout\);

-- Location: LCCOMB_X20_Y7_N10
\pro0|e0|reg0|regs~234\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~234_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[6]~11_combout\) # ((\pro0|e0|d[6]~12_combout\)))) # (!\rtl~5_combout\ & (((\pro0|e0|reg0|regs~122_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5_combout\,
	datab => \pro0|e0|d[6]~11_combout\,
	datac => \pro0|e0|reg0|regs~122_regout\,
	datad => \pro0|e0|d[6]~12_combout\,
	combout => \pro0|e0|reg0|regs~234_combout\);

-- Location: LCFF_X20_Y7_N21
\pro0|e0|reg0|regs~90\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~235_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~90_regout\);

-- Location: LCCOMB_X20_Y7_N20
\pro0|e0|reg0|regs~235\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~235_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[6]~11_combout\) # ((\pro0|e0|d[6]~12_combout\)))) # (!\rtl~6_combout\ & (((\pro0|e0|reg0|regs~90_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datab => \pro0|e0|d[6]~11_combout\,
	datac => \pro0|e0|reg0|regs~90_regout\,
	datad => \pro0|e0|d[6]~12_combout\,
	combout => \pro0|e0|reg0|regs~235_combout\);

-- Location: LCCOMB_X19_Y7_N28
\pro0|e0|reg0|regs~236\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~236_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~234_combout\) # ((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|e0|reg0|regs~235_combout\ & 
-- !\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~234_combout\,
	datab => \pro0|e0|reg0|regs~235_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~236_combout\);

-- Location: LCFF_X20_Y7_N31
\pro0|e0|reg0|regs~138\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~237_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~138_regout\);

-- Location: LCCOMB_X20_Y7_N30
\pro0|e0|reg0|regs~237\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~237_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[6]~11_combout\) # ((\pro0|e0|d[6]~12_combout\)))) # (!\rtl~7_combout\ & (((\pro0|e0|reg0|regs~138_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datab => \pro0|e0|d[6]~11_combout\,
	datac => \pro0|e0|reg0|regs~138_regout\,
	datad => \pro0|e0|d[6]~12_combout\,
	combout => \pro0|e0|reg0|regs~237_combout\);

-- Location: LCCOMB_X19_Y7_N6
\pro0|e0|reg0|regs~238\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~238_combout\ = (\pro0|e0|reg0|regs~236_combout\ & ((\pro0|e0|reg0|regs~237_combout\) # ((!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~236_combout\ & (((\pro0|e0|reg0|regs~233_combout\ & 
-- \pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~237_combout\,
	datab => \pro0|e0|reg0|regs~236_combout\,
	datac => \pro0|e0|reg0|regs~233_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~238_combout\);

-- Location: LCFF_X20_Y7_N1
\pro0|e0|reg0|regs~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~240_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~42_regout\);

-- Location: LCCOMB_X20_Y7_N0
\pro0|e0|reg0|regs~240\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~240_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[6]~12_combout\) # ((\pro0|e0|d[6]~11_combout\)))) # (!\rtl~1_combout\ & (((\pro0|e0|reg0|regs~42_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[6]~12_combout\,
	datab => \pro0|e0|d[6]~11_combout\,
	datac => \pro0|e0|reg0|regs~42_regout\,
	datad => \rtl~1_combout\,
	combout => \pro0|e0|reg0|regs~240_combout\);

-- Location: LCCOMB_X21_Y8_N6
\pro0|e0|reg0|regs~242\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~242_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~240_combout\)) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~241_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~240_combout\,
	datab => \pro0|e0|reg0|regs~241_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~242_combout\);

-- Location: LCFF_X21_Y8_N21
\pro0|e0|reg0|regs~74\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~243_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~74_regout\);

-- Location: LCCOMB_X21_Y8_N20
\pro0|e0|reg0|regs~243\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~243_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[6]~11_combout\) # ((\pro0|e0|d[6]~12_combout\)))) # (!\rtl~3_combout\ & (((\pro0|e0|reg0|regs~74_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3_combout\,
	datab => \pro0|e0|d[6]~11_combout\,
	datac => \pro0|e0|reg0|regs~74_regout\,
	datad => \pro0|e0|d[6]~12_combout\,
	combout => \pro0|e0|reg0|regs~243_combout\);

-- Location: LCCOMB_X21_Y8_N26
\pro0|e0|reg0|regs~244\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~244_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~242_combout\ & ((\pro0|e0|reg0|regs~243_combout\))) # (!\pro0|e0|reg0|regs~242_combout\ & (\pro0|e0|reg0|regs~239_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ 
-- & (((\pro0|e0|reg0|regs~242_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~239_combout\,
	datac => \pro0|e0|reg0|regs~243_combout\,
	datad => \pro0|e0|reg0|regs~242_combout\,
	combout => \pro0|e0|reg0|regs~244_combout\);

-- Location: LCCOMB_X20_Y8_N18
\pro0|e0|reg0|regs~245\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~245_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~238_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~244_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~244_combout\,
	datac => \pro0|e0|reg0|regs~238_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~245_combout\);

-- Location: LCFF_X14_Y9_N17
\pro0|e0|reg0|regs~75\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~256_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~75_regout\);

-- Location: LCCOMB_X14_Y9_N16
\pro0|e0|reg0|regs~256\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~256_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[7]~13_combout\) # ((\pro0|e0|d[7]~14_combout\)))) # (!\rtl~3_combout\ & (((\pro0|e0|reg0|regs~75_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3_combout\,
	datab => \pro0|e0|d[7]~13_combout\,
	datac => \pro0|e0|reg0|regs~75_regout\,
	datad => \pro0|e0|d[7]~14_combout\,
	combout => \pro0|e0|reg0|regs~256_combout\);

-- Location: LCCOMB_X16_Y7_N16
\pro0|e0|reg0|regs~262\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~262_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~260_combout\))) # 
-- (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[0]~0_combout\,
	datab => \pro0|e0|reg0|regs~261_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|e0|reg0|regs~260_combout\,
	combout => \pro0|e0|reg0|regs~262_combout\);

-- Location: LCFF_X15_Y6_N7
\pro0|e0|reg0|regs~140\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~263_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~140_regout\);

-- Location: LCCOMB_X15_Y6_N6
\pro0|e0|reg0|regs~263\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~263_combout\ = (\rtl~7_combout\ & (\pro0|e0|d[8]~15_combout\)) # (!\rtl~7_combout\ & ((\pro0|e0|reg0|regs~140_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[8]~15_combout\,
	datac => \pro0|e0|reg0|regs~140_regout\,
	datad => \rtl~7_combout\,
	combout => \pro0|e0|reg0|regs~263_combout\);

-- Location: LCCOMB_X15_Y6_N28
\pro0|e0|reg0|regs~264\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~264_combout\ = (\pro0|e0|reg0|regs~262_combout\ & ((\pro0|e0|reg0|regs~263_combout\) # ((!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~262_combout\ & (((\pro0|e0|reg0|regs~259_combout\ & 
-- \pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~263_combout\,
	datab => \pro0|e0|reg0|regs~259_combout\,
	datac => \pro0|e0|reg0|regs~262_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~264_combout\);

-- Location: LCCOMB_X15_Y7_N10
\pro0|e0|reg0|regs~268\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~268_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\) # ((\pro0|e0|reg0|regs~266_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & (!\pro0|co|c0|addr_a[1]~1_combout\ & 
-- (\pro0|e0|reg0|regs~267_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[0]~0_combout\,
	datab => \pro0|co|c0|addr_a[1]~1_combout\,
	datac => \pro0|e0|reg0|regs~267_combout\,
	datad => \pro0|e0|reg0|regs~266_combout\,
	combout => \pro0|e0|reg0|regs~268_combout\);

-- Location: LCCOMB_X15_Y7_N28
\pro0|e0|reg0|regs~270\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~270_combout\ = (\pro0|e0|reg0|regs~268_combout\ & (((\pro0|e0|reg0|regs~269_combout\)) # (!\pro0|co|c0|addr_a[1]~1_combout\))) # (!\pro0|e0|reg0|regs~268_combout\ & (\pro0|co|c0|addr_a[1]~1_combout\ & 
-- ((\pro0|e0|reg0|regs~265_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~268_combout\,
	datab => \pro0|co|c0|addr_a[1]~1_combout\,
	datac => \pro0|e0|reg0|regs~269_combout\,
	datad => \pro0|e0|reg0|regs~265_combout\,
	combout => \pro0|e0|reg0|regs~270_combout\);

-- Location: LCCOMB_X15_Y6_N24
\pro0|e0|reg0|regs~271\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~271_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~264_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~270_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~270_combout\,
	datab => \pro0|e0|reg0|regs~264_combout\,
	datac => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~271_combout\);

-- Location: LCFF_X16_Y7_N21
\pro0|e0|reg0|regs~125\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~273_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~125_regout\);

-- Location: LCCOMB_X16_Y7_N20
\pro0|e0|reg0|regs~273\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~273_combout\ = (\rtl~5_combout\ & (\pro0|e0|d[9]~16_combout\)) # (!\rtl~5_combout\ & ((\pro0|e0|reg0|regs~125_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[9]~16_combout\,
	datab => \rtl~5_combout\,
	datac => \pro0|e0|reg0|regs~125_regout\,
	combout => \pro0|e0|reg0|regs~273_combout\);

-- Location: LCFF_X16_Y7_N31
\pro0|e0|reg0|regs~93\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~274_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~93_regout\);

-- Location: LCCOMB_X16_Y7_N30
\pro0|e0|reg0|regs~274\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~274_combout\ = (\rtl~6_combout\ & (\pro0|e0|d[9]~16_combout\)) # (!\rtl~6_combout\ & ((\pro0|e0|reg0|regs~93_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[9]~16_combout\,
	datac => \pro0|e0|reg0|regs~93_regout\,
	datad => \rtl~6_combout\,
	combout => \pro0|e0|reg0|regs~274_combout\);

-- Location: LCCOMB_X16_Y7_N28
\pro0|e0|reg0|regs~275\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~275_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~273_combout\) # ((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & (((!\pro0|co|c0|addr_a[0]~0_combout\ & 
-- \pro0|e0|reg0|regs~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~273_combout\,
	datab => \pro0|co|c0|addr_a[1]~1_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|e0|reg0|regs~274_combout\,
	combout => \pro0|e0|reg0|regs~275_combout\);

-- Location: LCCOMB_X16_Y7_N24
\pro0|e0|reg0|regs~277\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~277_combout\ = (\pro0|e0|reg0|regs~275_combout\ & (((\pro0|e0|reg0|regs~276_combout\) # (!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~275_combout\ & (\pro0|e0|reg0|regs~272_combout\ & (\pro0|co|c0|addr_a[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~275_combout\,
	datab => \pro0|e0|reg0|regs~272_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|e0|reg0|regs~276_combout\,
	combout => \pro0|e0|reg0|regs~277_combout\);

-- Location: LCFF_X15_Y7_N15
\pro0|e0|reg0|regs~61\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~278_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~61_regout\);

-- Location: LCCOMB_X15_Y7_N14
\pro0|e0|reg0|regs~278\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~278_combout\ = (\rtl~0_combout\ & (\pro0|e0|d[9]~16_combout\)) # (!\rtl~0_combout\ & ((\pro0|e0|reg0|regs~61_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[9]~16_combout\,
	datac => \pro0|e0|reg0|regs~61_regout\,
	datad => \rtl~0_combout\,
	combout => \pro0|e0|reg0|regs~278_combout\);

-- Location: LCFF_X15_Y7_N21
\pro0|e0|reg0|regs~45\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~279_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~45_regout\);

-- Location: LCCOMB_X15_Y7_N20
\pro0|e0|reg0|regs~279\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~279_combout\ = (\rtl~1_combout\ & (\pro0|e0|d[9]~16_combout\)) # (!\rtl~1_combout\ & ((\pro0|e0|reg0|regs~45_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[9]~16_combout\,
	datac => \pro0|e0|reg0|regs~45_regout\,
	datad => \rtl~1_combout\,
	combout => \pro0|e0|reg0|regs~279_combout\);

-- Location: LCFF_X15_Y7_N27
\pro0|e0|reg0|regs~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~280_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~29_regout\);

-- Location: LCCOMB_X15_Y7_N26
\pro0|e0|reg0|regs~280\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~280_combout\ = (\rtl~2_combout\ & (\pro0|e0|d[9]~16_combout\)) # (!\rtl~2_combout\ & ((\pro0|e0|reg0|regs~29_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[9]~16_combout\,
	datac => \pro0|e0|reg0|regs~29_regout\,
	datad => \rtl~2_combout\,
	combout => \pro0|e0|reg0|regs~280_combout\);

-- Location: LCCOMB_X15_Y7_N16
\pro0|e0|reg0|regs~281\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~281_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~279_combout\)) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~280_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~279_combout\,
	datab => \pro0|e0|reg0|regs~280_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~281_combout\);

-- Location: LCFF_X15_Y7_N7
\pro0|e0|reg0|regs~77\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~282_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~77_regout\);

-- Location: LCCOMB_X15_Y7_N6
\pro0|e0|reg0|regs~282\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~282_combout\ = (\rtl~3_combout\ & (\pro0|e0|d[9]~16_combout\)) # (!\rtl~3_combout\ & ((\pro0|e0|reg0|regs~77_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[9]~16_combout\,
	datac => \pro0|e0|reg0|regs~77_regout\,
	datad => \rtl~3_combout\,
	combout => \pro0|e0|reg0|regs~282_combout\);

-- Location: LCCOMB_X15_Y7_N0
\pro0|e0|reg0|regs~283\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~283_combout\ = (\pro0|e0|reg0|regs~281_combout\ & ((\pro0|e0|reg0|regs~282_combout\) # ((!\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|e0|reg0|regs~281_combout\ & (((\pro0|e0|reg0|regs~278_combout\ & 
-- \pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~282_combout\,
	datab => \pro0|e0|reg0|regs~278_combout\,
	datac => \pro0|e0|reg0|regs~281_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~283_combout\);

-- Location: LCCOMB_X15_Y8_N26
\pro0|e0|reg0|regs~284\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~284_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~277_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~283_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~283_combout\,
	datac => \pro0|e0|reg0|regs~277_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~284_combout\);

-- Location: LCCOMB_X21_Y5_N20
\pro0|e0|reg0|regs~288\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~288_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~286_combout\))) # 
-- (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[0]~0_combout\,
	datab => \pro0|e0|reg0|regs~287_combout\,
	datac => \pro0|e0|reg0|regs~286_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~288_combout\);

-- Location: LCFF_X21_Y5_N11
\pro0|e0|reg0|regs~142\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~289_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~142_regout\);

-- Location: LCCOMB_X21_Y5_N10
\pro0|e0|reg0|regs~289\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~289_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[10]~17_combout\))) # (!\rtl~7_combout\ & (\pro0|e0|reg0|regs~142_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~7_combout\,
	datac => \pro0|e0|reg0|regs~142_regout\,
	datad => \pro0|e0|d[10]~17_combout\,
	combout => \pro0|e0|reg0|regs~289_combout\);

-- Location: LCCOMB_X21_Y5_N4
\pro0|e0|reg0|regs~290\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~290_combout\ = (\pro0|e0|reg0|regs~288_combout\ & ((\pro0|e0|reg0|regs~289_combout\) # ((!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~288_combout\ & (((\pro0|e0|reg0|regs~285_combout\ & 
-- \pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~289_combout\,
	datab => \pro0|e0|reg0|regs~285_combout\,
	datac => \pro0|e0|reg0|regs~288_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~290_combout\);

-- Location: LCCOMB_X21_Y5_N0
\pro0|e0|reg0|regs~294\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~294_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\) # ((\pro0|e0|reg0|regs~292_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & (!\pro0|co|c0|addr_a[1]~1_combout\ & 
-- ((\pro0|e0|reg0|regs~293_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[0]~0_combout\,
	datab => \pro0|co|c0|addr_a[1]~1_combout\,
	datac => \pro0|e0|reg0|regs~292_combout\,
	datad => \pro0|e0|reg0|regs~293_combout\,
	combout => \pro0|e0|reg0|regs~294_combout\);

-- Location: LCCOMB_X21_Y5_N14
\pro0|e0|reg0|regs~296\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~296_combout\ = (\pro0|e0|reg0|regs~294_combout\ & (((\pro0|e0|reg0|regs~295_combout\) # (!\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|e0|reg0|regs~294_combout\ & (\pro0|e0|reg0|regs~291_combout\ & 
-- ((\pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~291_combout\,
	datab => \pro0|e0|reg0|regs~294_combout\,
	datac => \pro0|e0|reg0|regs~295_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~296_combout\);

-- Location: LCCOMB_X20_Y5_N12
\pro0|e0|reg0|regs~297\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~297_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~290_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~296_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|addr_a[2]~2_combout\,
	datac => \pro0|e0|reg0|regs~296_combout\,
	datad => \pro0|e0|reg0|regs~290_combout\,
	combout => \pro0|e0|reg0|regs~297_combout\);

-- Location: LCFF_X16_Y6_N1
\pro0|e0|reg0|regs~95\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~300_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~95_regout\);

-- Location: LCCOMB_X16_Y6_N0
\pro0|e0|reg0|regs~300\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~300_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[11]~18_combout\))) # (!\rtl~6_combout\ & (\pro0|e0|reg0|regs~95_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~6_combout\,
	datac => \pro0|e0|reg0|regs~95_regout\,
	datad => \pro0|e0|d[11]~18_combout\,
	combout => \pro0|e0|reg0|regs~300_combout\);

-- Location: LCCOMB_X15_Y6_N18
\pro0|e0|reg0|regs~301\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~301_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~299_combout\))) # 
-- (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[0]~0_combout\,
	datab => \pro0|e0|reg0|regs~300_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|e0|reg0|regs~299_combout\,
	combout => \pro0|e0|reg0|regs~301_combout\);

-- Location: LCCOMB_X15_Y6_N12
\pro0|e0|reg0|regs~303\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~303_combout\ = (\pro0|e0|reg0|regs~301_combout\ & ((\pro0|e0|reg0|regs~302_combout\) # ((!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~301_combout\ & (((\pro0|e0|reg0|regs~298_combout\ & 
-- \pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~302_combout\,
	datab => \pro0|e0|reg0|regs~301_combout\,
	datac => \pro0|e0|reg0|regs~298_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~303_combout\);

-- Location: LCFF_X16_Y6_N25
\pro0|e0|reg0|regs~63\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~304_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~63_regout\);

-- Location: LCCOMB_X16_Y6_N24
\pro0|e0|reg0|regs~304\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~304_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[11]~18_combout\))) # (!\rtl~0_combout\ & (\pro0|e0|reg0|regs~63_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datac => \pro0|e0|reg0|regs~63_regout\,
	datad => \pro0|e0|d[11]~18_combout\,
	combout => \pro0|e0|reg0|regs~304_combout\);

-- Location: LCFF_X16_Y6_N13
\pro0|e0|reg0|regs~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~306_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~31_regout\);

-- Location: LCCOMB_X16_Y6_N12
\pro0|e0|reg0|regs~306\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~306_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[11]~18_combout\))) # (!\rtl~2_combout\ & (\pro0|e0|reg0|regs~31_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~2_combout\,
	datac => \pro0|e0|reg0|regs~31_regout\,
	datad => \pro0|e0|d[11]~18_combout\,
	combout => \pro0|e0|reg0|regs~306_combout\);

-- Location: LCCOMB_X18_Y5_N0
\pro0|e0|reg0|regs~307\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~307_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~305_combout\))) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~306_combout\,
	datac => \pro0|e0|reg0|regs~305_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~307_combout\);

-- Location: LCCOMB_X16_Y6_N20
\pro0|e0|reg0|regs~309\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~309_combout\ = (\pro0|e0|reg0|regs~307_combout\ & ((\pro0|e0|reg0|regs~308_combout\) # ((!\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|e0|reg0|regs~307_combout\ & (((\pro0|e0|reg0|regs~304_combout\ & 
-- \pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~307_combout\,
	datab => \pro0|e0|reg0|regs~308_combout\,
	datac => \pro0|e0|reg0|regs~304_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~309_combout\);

-- Location: LCCOMB_X15_Y6_N30
\pro0|e0|reg0|regs~310\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~310_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~303_combout\)) # (!\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~309_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~303_combout\,
	datac => \pro0|co|c0|addr_a[2]~2_combout\,
	datad => \pro0|e0|reg0|regs~309_combout\,
	combout => \pro0|e0|reg0|regs~310_combout\);

-- Location: LCFF_X16_Y5_N7
\pro0|e0|reg0|regs~128\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~312_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~128_regout\);

-- Location: LCCOMB_X16_Y5_N6
\pro0|e0|reg0|regs~312\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~312_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[12]~19_combout\))) # (!\rtl~5_combout\ & (\pro0|e0|reg0|regs~128_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5_combout\,
	datac => \pro0|e0|reg0|regs~128_regout\,
	datad => \pro0|e0|d[12]~19_combout\,
	combout => \pro0|e0|reg0|regs~312_combout\);

-- Location: LCFF_X16_Y5_N29
\pro0|e0|reg0|regs~96\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~313_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~96_regout\);

-- Location: LCCOMB_X16_Y5_N28
\pro0|e0|reg0|regs~313\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~313_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[12]~19_combout\))) # (!\rtl~6_combout\ & (\pro0|e0|reg0|regs~96_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datac => \pro0|e0|reg0|regs~96_regout\,
	datad => \pro0|e0|d[12]~19_combout\,
	combout => \pro0|e0|reg0|regs~313_combout\);

-- Location: LCCOMB_X18_Y5_N22
\pro0|e0|reg0|regs~314\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~314_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|e0|reg0|regs~312_combout\) # (\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~313_combout\ & 
-- ((!\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~313_combout\,
	datac => \pro0|e0|reg0|regs~312_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~314_combout\);

-- Location: LCCOMB_X18_Y5_N12
\pro0|e0|reg0|regs~316\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~316_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~314_combout\ & (\pro0|e0|reg0|regs~315_combout\)) # (!\pro0|e0|reg0|regs~314_combout\ & ((\pro0|e0|reg0|regs~311_combout\))))) # (!\pro0|co|c0|addr_a[0]~0_combout\ 
-- & (((\pro0|e0|reg0|regs~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~315_combout\,
	datab => \pro0|co|c0|addr_a[0]~0_combout\,
	datac => \pro0|e0|reg0|regs~311_combout\,
	datad => \pro0|e0|reg0|regs~314_combout\,
	combout => \pro0|e0|reg0|regs~316_combout\);

-- Location: LCCOMB_X18_Y5_N10
\pro0|e0|reg0|regs~320\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~320_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~318_combout\)) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~319_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~318_combout\,
	datac => \pro0|e0|reg0|regs~319_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~320_combout\);

-- Location: LCCOMB_X18_Y5_N8
\pro0|e0|reg0|regs~322\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~322_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~320_combout\ & ((\pro0|e0|reg0|regs~321_combout\))) # (!\pro0|e0|reg0|regs~320_combout\ & (\pro0|e0|reg0|regs~317_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ 
-- & (((\pro0|e0|reg0|regs~320_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~317_combout\,
	datac => \pro0|e0|reg0|regs~321_combout\,
	datad => \pro0|e0|reg0|regs~320_combout\,
	combout => \pro0|e0|reg0|regs~322_combout\);

-- Location: LCCOMB_X18_Y5_N30
\pro0|e0|reg0|regs~323\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~323_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~316_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~322_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[2]~2_combout\,
	datac => \pro0|e0|reg0|regs~322_combout\,
	datad => \pro0|e0|reg0|regs~316_combout\,
	combout => \pro0|e0|reg0|regs~323_combout\);

-- Location: LCFF_X14_Y6_N31
\pro0|e0|reg0|regs~129\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~325_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~129_regout\);

-- Location: LCCOMB_X14_Y6_N30
\pro0|e0|reg0|regs~325\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~325_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[13]~20_combout\))) # (!\rtl~5_combout\ & (\pro0|e0|reg0|regs~129_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~5_combout\,
	datac => \pro0|e0|reg0|regs~129_regout\,
	datad => \pro0|e0|d[13]~20_combout\,
	combout => \pro0|e0|reg0|regs~325_combout\);

-- Location: LCFF_X14_Y6_N17
\pro0|e0|reg0|regs~97\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~326_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~97_regout\);

-- Location: LCCOMB_X14_Y6_N16
\pro0|e0|reg0|regs~326\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~326_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[13]~20_combout\))) # (!\rtl~6_combout\ & (\pro0|e0|reg0|regs~97_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~6_combout\,
	datac => \pro0|e0|reg0|regs~97_regout\,
	datad => \pro0|e0|d[13]~20_combout\,
	combout => \pro0|e0|reg0|regs~326_combout\);

-- Location: LCCOMB_X15_Y6_N16
\pro0|e0|reg0|regs~327\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~327_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|e0|reg0|regs~325_combout\) # (\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~326_combout\ & 
-- ((!\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~326_combout\,
	datac => \pro0|e0|reg0|regs~325_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~327_combout\);

-- Location: LCCOMB_X15_Y6_N10
\pro0|e0|reg0|regs~329\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~329_combout\ = (\pro0|e0|reg0|regs~327_combout\ & (((\pro0|e0|reg0|regs~328_combout\) # (!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~327_combout\ & (\pro0|e0|reg0|regs~324_combout\ & 
-- ((\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~324_combout\,
	datab => \pro0|e0|reg0|regs~328_combout\,
	datac => \pro0|e0|reg0|regs~327_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~329_combout\);

-- Location: LCCOMB_X14_Y6_N26
\pro0|e0|reg0|regs~333\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~333_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|co|c0|addr_a[0]~0_combout\)) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~331_combout\))) # (!\pro0|co|c0|addr_a[0]~0_combout\ 
-- & (\pro0|e0|reg0|regs~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|co|c0|addr_a[0]~0_combout\,
	datac => \pro0|e0|reg0|regs~332_combout\,
	datad => \pro0|e0|reg0|regs~331_combout\,
	combout => \pro0|e0|reg0|regs~333_combout\);

-- Location: LCCOMB_X15_Y6_N4
\pro0|e0|reg0|regs~335\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~335_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~333_combout\ & ((\pro0|e0|reg0|regs~334_combout\))) # (!\pro0|e0|reg0|regs~333_combout\ & (\pro0|e0|reg0|regs~330_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ 
-- & (((\pro0|e0|reg0|regs~333_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~330_combout\,
	datab => \pro0|e0|reg0|regs~334_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|e0|reg0|regs~333_combout\,
	combout => \pro0|e0|reg0|regs~335_combout\);

-- Location: LCCOMB_X15_Y6_N22
\pro0|e0|reg0|regs~336\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~336_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~329_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~335_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~335_combout\,
	datac => \pro0|co|c0|addr_a[2]~2_combout\,
	datad => \pro0|e0|reg0|regs~329_combout\,
	combout => \pro0|e0|reg0|regs~336_combout\);

-- Location: LCCOMB_X18_Y5_N24
\pro0|e0|reg0|regs~340\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~340_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\) # ((\pro0|e0|reg0|regs~338_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & (!\pro0|co|c0|addr_a[0]~0_combout\ & 
-- ((\pro0|e0|reg0|regs~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|co|c0|addr_a[0]~0_combout\,
	datac => \pro0|e0|reg0|regs~338_combout\,
	datad => \pro0|e0|reg0|regs~339_combout\,
	combout => \pro0|e0|reg0|regs~340_combout\);

-- Location: LCCOMB_X18_Y5_N26
\pro0|e0|reg0|regs~342\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~342_combout\ = (\pro0|e0|reg0|regs~340_combout\ & (((\pro0|e0|reg0|regs~341_combout\) # (!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~340_combout\ & (\pro0|e0|reg0|regs~337_combout\ & 
-- ((\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~337_combout\,
	datab => \pro0|e0|reg0|regs~341_combout\,
	datac => \pro0|e0|reg0|regs~340_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~342_combout\);

-- Location: LCCOMB_X15_Y5_N6
\pro0|e0|reg0|regs~346\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~346_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~344_combout\))) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~345_combout\,
	datac => \pro0|e0|reg0|regs~344_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~346_combout\);

-- Location: LCCOMB_X18_Y5_N20
\pro0|e0|reg0|regs~348\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~348_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~346_combout\ & (\pro0|e0|reg0|regs~347_combout\)) # (!\pro0|e0|reg0|regs~346_combout\ & ((\pro0|e0|reg0|regs~343_combout\))))) # (!\pro0|co|c0|addr_a[1]~1_combout\ 
-- & (((\pro0|e0|reg0|regs~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~347_combout\,
	datac => \pro0|e0|reg0|regs~343_combout\,
	datad => \pro0|e0|reg0|regs~346_combout\,
	combout => \pro0|e0|reg0|regs~348_combout\);

-- Location: LCCOMB_X18_Y5_N18
\pro0|e0|reg0|regs~349\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~349_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~342_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~348_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[2]~2_combout\,
	datac => \pro0|e0|reg0|regs~348_combout\,
	datad => \pro0|e0|reg0|regs~342_combout\,
	combout => \pro0|e0|reg0|regs~349_combout\);

-- Location: LCFF_X21_Y7_N13
\pro0|e0|reg0|regs~99\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~352_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~99_regout\);

-- Location: LCCOMB_X21_Y7_N12
\pro0|e0|reg0|regs~352\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~352_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[15]~22_combout\))) # (!\rtl~6_combout\ & (\pro0|e0|reg0|regs~99_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datac => \pro0|e0|reg0|regs~99_regout\,
	datad => \pro0|e0|d[15]~22_combout\,
	combout => \pro0|e0|reg0|regs~352_combout\);

-- Location: LCFF_X21_Y7_N7
\pro0|e0|reg0|regs~147\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~354_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~147_regout\);

-- Location: LCCOMB_X21_Y7_N6
\pro0|e0|reg0|regs~354\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~354_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[15]~22_combout\))) # (!\rtl~7_combout\ & (\pro0|e0|reg0|regs~147_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datac => \pro0|e0|reg0|regs~147_regout\,
	datad => \pro0|e0|d[15]~22_combout\,
	combout => \pro0|e0|reg0|regs~354_combout\);

-- Location: LCCOMB_X20_Y7_N28
\pro0|e0|reg0|regs~359\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~359_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~357_combout\))) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~358_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~358_combout\,
	datac => \pro0|e0|reg0|regs~357_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~359_combout\);

-- Location: LCCOMB_X16_Y9_N10
\pro0|e0|reg0|regs~373\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~373_combout\ = (\pro0|co|ir\(10) & ((\pro0|co|ir\(9)) # ((\pro0|e0|reg0|regs~169_combout\)))) # (!\pro0|co|ir\(10) & (!\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~170_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~169_combout\,
	datad => \pro0|e0|reg0|regs~170_combout\,
	combout => \pro0|e0|reg0|regs~373_combout\);

-- Location: LCCOMB_X16_Y9_N24
\pro0|e0|reg0|regs~374\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~374_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~373_combout\ & (\pro0|e0|reg0|regs~172_combout\)) # (!\pro0|e0|reg0|regs~373_combout\ & ((\pro0|e0|reg0|regs~168_combout\))))) # (!\pro0|co|ir\(9) & 
-- (((\pro0|e0|reg0|regs~373_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~172_combout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~168_combout\,
	datad => \pro0|e0|reg0|regs~373_combout\,
	combout => \pro0|e0|reg0|regs~374_combout\);

-- Location: LCCOMB_X16_Y9_N26
\pro0|e0|reg0|regs~375\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~375_combout\ = (\pro0|co|ir\(10) & (((\pro0|co|ir\(9))))) # (!\pro0|co|ir\(10) & ((\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~175_combout\))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~176_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~176_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~175_combout\,
	combout => \pro0|e0|reg0|regs~375_combout\);

-- Location: LCCOMB_X19_Y6_N20
\pro0|e0|reg0|regs~388\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~388_combout\ = (\pro0|co|ir\(9) & (\pro0|co|ir\(10))) # (!\pro0|co|ir\(9) & ((\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~221_combout\))) # (!\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~222_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~222_combout\,
	datad => \pro0|e0|reg0|regs~221_combout\,
	combout => \pro0|e0|reg0|regs~388_combout\);

-- Location: LCCOMB_X19_Y6_N22
\pro0|e0|reg0|regs~389\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~389_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~388_combout\ & (\pro0|e0|reg0|regs~224_combout\)) # (!\pro0|e0|reg0|regs~388_combout\ & ((\pro0|e0|reg0|regs~220_combout\))))) # (!\pro0|co|ir\(9) & 
-- (((\pro0|e0|reg0|regs~388_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~224_combout\,
	datac => \pro0|e0|reg0|regs~388_combout\,
	datad => \pro0|e0|reg0|regs~220_combout\,
	combout => \pro0|e0|reg0|regs~389_combout\);

-- Location: LCCOMB_X20_Y6_N6
\pro0|e0|reg0|regs~390\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~390_combout\ = (\pro0|co|ir\(10) & (((\pro0|co|ir\(9))))) # (!\pro0|co|ir\(10) & ((\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~227_combout\))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~228_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~227_combout\,
	combout => \pro0|e0|reg0|regs~390_combout\);

-- Location: LCCOMB_X19_Y7_N26
\pro0|e0|reg0|regs~393\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~393_combout\ = (\pro0|co|ir\(9) & (\pro0|co|ir\(10))) # (!\pro0|co|ir\(9) & ((\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~234_combout\)) # (!\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~235_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~234_combout\,
	datad => \pro0|e0|reg0|regs~235_combout\,
	combout => \pro0|e0|reg0|regs~393_combout\);

-- Location: LCCOMB_X19_Y7_N12
\pro0|e0|reg0|regs~394\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~394_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~393_combout\ & ((\pro0|e0|reg0|regs~237_combout\))) # (!\pro0|e0|reg0|regs~393_combout\ & (\pro0|e0|reg0|regs~233_combout\)))) # (!\pro0|co|ir\(9) & 
-- (\pro0|e0|reg0|regs~393_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~393_combout\,
	datac => \pro0|e0|reg0|regs~233_combout\,
	datad => \pro0|e0|reg0|regs~237_combout\,
	combout => \pro0|e0|reg0|regs~394_combout\);

-- Location: LCCOMB_X16_Y7_N12
\pro0|e0|reg0|regs~407\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~407_combout\ = (\pro0|co|ir\(9) & (\pro0|co|ir\(10))) # (!\pro0|co|ir\(9) & ((\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~273_combout\)) # (!\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~274_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~273_combout\,
	datad => \pro0|e0|reg0|regs~274_combout\,
	combout => \pro0|e0|reg0|regs~407_combout\);

-- Location: LCCOMB_X15_Y7_N4
\pro0|e0|reg0|regs~409\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~409_combout\ = (\pro0|co|ir\(9) & ((\pro0|co|ir\(10)) # ((\pro0|e0|reg0|regs~279_combout\)))) # (!\pro0|co|ir\(9) & (!\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~279_combout\,
	datad => \pro0|e0|reg0|regs~280_combout\,
	combout => \pro0|e0|reg0|regs~409_combout\);

-- Location: LCCOMB_X15_Y7_N2
\pro0|e0|reg0|regs~410\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~410_combout\ = (\pro0|e0|reg0|regs~409_combout\ & ((\pro0|e0|reg0|regs~282_combout\) # ((!\pro0|co|ir\(10))))) # (!\pro0|e0|reg0|regs~409_combout\ & (((\pro0|e0|reg0|regs~278_combout\ & \pro0|co|ir\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~282_combout\,
	datab => \pro0|e0|reg0|regs~409_combout\,
	datac => \pro0|e0|reg0|regs~278_combout\,
	datad => \pro0|co|ir\(10),
	combout => \pro0|e0|reg0|regs~410_combout\);

-- Location: LCCOMB_X16_Y5_N12
\pro0|e0|reg0|regs~419\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~419_combout\ = (\pro0|co|ir\(10) & (((\pro0|co|ir\(9)) # (\pro0|e0|reg0|regs~312_combout\)))) # (!\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~313_combout\ & (!\pro0|co|ir\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~313_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~312_combout\,
	combout => \pro0|e0|reg0|regs~419_combout\);

-- Location: LCCOMB_X14_Y6_N6
\pro0|e0|reg0|regs~423\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~423_combout\ = (\pro0|co|ir\(10) & ((\pro0|co|ir\(9)) # ((\pro0|e0|reg0|regs~325_combout\)))) # (!\pro0|co|ir\(10) & (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~326_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~326_combout\,
	datad => \pro0|e0|reg0|regs~325_combout\,
	combout => \pro0|e0|reg0|regs~423_combout\);

-- Location: LCCOMB_X21_Y7_N18
\mem0|sramContr|SRAM_DQ~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~39_combout\ = (\pro0|co|ir\(10) & ((\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~354_combout\))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~351_combout\)))) # (!\pro0|co|ir\(10) & (\pro0|co|ir\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~351_combout\,
	datad => \pro0|e0|reg0|regs~354_combout\,
	combout => \mem0|sramContr|SRAM_DQ~39_combout\);

-- Location: LCCOMB_X21_Y7_N16
\mem0|sramContr|SRAM_DQ~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~40_combout\ = ((\pro0|co|ir\(10) & ((\mem0|sramContr|SRAM_DQ~39_combout\))) # (!\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~350_combout\) # (!\mem0|sramContr|SRAM_DQ~39_combout\)))) # (!\pro0|co|ir\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(11),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~350_combout\,
	datad => \mem0|sramContr|SRAM_DQ~39_combout\,
	combout => \mem0|sramContr|SRAM_DQ~40_combout\);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLOCK_50~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CLOCK_50,
	combout => \CLOCK_50~combout\);

-- Location: CLKCTRL_G12
\clock8~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock8~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock8~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\CLOCK_50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~clkctrl_outclk\);

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[0]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(0),
	combout => \SRAM_DQ[0]~0\);

-- Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[1]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(1),
	combout => \SRAM_DQ[1]~1\);

-- Location: PIN_AA7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[2]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(2),
	combout => \SRAM_DQ[2]~2\);

-- Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[3]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(3),
	combout => \SRAM_DQ[3]~3\);

-- Location: PIN_AA8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[4]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(4),
	combout => \SRAM_DQ[4]~4\);

-- Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[5]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(5),
	combout => \SRAM_DQ[5]~5\);

-- Location: PIN_AA9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[6]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(6),
	combout => \SRAM_DQ[6]~6\);

-- Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[7]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(7),
	combout => \SRAM_DQ[7]~7\);

-- Location: PIN_Y9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[8]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(8),
	combout => \SRAM_DQ[8]~8\);

-- Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[9]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(9),
	combout => \SRAM_DQ[9]~9\);

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[10]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(10),
	combout => \SRAM_DQ[10]~10\);

-- Location: PIN_U9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[11]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(11),
	combout => \SRAM_DQ[11]~11\);

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[12]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(12),
	combout => \SRAM_DQ[12]~12\);

-- Location: PIN_W8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[13]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(13),
	combout => \SRAM_DQ[13]~13\);

-- Location: PIN_V8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[14]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(14),
	combout => \SRAM_DQ[14]~14\);

-- Location: PIN_U8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_DQ[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_DQ[15]$latch~combout\,
	oe => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => SRAM_DQ(15),
	combout => \SRAM_DQ[15]~15\);

-- Location: LCCOMB_X19_Y9_N14
\pro0|co|m0|state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|m0|state~0_combout\ = !\pro0|co|m0|state~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \pro0|co|m0|state~regout\,
	combout => \pro0|co|m0|state~0_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SW[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SW(9),
	combout => \SW~combout\(9));

-- Location: LCFF_X19_Y9_N17
\pro0|co|m0|state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|m0|state~0_combout\,
	aclr => \SW~combout\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|m0|state~regout\);

-- Location: LCCOMB_X23_Y4_N0
\clock8_counter[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock8_counter[0]~1_combout\ = !clock8_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clock8_counter(0),
	combout => \clock8_counter[0]~1_combout\);

-- Location: LCFF_X23_Y4_N1
\clock8_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock8_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock8_counter(0));

-- Location: LCFF_X23_Y4_N19
\clock8_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock8_counter(2));

-- Location: LCCOMB_X23_Y4_N6
\clock8_counter[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock8_counter[1]~0_combout\ = clock8_counter(1) $ (clock8_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => clock8_counter(1),
	datad => clock8_counter(0),
	combout => \clock8_counter[1]~0_combout\);

-- Location: LCFF_X23_Y4_N7
\clock8_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock8_counter[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => clock8_counter(1));

-- Location: LCCOMB_X23_Y4_N18
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = clock8_counter(2) $ (((clock8_counter(0) & clock8_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => clock8_counter(0),
	datac => clock8_counter(2),
	datad => clock8_counter(1),
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X23_Y4_N10
\clock8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \clock8~feeder_combout\ = \Add0~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Add0~0_combout\,
	combout => \clock8~feeder_combout\);

-- Location: LCFF_X23_Y4_N11
clock8 : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \clock8~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \clock8~regout\);

-- Location: LCCOMB_X23_Y4_N30
\mem0|sramContr|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|Selector0~0_combout\ = (!\mem0|sramContr|state.STOP~regout\ & ((\mem0|sramContr|state.IDLE~regout\) # (!\clock8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clock8~regout\,
	datac => \mem0|sramContr|state.IDLE~regout\,
	datad => \mem0|sramContr|state.STOP~regout\,
	combout => \mem0|sramContr|Selector0~0_combout\);

-- Location: LCFF_X23_Y4_N31
\mem0|sramContr|state.IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|sramContr|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sramContr|state.IDLE~regout\);

-- Location: LCCOMB_X23_Y4_N24
\mem0|sramContr|state~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|state~10_combout\ = (!\clock8~regout\ & !\mem0|sramContr|state.IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clock8~regout\,
	datad => \mem0|sramContr|state.IDLE~regout\,
	combout => \mem0|sramContr|state~10_combout\);

-- Location: LCFF_X23_Y4_N25
\mem0|sramContr|state.SETUP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|sramContr|state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sramContr|state.SETUP~regout\);

-- Location: LCCOMB_X25_Y4_N12
\mem0|sramContr|state.WRITE~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|state.WRITE~feeder_combout\ = \mem0|sramContr|state.SETUP~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem0|sramContr|state.SETUP~regout\,
	combout => \mem0|sramContr|state.WRITE~feeder_combout\);

-- Location: LCFF_X25_Y4_N13
\mem0|sramContr|state.WRITE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|sramContr|state.WRITE~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sramContr|state.WRITE~regout\);

-- Location: LCCOMB_X25_Y4_N26
\mem0|sramContr|state.STOP~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|state.STOP~feeder_combout\ = \mem0|sramContr|state.WRITE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mem0|sramContr|state.WRITE~regout\,
	combout => \mem0|sramContr|state.STOP~feeder_combout\);

-- Location: LCFF_X25_Y4_N27
\mem0|sramContr|state.STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLOCK_50~clkctrl_outclk\,
	datain => \mem0|sramContr|state.STOP~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mem0|sramContr|state.STOP~regout\);

-- Location: CLKCTRL_G14
\mem0|sramContr|state.STOP~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem0|sramContr|state.STOP~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem0|sramContr|state.STOP~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y8_N24
\mem0|sramContr|dataReaded~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~5_combout\ = (\mem0|sramContr|SRAM_UB_N~0_combout\ & ((\SRAM_DQ[15]~15\))) # (!\mem0|sramContr|SRAM_UB_N~0_combout\ & (\SRAM_DQ[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[7]~7\,
	datac => \SRAM_DQ[15]~15\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~5_combout\);

-- Location: LCCOMB_X20_Y8_N26
\mem0|sramContr|dataReaded[15]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(15) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~5_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(15),
	datac => \mem0|sramContr|dataReaded~5_combout\,
	datad => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	combout => \mem0|sramContr|dataReaded\(15));

-- Location: LCCOMB_X19_Y7_N16
\pro0|co|ir~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~3_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(15),
	combout => \pro0|co|ir~3_combout\);

-- Location: LCCOMB_X19_Y9_N16
\pro0|co|ir[9]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir[9]~1_combout\ = (\SW~combout\(9)) # (!\pro0|co|m0|state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW~combout\(9),
	datac => \pro0|co|m0|state~regout\,
	combout => \pro0|co|ir[9]~1_combout\);

-- Location: LCFF_X18_Y9_N25
\pro0|co|ir[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~3_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(15));

-- Location: LCCOMB_X18_Y7_N0
\mem0|sramContr|dataReaded~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~1_combout\ = (\mem0|sramContr|SRAM_UB_N~0_combout\ & ((\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[15]~15\)) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[12]~12\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[15]~15\,
	datab => \SRAM_DQ[12]~12\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~1_combout\);

-- Location: LCCOMB_X18_Y7_N6
\mem0|sramContr|dataReaded~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~2_combout\ = (\mem0|sramContr|dataReaded~1_combout\) # ((!\mem0|sramContr|SRAM_UB_N~0_combout\ & \SRAM_DQ[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|SRAM_UB_N~0_combout\,
	datac => \SRAM_DQ[7]~7\,
	datad => \mem0|sramContr|dataReaded~1_combout\,
	combout => \mem0|sramContr|dataReaded~2_combout\);

-- Location: LCCOMB_X18_Y7_N30
\mem0|sramContr|dataReaded[12]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(12) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~2_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(12),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~2_combout\,
	combout => \mem0|sramContr|dataReaded\(12));

-- Location: LCCOMB_X18_Y7_N8
\pro0|co|ir~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~0_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(12),
	combout => \pro0|co|ir~0_combout\);

-- Location: LCFF_X18_Y9_N1
\pro0|co|ir[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~0_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(12));

-- Location: LCCOMB_X18_Y9_N28
\pro0|co|c0|immed_x2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|immed_x2~combout\ = (!\pro0|co|ir\(15) & ((\pro0|co|ir\(13) & (!\pro0|co|ir\(14) & \pro0|co|ir\(12))) # (!\pro0|co|ir\(13) & (\pro0|co|ir\(14) & !\pro0|co|ir\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(13),
	datab => \pro0|co|ir\(14),
	datac => \pro0|co|ir\(15),
	datad => \pro0|co|ir\(12),
	combout => \pro0|co|c0|immed_x2~combout\);

-- Location: LCCOMB_X18_Y9_N16
\pro0|e0|y[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|y[0]~2_combout\ = (\pro0|co|ir\(0) & !\pro0|co|c0|immed_x2~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(0),
	datad => \pro0|co|c0|immed_x2~combout\,
	combout => \pro0|e0|y[0]~2_combout\);

-- Location: LCCOMB_X18_Y8_N0
\pro0|e0|alu0|Add0~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~15_combout\ = (\pro0|e0|reg0|regs~193_combout\ & (\pro0|e0|y[0]~2_combout\ $ (VCC))) # (!\pro0|e0|reg0|regs~193_combout\ & (\pro0|e0|y[0]~2_combout\ & VCC))
-- \pro0|e0|alu0|Add0~16\ = CARRY((\pro0|e0|reg0|regs~193_combout\ & \pro0|e0|y[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~193_combout\,
	datab => \pro0|e0|y[0]~2_combout\,
	datad => VCC,
	combout => \pro0|e0|alu0|Add0~15_combout\,
	cout => \pro0|e0|alu0|Add0~16\);

-- Location: LCCOMB_X20_Y8_N30
\mem0|sramContr|dataReaded~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~9_combout\ = (\mem0|sramContr|SRAM_UB_N~0_combout\ & ((\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[15]~15\)) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[8]~8\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[15]~15\,
	datab => \SRAM_DQ[8]~8\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~9_combout\);

-- Location: LCCOMB_X20_Y8_N0
\mem0|sramContr|dataReaded~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~10_combout\ = (\mem0|sramContr|dataReaded~9_combout\) # ((!\mem0|sramContr|SRAM_UB_N~0_combout\ & \SRAM_DQ[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_UB_N~0_combout\,
	datac => \SRAM_DQ[7]~7\,
	datad => \mem0|sramContr|dataReaded~9_combout\,
	combout => \mem0|sramContr|dataReaded~10_combout\);

-- Location: LCCOMB_X20_Y8_N14
\mem0|sramContr|dataReaded[8]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(8) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~10_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(8),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~10_combout\,
	combout => \mem0|sramContr|dataReaded\(8));

-- Location: LCCOMB_X20_Y8_N8
\pro0|co|ir~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~7_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datac => \mem0|sramContr|dataReaded\(8),
	combout => \pro0|co|ir~7_combout\);

-- Location: LCFF_X19_Y8_N9
\pro0|co|ir[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~7_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(8));

-- Location: LCCOMB_X19_Y8_N12
\pro0|e0|alu0|Mux15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux15~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|reg0|regs~193_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|e0|y[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~193_combout\,
	datab => \pro0|co|ir\(8),
	datac => \pro0|e0|y[0]~2_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux15~0_combout\);

-- Location: LCCOMB_X19_Y8_N0
\mem0|sramContr|SRAM_LB_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_LB_N~0_combout\ = (\mem0|sramContr|process_1~0_combout\ & ((\pro0|e0|alu0|Mux15~0_combout\) # ((!\pro0|co|c0|Mux3~0_combout\ & \pro0|e0|alu0|Add0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|process_1~0_combout\,
	datab => \pro0|co|c0|Mux3~0_combout\,
	datac => \pro0|e0|alu0|Add0~15_combout\,
	datad => \pro0|e0|alu0|Mux15~0_combout\,
	combout => \mem0|sramContr|SRAM_LB_N~0_combout\);

-- Location: LCCOMB_X19_Y8_N16
\mem0|sramContr|dataReaded~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~3_combout\ = (\mem0|sramContr|SRAM_UB_N~0_combout\ & ((\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[15]~15\))) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[14]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[14]~14\,
	datab => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datac => \SRAM_DQ[15]~15\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~3_combout\);

-- Location: LCCOMB_X19_Y8_N10
\mem0|sramContr|dataReaded~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~4_combout\ = (\mem0|sramContr|dataReaded~3_combout\) # ((\SRAM_DQ[7]~7\ & !\mem0|sramContr|SRAM_UB_N~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[7]~7\,
	datac => \mem0|sramContr|dataReaded~3_combout\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~4_combout\);

-- Location: LCCOMB_X19_Y8_N22
\mem0|sramContr|dataReaded[14]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(14) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~4_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(14),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~4_combout\,
	combout => \mem0|sramContr|dataReaded\(14));

-- Location: LCCOMB_X19_Y9_N8
\pro0|co|ir~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~2_combout\ = (\mem0|sramContr|dataReaded\(14) & !\pro0|co|m0|state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem0|sramContr|dataReaded\(14),
	datad => \pro0|co|m0|state~regout\,
	combout => \pro0|co|ir~2_combout\);

-- Location: LCFF_X18_Y9_N15
\pro0|co|ir[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~2_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(14));

-- Location: LCCOMB_X18_Y9_N26
\pro0|co|c0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|Mux3~0_combout\ = (\pro0|co|ir\(14) & (!\pro0|co|ir\(15) & \pro0|co|ir\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|ir\(14),
	datac => \pro0|co|ir\(15),
	datad => \pro0|co|ir\(12),
	combout => \pro0|co|c0|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y8_N26
\mem0|sramContr|SRAM_UB_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_UB_N~0_combout\ = ((\pro0|e0|alu0|Mux15~0_combout\) # ((!\pro0|co|c0|Mux3~0_combout\ & \pro0|e0|alu0|Add0~15_combout\))) # (!\mem0|sramContr|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|process_1~0_combout\,
	datab => \pro0|co|c0|Mux3~0_combout\,
	datac => \pro0|e0|alu0|Add0~15_combout\,
	datad => \pro0|e0|alu0|Mux15~0_combout\,
	combout => \mem0|sramContr|SRAM_UB_N~0_combout\);

-- Location: LCCOMB_X20_Y8_N6
\mem0|sramContr|dataReaded~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~11_combout\ = (\mem0|sramContr|SRAM_UB_N~0_combout\ & ((\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[15]~15\)) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[9]~9\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[15]~15\,
	datab => \SRAM_DQ[9]~9\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~11_combout\);

-- Location: LCCOMB_X20_Y8_N28
\mem0|sramContr|dataReaded~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~12_combout\ = (\mem0|sramContr|dataReaded~11_combout\) # ((!\mem0|sramContr|SRAM_UB_N~0_combout\ & \SRAM_DQ[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_UB_N~0_combout\,
	datac => \SRAM_DQ[7]~7\,
	datad => \mem0|sramContr|dataReaded~11_combout\,
	combout => \mem0|sramContr|dataReaded~12_combout\);

-- Location: LCCOMB_X20_Y8_N4
\mem0|sramContr|dataReaded[9]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(9) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~12_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(9),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~12_combout\,
	combout => \mem0|sramContr|dataReaded\(9));

-- Location: LCCOMB_X15_Y9_N24
\pro0|co|ir~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~8_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(9),
	combout => \pro0|co|ir~8_combout\);

-- Location: LCFF_X19_Y9_N15
\pro0|co|ir[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~8_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(9));

-- Location: LCCOMB_X21_Y9_N16
\pro0|co|ir~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~6_combout\ = (\mem0|sramContr|dataReaded\(13) & !\pro0|co|m0|state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|dataReaded\(13),
	datad => \pro0|co|m0|state~regout\,
	combout => \pro0|co|ir~6_combout\);

-- Location: LCFF_X18_Y9_N7
\pro0|co|ir[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~6_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(13));

-- Location: LCCOMB_X18_Y9_N20
\pro0|co|c0|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|Mux3~1_combout\ = (!\pro0|co|ir\(15) & (!\pro0|co|ir\(13) & (\pro0|co|ir\(14) & \pro0|co|ir\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(15),
	datab => \pro0|co|ir\(13),
	datac => \pro0|co|ir\(14),
	datad => \pro0|co|ir\(12),
	combout => \pro0|co|c0|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y9_N8
\pro0|e0|d[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[0]~3_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux15~0_combout\) # ((\pro0|e0|alu0|Add0~15_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Mux15~0_combout\,
	datab => \pro0|e0|alu0|Add0~15_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[0]~3_combout\);

-- Location: LCCOMB_X18_Y7_N24
\mem0|sramContr|dataReaded~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~19_combout\ = (\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[8]~8\)) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[0]~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[8]~8\,
	datab => \SRAM_DQ[0]~0\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~19_combout\);

-- Location: LCCOMB_X18_Y7_N28
\mem0|sramContr|dataReaded[0]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(0) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~19_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(0),
	datac => \mem0|sramContr|dataReaded~19_combout\,
	datad => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	combout => \mem0|sramContr|dataReaded\(0));

-- Location: LCCOMB_X18_Y7_N4
\pro0|e0|d[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[0]~4_combout\ = (\pro0|e0|d[0]~3_combout\) # ((!\pro0|co|c0|Mux3~1_combout\ & \mem0|sramContr|dataReaded\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~3_combout\,
	datac => \pro0|co|c0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(0),
	combout => \pro0|e0|d[0]~4_combout\);

-- Location: LCFF_X19_Y9_N23
\pro0|e0|reg0|regs~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~20_regout\);

-- Location: LCCOMB_X18_Y9_N6
\pro0|co|m0|wrd~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|m0|wrd~0_combout\ = (\pro0|co|ir\(12) & ((\pro0|co|ir\(14) & ((!\pro0|co|ir\(13)))) # (!\pro0|co|ir\(14) & (!\pro0|co|ir\(15) & \pro0|co|ir\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(15),
	datab => \pro0|co|ir\(14),
	datac => \pro0|co|ir\(13),
	datad => \pro0|co|ir\(12),
	combout => \pro0|co|m0|wrd~0_combout\);

-- Location: LCCOMB_X20_Y8_N22
\mem0|sramContr|dataReaded~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~13_combout\ = (\mem0|sramContr|SRAM_UB_N~0_combout\ & ((\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[15]~15\)) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[11]~11\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[15]~15\,
	datab => \SRAM_DQ[11]~11\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~13_combout\);

-- Location: LCCOMB_X20_Y8_N20
\mem0|sramContr|dataReaded~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~14_combout\ = (\mem0|sramContr|dataReaded~13_combout\) # ((!\mem0|sramContr|SRAM_UB_N~0_combout\ & \SRAM_DQ[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_UB_N~0_combout\,
	datac => \SRAM_DQ[7]~7\,
	datad => \mem0|sramContr|dataReaded~13_combout\,
	combout => \mem0|sramContr|dataReaded~14_combout\);

-- Location: LCCOMB_X20_Y8_N10
\mem0|sramContr|dataReaded[11]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(11) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~14_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|dataReaded\(11),
	datac => \mem0|sramContr|dataReaded~14_combout\,
	datad => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	combout => \mem0|sramContr|dataReaded\(11));

-- Location: LCCOMB_X21_Y8_N12
\pro0|co|ir~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~9_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(11),
	combout => \pro0|co|ir~9_combout\);

-- Location: LCFF_X20_Y9_N5
\pro0|co|ir[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~9_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(11));

-- Location: LCCOMB_X19_Y8_N24
\mem0|sramContr|dataReaded~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~15_combout\ = (\mem0|sramContr|SRAM_UB_N~0_combout\ & ((\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[15]~15\))) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[10]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[10]~10\,
	datab => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datac => \SRAM_DQ[15]~15\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~15_combout\);

-- Location: LCCOMB_X19_Y8_N6
\mem0|sramContr|dataReaded~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~16_combout\ = (\mem0|sramContr|dataReaded~15_combout\) # ((\SRAM_DQ[7]~7\ & !\mem0|sramContr|SRAM_UB_N~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[7]~7\,
	datac => \mem0|sramContr|dataReaded~15_combout\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~16_combout\);

-- Location: LCCOMB_X19_Y8_N28
\mem0|sramContr|dataReaded[10]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(10) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~16_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(10),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~16_combout\,
	combout => \mem0|sramContr|dataReaded\(10));

-- Location: LCCOMB_X21_Y9_N14
\pro0|co|ir~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~10_combout\ = (\mem0|sramContr|dataReaded\(10) & !\pro0|co|m0|state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(10),
	datad => \pro0|co|m0|state~regout\,
	combout => \pro0|co|ir~10_combout\);

-- Location: LCFF_X20_Y9_N15
\pro0|co|ir[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~10_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(10));

-- Location: LCCOMB_X20_Y9_N6
\rtl~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~11_combout\ = (!\pro0|co|ir\(11) & !\pro0|co|ir\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|ir\(11),
	datad => \pro0|co|ir\(10),
	combout => \rtl~11_combout\);

-- Location: LCCOMB_X19_Y9_N30
\rtl~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~2_combout\ = (\pro0|co|m0|state~regout\ & (!\pro0|co|ir\(9) & (\pro0|co|m0|wrd~0_combout\ & \rtl~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|co|m0|wrd~0_combout\,
	datad => \rtl~11_combout\,
	combout => \rtl~2_combout\);

-- Location: LCCOMB_X19_Y9_N22
\pro0|e0|reg0|regs~189\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~189_combout\ = (\rtl~2_combout\ & (\pro0|e0|d[0]~4_combout\)) # (!\rtl~2_combout\ & ((\pro0|e0|reg0|regs~20_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~4_combout\,
	datac => \pro0|e0|reg0|regs~20_regout\,
	datad => \rtl~2_combout\,
	combout => \pro0|e0|reg0|regs~189_combout\);

-- Location: LCFF_X19_Y9_N21
\pro0|e0|reg0|regs~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~36_regout\);

-- Location: LCCOMB_X19_Y9_N28
\rtl~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~1_combout\ = (\pro0|co|m0|state~regout\ & (\pro0|co|ir\(9) & (\pro0|co|m0|wrd~0_combout\ & \rtl~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|co|m0|wrd~0_combout\,
	datad => \rtl~11_combout\,
	combout => \rtl~1_combout\);

-- Location: LCCOMB_X19_Y9_N20
\pro0|e0|reg0|regs~188\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~188_combout\ = (\rtl~1_combout\ & (\pro0|e0|d[0]~4_combout\)) # (!\rtl~1_combout\ & ((\pro0|e0|reg0|regs~36_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~4_combout\,
	datac => \pro0|e0|reg0|regs~36_regout\,
	datad => \rtl~1_combout\,
	combout => \pro0|e0|reg0|regs~188_combout\);

-- Location: LCCOMB_X21_Y9_N2
\pro0|e0|reg0|regs~365\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~365_combout\ = (\pro0|co|ir\(10) & (\pro0|co|ir\(9))) # (!\pro0|co|ir\(10) & ((\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~188_combout\))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~189_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~189_combout\,
	datad => \pro0|e0|reg0|regs~188_combout\,
	combout => \pro0|e0|reg0|regs~365_combout\);

-- Location: LCFF_X20_Y9_N13
\pro0|e0|reg0|regs~68\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~68_regout\);

-- Location: LCCOMB_X20_Y9_N14
\rtl~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~10_combout\ = (\pro0|co|ir\(10) & !\pro0|co|ir\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|ir\(10),
	datad => \pro0|co|ir\(11),
	combout => \rtl~10_combout\);

-- Location: LCCOMB_X20_Y9_N22
\rtl~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~3_combout\ = (\pro0|co|m0|wrd~0_combout\ & (\pro0|co|m0|state~regout\ & (\rtl~10_combout\ & \pro0|co|ir\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|wrd~0_combout\,
	datab => \pro0|co|m0|state~regout\,
	datac => \rtl~10_combout\,
	datad => \pro0|co|ir\(9),
	combout => \rtl~3_combout\);

-- Location: LCCOMB_X20_Y9_N12
\pro0|e0|reg0|regs~191\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~191_combout\ = (\rtl~3_combout\ & (\pro0|e0|d[0]~4_combout\)) # (!\rtl~3_combout\ & ((\pro0|e0|reg0|regs~68_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~4_combout\,
	datac => \pro0|e0|reg0|regs~68_regout\,
	datad => \rtl~3_combout\,
	combout => \pro0|e0|reg0|regs~191_combout\);

-- Location: LCFF_X20_Y9_N9
\pro0|e0|reg0|regs~52\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~52_regout\);

-- Location: LCCOMB_X20_Y9_N28
\rtl~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~0_combout\ = (!\pro0|co|ir\(9) & (\pro0|co|m0|state~regout\ & (\rtl~10_combout\ & \pro0|co|m0|wrd~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|m0|state~regout\,
	datac => \rtl~10_combout\,
	datad => \pro0|co|m0|wrd~0_combout\,
	combout => \rtl~0_combout\);

-- Location: LCCOMB_X20_Y9_N8
\pro0|e0|reg0|regs~187\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~187_combout\ = (\rtl~0_combout\ & (\pro0|e0|d[0]~4_combout\)) # (!\rtl~0_combout\ & ((\pro0|e0|reg0|regs~52_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~4_combout\,
	datac => \pro0|e0|reg0|regs~52_regout\,
	datad => \rtl~0_combout\,
	combout => \pro0|e0|reg0|regs~187_combout\);

-- Location: LCCOMB_X21_Y9_N28
\pro0|e0|reg0|regs~366\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~366_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~365_combout\ & (\pro0|e0|reg0|regs~191_combout\)) # (!\pro0|e0|reg0|regs~365_combout\ & ((\pro0|e0|reg0|regs~187_combout\))))) # (!\pro0|co|ir\(10) & 
-- (\pro0|e0|reg0|regs~365_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~365_combout\,
	datac => \pro0|e0|reg0|regs~191_combout\,
	datad => \pro0|e0|reg0|regs~187_combout\,
	combout => \pro0|e0|reg0|regs~366_combout\);

-- Location: LCFF_X19_Y9_N5
\pro0|e0|reg0|regs~116\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~182_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~116_regout\);

-- Location: LCCOMB_X20_Y9_N20
\rtl~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~9_combout\ = (\pro0|co|ir\(11) & \pro0|co|ir\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|ir\(11),
	datad => \pro0|co|ir\(10),
	combout => \rtl~9_combout\);

-- Location: LCCOMB_X19_Y9_N0
\rtl~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~5_combout\ = (\pro0|co|m0|state~regout\ & (!\pro0|co|ir\(9) & (\pro0|co|m0|wrd~0_combout\ & \rtl~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|co|m0|wrd~0_combout\,
	datad => \rtl~9_combout\,
	combout => \rtl~5_combout\);

-- Location: LCCOMB_X19_Y9_N4
\pro0|e0|reg0|regs~182\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~182_combout\ = (\rtl~5_combout\ & (\pro0|e0|d[0]~4_combout\)) # (!\rtl~5_combout\ & ((\pro0|e0|reg0|regs~116_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~4_combout\,
	datac => \pro0|e0|reg0|regs~116_regout\,
	datad => \rtl~5_combout\,
	combout => \pro0|e0|reg0|regs~182_combout\);

-- Location: LCFF_X19_Y9_N11
\pro0|e0|reg0|regs~84\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~183_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~84_regout\);

-- Location: LCCOMB_X20_Y9_N4
\rtl~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~8_combout\ = (\pro0|co|ir\(11) & !\pro0|co|ir\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|ir\(11),
	datad => \pro0|co|ir\(10),
	combout => \rtl~8_combout\);

-- Location: LCCOMB_X19_Y9_N26
\rtl~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~6_combout\ = (\pro0|co|m0|state~regout\ & (!\pro0|co|ir\(9) & (\pro0|co|m0|wrd~0_combout\ & \rtl~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|co|m0|wrd~0_combout\,
	datad => \rtl~8_combout\,
	combout => \rtl~6_combout\);

-- Location: LCCOMB_X19_Y9_N10
\pro0|e0|reg0|regs~183\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~183_combout\ = (\rtl~6_combout\ & (\pro0|e0|d[0]~4_combout\)) # (!\rtl~6_combout\ & ((\pro0|e0|reg0|regs~84_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~4_combout\,
	datac => \pro0|e0|reg0|regs~84_regout\,
	datad => \rtl~6_combout\,
	combout => \pro0|e0|reg0|regs~183_combout\);

-- Location: LCCOMB_X21_Y9_N18
\pro0|e0|reg0|regs~363\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~363_combout\ = (\pro0|co|ir\(10) & ((\pro0|co|ir\(9)) # ((\pro0|e0|reg0|regs~182_combout\)))) # (!\pro0|co|ir\(10) & (!\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~183_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~182_combout\,
	datad => \pro0|e0|reg0|regs~183_combout\,
	combout => \pro0|e0|reg0|regs~363_combout\);

-- Location: LCFF_X19_Y9_N19
\pro0|e0|reg0|regs~100\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~181_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~100_regout\);

-- Location: LCCOMB_X19_Y9_N12
\rtl~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~4_combout\ = (\pro0|co|m0|wrd~0_combout\ & (\pro0|co|ir\(9) & (\pro0|co|m0|state~regout\ & \rtl~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|wrd~0_combout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|co|m0|state~regout\,
	datad => \rtl~8_combout\,
	combout => \rtl~4_combout\);

-- Location: LCCOMB_X19_Y9_N18
\pro0|e0|reg0|regs~181\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~181_combout\ = (\rtl~4_combout\ & (\pro0|e0|d[0]~4_combout\)) # (!\rtl~4_combout\ & ((\pro0|e0|reg0|regs~100_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[0]~4_combout\,
	datac => \pro0|e0|reg0|regs~100_regout\,
	datad => \rtl~4_combout\,
	combout => \pro0|e0|reg0|regs~181_combout\);

-- Location: LCCOMB_X21_Y9_N12
\pro0|e0|reg0|regs~364\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~364_combout\ = (\pro0|e0|reg0|regs~363_combout\ & ((\pro0|e0|reg0|regs~185_combout\) # ((!\pro0|co|ir\(9))))) # (!\pro0|e0|reg0|regs~363_combout\ & (((\pro0|co|ir\(9) & \pro0|e0|reg0|regs~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~185_combout\,
	datab => \pro0|e0|reg0|regs~363_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~181_combout\,
	combout => \pro0|e0|reg0|regs~364_combout\);

-- Location: LCCOMB_X21_Y9_N6
\pro0|e0|reg0|regs~367\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~367_combout\ = (\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~364_combout\))) # (!\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~366_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~366_combout\,
	datac => \pro0|co|ir\(11),
	datad => \pro0|e0|reg0|regs~364_combout\,
	combout => \pro0|e0|reg0|regs~367_combout\);

-- Location: CLKCTRL_G13
\mem0|sramContr|state.SETUP~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \mem0|sramContr|state.SETUP~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \mem0|sramContr|state.SETUP~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y7_N18
\mem0|sramContr|SRAM_DQ[0]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[0]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\pro0|e0|reg0|regs~367_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~367_combout\,
	datac => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	datad => \mem0|sramContr|SRAM_DQ[0]$latch~combout\,
	combout => \mem0|sramContr|SRAM_DQ[0]$latch~combout\);

-- Location: LCCOMB_X22_Y9_N16
\pro0|co|c0|wr_m~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|wr_m~0_combout\ = (\pro0|co|ir\(12)) # ((\pro0|co|ir\(13) $ (\pro0|co|ir\(15))) # (!\pro0|co|ir\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(13),
	datab => \pro0|co|ir\(15),
	datac => \pro0|co|ir\(12),
	datad => \pro0|co|ir\(14),
	combout => \pro0|co|c0|wr_m~0_combout\);

-- Location: LCCOMB_X20_Y6_N0
\mem0|sramContr|dataReaded~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~22_combout\ = (\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[13]~13\))) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[5]~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[5]~5\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \SRAM_DQ[13]~13\,
	combout => \mem0|sramContr|dataReaded~22_combout\);

-- Location: LCCOMB_X20_Y6_N30
\mem0|sramContr|dataReaded[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(5) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~22_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(5),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~22_combout\,
	combout => \mem0|sramContr|dataReaded\(5));

-- Location: LCCOMB_X15_Y8_N18
\pro0|co|ir~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~16_combout\ = (\mem0|sramContr|dataReaded\(5) & !\pro0|co|m0|state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem0|sramContr|dataReaded\(5),
	datad => \pro0|co|m0|state~regout\,
	combout => \pro0|co|ir~16_combout\);

-- Location: LCFF_X15_Y8_N19
\pro0|co|ir[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|ir~16_combout\,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(5));

-- Location: LCCOMB_X19_Y8_N4
\mem0|sramContr|dataReaded~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~18_combout\ = (\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[15]~15\))) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[7]~7\,
	datab => \SRAM_DQ[15]~15\,
	datad => \mem0|sramContr|SRAM_LB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~18_combout\);

-- Location: LCCOMB_X19_Y8_N18
\mem0|sramContr|dataReaded[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(7) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~18_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(7),
	datac => \mem0|sramContr|dataReaded~18_combout\,
	datad => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	combout => \mem0|sramContr|dataReaded\(7));

-- Location: LCCOMB_X21_Y9_N8
\pro0|co|ir~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~12_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|m0|state~regout\,
	datac => \mem0|sramContr|dataReaded\(7),
	combout => \pro0|co|ir~12_combout\);

-- Location: LCFF_X20_Y9_N27
\pro0|co|ir[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~12_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(7));

-- Location: LCCOMB_X19_Y7_N24
\mem0|sramContr|dataReaded~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~17_combout\ = (\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[14]~14\)) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[6]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[14]~14\,
	datac => \SRAM_DQ[6]~6\,
	datad => \mem0|sramContr|SRAM_LB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~17_combout\);

-- Location: LCCOMB_X19_Y7_N14
\mem0|sramContr|dataReaded[6]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(6) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~17_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(6),
	datac => \mem0|sramContr|dataReaded~17_combout\,
	datad => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	combout => \mem0|sramContr|dataReaded\(6));

-- Location: LCCOMB_X19_Y7_N18
\pro0|co|ir~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~11_combout\ = (\mem0|sramContr|dataReaded\(6) & !\pro0|co|m0|state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(6),
	datac => \pro0|co|m0|state~regout\,
	combout => \pro0|co|ir~11_combout\);

-- Location: LCFF_X18_Y9_N19
\pro0|co|ir[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~11_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(6));

-- Location: LCCOMB_X16_Y8_N4
\pro0|e0|alu0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux1~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & ((\pro0|co|ir\(6)))) # (!\pro0|co|ir\(8) & (\pro0|co|ir\(7))))) # (!\pro0|co|c0|Mux3~0_combout\ & (\pro0|co|ir\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datab => \pro0|co|ir\(7),
	datac => \pro0|co|ir\(8),
	datad => \pro0|co|ir\(6),
	combout => \pro0|e0|alu0|Mux1~0_combout\);

-- Location: LCCOMB_X16_Y8_N2
\pro0|e0|alu0|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux1~1_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux1~0_combout\))) # (!\pro0|co|c0|Mux3~1_combout\ & (\pro0|co|ir\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datab => \pro0|co|ir\(5),
	datac => \pro0|e0|alu0|Mux1~0_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|alu0|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y8_N12
\pro0|co|c0|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|Mux3~2_combout\ = (\pro0|co|c0|Mux3~1_combout\ & (\pro0|co|ir\(7))) # (!\pro0|co|c0|Mux3~1_combout\ & ((\pro0|co|ir\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~1_combout\,
	datac => \pro0|co|ir\(7),
	datad => \pro0|co|ir\(5),
	combout => \pro0|co|c0|Mux3~2_combout\);

-- Location: LCCOMB_X16_Y8_N0
\pro0|e0|y[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|y[7]~7_combout\ = (\pro0|co|ir\(13) & (\pro0|co|ir\(5))) # (!\pro0|co|ir\(13) & ((\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(7)))) # (!\pro0|co|c0|Mux3~0_combout\ & (\pro0|co|ir\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(13),
	datab => \pro0|co|ir\(5),
	datac => \pro0|co|ir\(7),
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|y[7]~7_combout\);

-- Location: LCCOMB_X19_Y8_N20
\pro0|e0|y[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|y[6]~6_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|co|c0|immed_x2~combout\ & ((\pro0|co|ir\(5)))) # (!\pro0|co|c0|immed_x2~combout\ & (\pro0|co|ir\(6))))) # (!\pro0|co|c0|Mux3~1_combout\ & (((\pro0|co|ir\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(6),
	datab => \pro0|co|c0|Mux3~1_combout\,
	datac => \pro0|co|ir\(5),
	datad => \pro0|co|c0|immed_x2~combout\,
	combout => \pro0|e0|y[6]~6_combout\);

-- Location: LCCOMB_X19_Y5_N14
\mem0|sramContr|dataReaded~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~21_combout\ = (\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[12]~12\)) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[4]~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[12]~12\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \SRAM_DQ[4]~4\,
	combout => \mem0|sramContr|dataReaded~21_combout\);

-- Location: LCCOMB_X19_Y5_N26
\mem0|sramContr|dataReaded[4]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(4) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~21_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(4),
	datac => \mem0|sramContr|dataReaded~21_combout\,
	datad => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	combout => \mem0|sramContr|dataReaded\(4));

-- Location: LCCOMB_X15_Y8_N16
\pro0|co|ir~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~15_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(4),
	combout => \pro0|co|ir~15_combout\);

-- Location: LCFF_X15_Y8_N17
\pro0|co|ir[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|ir~15_combout\,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(4));

-- Location: LCCOMB_X15_Y8_N12
\pro0|e0|y[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|y[5]~5_combout\ = (\pro0|co|c0|immed_x2~combout\ & (\pro0|co|ir\(4))) # (!\pro0|co|c0|immed_x2~combout\ & ((\pro0|co|ir\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|immed_x2~combout\,
	datac => \pro0|co|ir\(4),
	datad => \pro0|co|ir\(5),
	combout => \pro0|e0|y[5]~5_combout\);

-- Location: LCCOMB_X18_Y6_N18
\mem0|sramContr|dataReaded~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~20_combout\ = (\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[11]~11\))) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[3]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[3]~3\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \SRAM_DQ[11]~11\,
	combout => \mem0|sramContr|dataReaded~20_combout\);

-- Location: LCCOMB_X18_Y6_N14
\mem0|sramContr|dataReaded[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(3) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~20_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(3),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~20_combout\,
	combout => \mem0|sramContr|dataReaded\(3));

-- Location: LCCOMB_X15_Y8_N22
\pro0|co|ir~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~14_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(3),
	combout => \pro0|co|ir~14_combout\);

-- Location: LCFF_X15_Y8_N23
\pro0|co|ir[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|ir~14_combout\,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(3));

-- Location: LCCOMB_X15_Y8_N10
\pro0|e0|y[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|y[4]~4_combout\ = (\pro0|co|c0|immed_x2~combout\ & ((\pro0|co|ir\(3)))) # (!\pro0|co|c0|immed_x2~combout\ & (\pro0|co|ir\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(4),
	datab => \pro0|co|ir\(3),
	datac => \pro0|co|c0|immed_x2~combout\,
	combout => \pro0|e0|y[4]~4_combout\);

-- Location: LCCOMB_X15_Y8_N28
\pro0|e0|alu0|Mux11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux11~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|reg0|regs~219_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|e0|y[4]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(8),
	datab => \pro0|e0|reg0|regs~219_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|e0|y[4]~4_combout\,
	combout => \pro0|e0|alu0|Mux11~0_combout\);

-- Location: LCCOMB_X15_Y9_N10
\pro0|e0|d[4]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[4]~7_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux11~0_combout\) # ((\pro0|e0|alu0|Add0~23_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~23_combout\,
	datab => \pro0|co|c0|Mux3~1_combout\,
	datac => \pro0|e0|alu0|Mux11~0_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|d[4]~7_combout\);

-- Location: LCFF_X19_Y5_N1
\pro0|e0|reg0|regs~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~214_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~40_regout\);

-- Location: LCCOMB_X19_Y5_N30
\pro0|e0|d[4]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[4]~8_combout\ = (!\pro0|co|c0|Mux3~1_combout\ & \mem0|sramContr|dataReaded\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|c0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(4),
	combout => \pro0|e0|d[4]~8_combout\);

-- Location: LCCOMB_X19_Y5_N0
\pro0|e0|reg0|regs~214\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~214_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[4]~7_combout\) # ((\pro0|e0|d[4]~8_combout\)))) # (!\rtl~1_combout\ & (((\pro0|e0|reg0|regs~40_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datab => \pro0|e0|d[4]~7_combout\,
	datac => \pro0|e0|reg0|regs~40_regout\,
	datad => \pro0|e0|d[4]~8_combout\,
	combout => \pro0|e0|reg0|regs~214_combout\);

-- Location: LCCOMB_X18_Y9_N12
\pro0|co|c0|addr_a[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|addr_a[0]~0_combout\ = (\pro0|co|c0|Mux3~1_combout\ & (\pro0|co|ir\(9))) # (!\pro0|co|c0|Mux3~1_combout\ & ((\pro0|co|ir\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~1_combout\,
	datab => \pro0|co|ir\(9),
	datad => \pro0|co|ir\(6),
	combout => \pro0|co|c0|addr_a[0]~0_combout\);

-- Location: LCCOMB_X20_Y9_N26
\pro0|co|c0|addr_a[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|addr_a[1]~1_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|co|ir\(10)))) # (!\pro0|co|c0|Mux3~1_combout\ & (\pro0|co|ir\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~1_combout\,
	datac => \pro0|co|ir\(7),
	datad => \pro0|co|ir\(10),
	combout => \pro0|co|c0|addr_a[1]~1_combout\);

-- Location: LCCOMB_X19_Y6_N8
\pro0|e0|reg0|regs~216\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~216_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|e0|reg0|regs~214_combout\) # (\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~215_combout\ & 
-- ((!\pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~215_combout\,
	datab => \pro0|e0|reg0|regs~214_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~216_combout\);

-- Location: LCFF_X19_Y5_N17
\pro0|e0|reg0|regs~72\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~217_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~72_regout\);

-- Location: LCCOMB_X19_Y5_N16
\pro0|e0|reg0|regs~217\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~217_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[4]~7_combout\) # ((\pro0|e0|d[4]~8_combout\)))) # (!\rtl~3_combout\ & (((\pro0|e0|reg0|regs~72_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[4]~7_combout\,
	datab => \rtl~3_combout\,
	datac => \pro0|e0|reg0|regs~72_regout\,
	datad => \pro0|e0|d[4]~8_combout\,
	combout => \pro0|e0|reg0|regs~217_combout\);

-- Location: LCCOMB_X19_Y6_N26
\pro0|e0|reg0|regs~218\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~218_combout\ = (\pro0|e0|reg0|regs~216_combout\ & (((\pro0|e0|reg0|regs~217_combout\) # (!\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|e0|reg0|regs~216_combout\ & (\pro0|e0|reg0|regs~213_combout\ & 
-- ((\pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~213_combout\,
	datab => \pro0|e0|reg0|regs~216_combout\,
	datac => \pro0|e0|reg0|regs~217_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~218_combout\);

-- Location: LCFF_X19_Y5_N23
\pro0|e0|reg0|regs~136\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~211_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~136_regout\);

-- Location: LCCOMB_X20_Y9_N30
\rtl~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \rtl~7_combout\ = (\rtl~9_combout\ & (\pro0|co|m0|state~regout\ & (\pro0|co|m0|wrd~0_combout\ & \pro0|co|ir\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~9_combout\,
	datab => \pro0|co|m0|state~regout\,
	datac => \pro0|co|m0|wrd~0_combout\,
	datad => \pro0|co|ir\(9),
	combout => \rtl~7_combout\);

-- Location: LCCOMB_X19_Y5_N22
\pro0|e0|reg0|regs~211\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~211_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[4]~7_combout\) # ((\pro0|e0|d[4]~8_combout\)))) # (!\rtl~7_combout\ & (((\pro0|e0|reg0|regs~136_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[4]~7_combout\,
	datab => \pro0|e0|d[4]~8_combout\,
	datac => \pro0|e0|reg0|regs~136_regout\,
	datad => \rtl~7_combout\,
	combout => \pro0|e0|reg0|regs~211_combout\);

-- Location: LCFF_X19_Y5_N29
\pro0|e0|reg0|regs~120\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~208_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~120_regout\);

-- Location: LCCOMB_X19_Y5_N28
\pro0|e0|reg0|regs~208\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~208_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[4]~7_combout\) # ((\pro0|e0|d[4]~8_combout\)))) # (!\rtl~5_combout\ & (((\pro0|e0|reg0|regs~120_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[4]~7_combout\,
	datab => \pro0|e0|d[4]~8_combout\,
	datac => \pro0|e0|reg0|regs~120_regout\,
	datad => \rtl~5_combout\,
	combout => \pro0|e0|reg0|regs~208_combout\);

-- Location: LCCOMB_X19_Y5_N4
\pro0|e0|reg0|regs~210\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~210_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~208_combout\))) # 
-- (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~209_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~209_combout\,
	datab => \pro0|e0|reg0|regs~208_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~210_combout\);

-- Location: LCCOMB_X19_Y5_N24
\pro0|e0|reg0|regs~212\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~212_combout\ = (\pro0|e0|reg0|regs~210_combout\ & (((\pro0|e0|reg0|regs~211_combout\) # (!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~210_combout\ & (\pro0|e0|reg0|regs~207_combout\ & 
-- ((\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~207_combout\,
	datab => \pro0|e0|reg0|regs~211_combout\,
	datac => \pro0|e0|reg0|regs~210_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~212_combout\);

-- Location: LCCOMB_X19_Y8_N2
\pro0|co|c0|addr_a[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|addr_a[2]~2_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|co|ir\(11)))) # (!\pro0|co|c0|Mux3~1_combout\ & (\pro0|co|ir\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~1_combout\,
	datac => \pro0|co|ir\(8),
	datad => \pro0|co|ir\(11),
	combout => \pro0|co|c0|addr_a[2]~2_combout\);

-- Location: LCCOMB_X19_Y6_N16
\pro0|e0|reg0|regs~219\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~219_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~212_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~218_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~218_combout\,
	datac => \pro0|e0|reg0|regs~212_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~219_combout\);

-- Location: LCFF_X18_Y6_N5
\pro0|e0|reg0|regs~119\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~195_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~119_regout\);

-- Location: LCCOMB_X18_Y6_N26
\pro0|e0|d[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[3]~6_combout\ = (\mem0|sramContr|dataReaded\(3) & !\pro0|co|c0|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mem0|sramContr|dataReaded\(3),
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[3]~6_combout\);

-- Location: LCCOMB_X18_Y6_N4
\pro0|e0|reg0|regs~195\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~195_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[3]~5_combout\) # ((\pro0|e0|d[3]~6_combout\)))) # (!\rtl~5_combout\ & (((\pro0|e0|reg0|regs~119_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[3]~5_combout\,
	datab => \rtl~5_combout\,
	datac => \pro0|e0|reg0|regs~119_regout\,
	datad => \pro0|e0|d[3]~6_combout\,
	combout => \pro0|e0|reg0|regs~195_combout\);

-- Location: LCCOMB_X19_Y6_N2
\pro0|e0|reg0|regs~197\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~197_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~195_combout\))) # 
-- (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~196_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~196_combout\,
	datab => \pro0|e0|reg0|regs~195_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~197_combout\);

-- Location: LCFF_X18_Y6_N29
\pro0|e0|reg0|regs~103\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~194_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~103_regout\);

-- Location: LCCOMB_X18_Y6_N28
\pro0|e0|reg0|regs~194\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~194_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[3]~5_combout\) # ((\pro0|e0|d[3]~6_combout\)))) # (!\rtl~4_combout\ & (((\pro0|e0|reg0|regs~103_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[3]~5_combout\,
	datab => \rtl~4_combout\,
	datac => \pro0|e0|reg0|regs~103_regout\,
	datad => \pro0|e0|d[3]~6_combout\,
	combout => \pro0|e0|reg0|regs~194_combout\);

-- Location: LCCOMB_X19_Y6_N28
\pro0|e0|reg0|regs~199\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~199_combout\ = (\pro0|e0|reg0|regs~197_combout\ & ((\pro0|e0|reg0|regs~198_combout\) # ((!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~197_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\ & 
-- \pro0|e0|reg0|regs~194_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~198_combout\,
	datab => \pro0|e0|reg0|regs~197_combout\,
	datac => \pro0|co|c0|addr_a[0]~0_combout\,
	datad => \pro0|e0|reg0|regs~194_combout\,
	combout => \pro0|e0|reg0|regs~199_combout\);

-- Location: LCFF_X18_Y6_N31
\pro0|e0|reg0|regs~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~202_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~23_regout\);

-- Location: LCCOMB_X18_Y6_N30
\pro0|e0|reg0|regs~202\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~202_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[3]~5_combout\) # ((\pro0|e0|d[3]~6_combout\)))) # (!\rtl~2_combout\ & (((\pro0|e0|reg0|regs~23_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[3]~5_combout\,
	datab => \rtl~2_combout\,
	datac => \pro0|e0|reg0|regs~23_regout\,
	datad => \pro0|e0|d[3]~6_combout\,
	combout => \pro0|e0|reg0|regs~202_combout\);

-- Location: LCCOMB_X19_Y6_N30
\pro0|e0|reg0|regs~203\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~203_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~201_combout\) # ((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|e0|reg0|regs~202_combout\ & 
-- !\pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~201_combout\,
	datab => \pro0|co|c0|addr_a[0]~0_combout\,
	datac => \pro0|e0|reg0|regs~202_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~203_combout\);

-- Location: LCCOMB_X16_Y9_N0
\mem0|sramContr|dataReaded~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~6_combout\ = (\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[10]~10\))) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[2]~2\,
	datac => \SRAM_DQ[10]~10\,
	datad => \mem0|sramContr|SRAM_LB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~6_combout\);

-- Location: LCCOMB_X16_Y9_N6
\mem0|sramContr|dataReaded[2]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(2) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~6_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|dataReaded\(2),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~6_combout\,
	combout => \mem0|sramContr|dataReaded\(2));

-- Location: LCCOMB_X15_Y9_N18
\pro0|co|ir~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~5_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(2),
	combout => \pro0|co|ir~5_combout\);

-- Location: LCFF_X15_Y8_N1
\pro0|co|ir[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~5_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(2));

-- Location: LCCOMB_X15_Y8_N24
\pro0|e0|y[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|y[3]~3_combout\ = (\pro0|co|c0|immed_x2~combout\ & ((\pro0|co|ir\(2)))) # (!\pro0|co|c0|immed_x2~combout\ & (\pro0|co|ir\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|ir\(3),
	datac => \pro0|co|c0|immed_x2~combout\,
	datad => \pro0|co|ir\(2),
	combout => \pro0|e0|y[3]~3_combout\);

-- Location: LCCOMB_X15_Y8_N2
\pro0|e0|alu0|Mux12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux12~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|reg0|regs~206_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|e0|y[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datab => \pro0|e0|reg0|regs~206_combout\,
	datac => \pro0|e0|y[3]~3_combout\,
	datad => \pro0|co|ir\(8),
	combout => \pro0|e0|alu0|Mux12~0_combout\);

-- Location: LCCOMB_X14_Y8_N18
\pro0|e0|d[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[3]~5_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux12~0_combout\) # ((\pro0|e0|alu0|Add0~21_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~21_combout\,
	datab => \pro0|e0|alu0|Mux12~0_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[3]~5_combout\);

-- Location: LCFF_X18_Y6_N21
\pro0|e0|reg0|regs~71\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~204_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~71_regout\);

-- Location: LCCOMB_X18_Y6_N20
\pro0|e0|reg0|regs~204\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~204_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[3]~5_combout\) # ((\pro0|e0|d[3]~6_combout\)))) # (!\rtl~3_combout\ & (((\pro0|e0|reg0|regs~71_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3_combout\,
	datab => \pro0|e0|d[3]~5_combout\,
	datac => \pro0|e0|reg0|regs~71_regout\,
	datad => \pro0|e0|d[3]~6_combout\,
	combout => \pro0|e0|reg0|regs~204_combout\);

-- Location: LCCOMB_X19_Y6_N4
\pro0|e0|reg0|regs~205\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~205_combout\ = (\pro0|e0|reg0|regs~203_combout\ & (((\pro0|e0|reg0|regs~204_combout\) # (!\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|e0|reg0|regs~203_combout\ & (\pro0|e0|reg0|regs~200_combout\ & 
-- ((\pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~200_combout\,
	datab => \pro0|e0|reg0|regs~203_combout\,
	datac => \pro0|e0|reg0|regs~204_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~205_combout\);

-- Location: LCCOMB_X19_Y6_N10
\pro0|e0|reg0|regs~206\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~206_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~199_combout\)) # (!\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~205_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~199_combout\,
	datac => \pro0|e0|reg0|regs~205_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~206_combout\);

-- Location: LCCOMB_X18_Y9_N14
\pro0|e0|y[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|y[2]~0_combout\ = (\pro0|co|c0|immed_x2~combout\ & (\pro0|co|ir\(1))) # (!\pro0|co|c0|immed_x2~combout\ & ((\pro0|co|ir\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(1),
	datab => \pro0|co|c0|immed_x2~combout\,
	datad => \pro0|co|ir\(2),
	combout => \pro0|e0|y[2]~0_combout\);

-- Location: LCCOMB_X18_Y7_N16
\mem0|sramContr|dataReaded~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~0_combout\ = (\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[9]~9\)) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[9]~9\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \SRAM_DQ[1]~1\,
	combout => \mem0|sramContr|dataReaded~0_combout\);

-- Location: LCCOMB_X18_Y7_N12
\mem0|sramContr|dataReaded[1]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(1) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~0_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|dataReaded\(1),
	datac => \mem0|sramContr|dataReaded~0_combout\,
	datad => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	combout => \mem0|sramContr|dataReaded\(1));

-- Location: LCCOMB_X18_Y7_N18
\pro0|co|ir~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~4_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(1),
	combout => \pro0|co|ir~4_combout\);

-- Location: LCFF_X18_Y9_N17
\pro0|co|ir[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~4_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(1));

-- Location: LCCOMB_X18_Y7_N26
\pro0|co|ir~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|ir~13_combout\ = (!\pro0|co|m0|state~regout\ & \mem0|sramContr|dataReaded\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|dataReaded\(0),
	combout => \pro0|co|ir~13_combout\);

-- Location: LCFF_X18_Y9_N13
\pro0|co|ir[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	sdata => \pro0|co|ir~13_combout\,
	sload => VCC,
	ena => \pro0|co|ir[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|ir\(0));

-- Location: LCCOMB_X18_Y9_N2
\pro0|e0|y[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|y[1]~1_combout\ = (\pro0|co|c0|immed_x2~combout\ & ((\pro0|co|ir\(0)))) # (!\pro0|co|c0|immed_x2~combout\ & (\pro0|co|ir\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|immed_x2~combout\,
	datac => \pro0|co|ir\(1),
	datad => \pro0|co|ir\(0),
	combout => \pro0|e0|y[1]~1_combout\);

-- Location: LCCOMB_X18_Y8_N2
\pro0|e0|alu0|Add0~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~17_combout\ = (\pro0|e0|reg0|regs~167_combout\ & ((\pro0|e0|y[1]~1_combout\ & (\pro0|e0|alu0|Add0~16\ & VCC)) # (!\pro0|e0|y[1]~1_combout\ & (!\pro0|e0|alu0|Add0~16\)))) # (!\pro0|e0|reg0|regs~167_combout\ & ((\pro0|e0|y[1]~1_combout\ & 
-- (!\pro0|e0|alu0|Add0~16\)) # (!\pro0|e0|y[1]~1_combout\ & ((\pro0|e0|alu0|Add0~16\) # (GND)))))
-- \pro0|e0|alu0|Add0~18\ = CARRY((\pro0|e0|reg0|regs~167_combout\ & (!\pro0|e0|y[1]~1_combout\ & !\pro0|e0|alu0|Add0~16\)) # (!\pro0|e0|reg0|regs~167_combout\ & ((!\pro0|e0|alu0|Add0~16\) # (!\pro0|e0|y[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~167_combout\,
	datab => \pro0|e0|y[1]~1_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~16\,
	combout => \pro0|e0|alu0|Add0~17_combout\,
	cout => \pro0|e0|alu0|Add0~18\);

-- Location: LCCOMB_X18_Y8_N12
\pro0|e0|alu0|Add0~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~27_combout\ = ((\pro0|e0|reg0|regs~245_combout\ $ (\pro0|e0|y[6]~6_combout\ $ (!\pro0|e0|alu0|Add0~26\)))) # (GND)
-- \pro0|e0|alu0|Add0~28\ = CARRY((\pro0|e0|reg0|regs~245_combout\ & ((\pro0|e0|y[6]~6_combout\) # (!\pro0|e0|alu0|Add0~26\))) # (!\pro0|e0|reg0|regs~245_combout\ & (\pro0|e0|y[6]~6_combout\ & !\pro0|e0|alu0|Add0~26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~245_combout\,
	datab => \pro0|e0|y[6]~6_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~26\,
	combout => \pro0|e0|alu0|Add0~27_combout\,
	cout => \pro0|e0|alu0|Add0~28\);

-- Location: LCCOMB_X18_Y8_N14
\pro0|e0|alu0|Add0~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~29_combout\ = (\pro0|e0|reg0|regs~258_combout\ & ((\pro0|e0|y[7]~7_combout\ & (\pro0|e0|alu0|Add0~28\ & VCC)) # (!\pro0|e0|y[7]~7_combout\ & (!\pro0|e0|alu0|Add0~28\)))) # (!\pro0|e0|reg0|regs~258_combout\ & ((\pro0|e0|y[7]~7_combout\ & 
-- (!\pro0|e0|alu0|Add0~28\)) # (!\pro0|e0|y[7]~7_combout\ & ((\pro0|e0|alu0|Add0~28\) # (GND)))))
-- \pro0|e0|alu0|Add0~30\ = CARRY((\pro0|e0|reg0|regs~258_combout\ & (!\pro0|e0|y[7]~7_combout\ & !\pro0|e0|alu0|Add0~28\)) # (!\pro0|e0|reg0|regs~258_combout\ & ((!\pro0|e0|alu0|Add0~28\) # (!\pro0|e0|y[7]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~258_combout\,
	datab => \pro0|e0|y[7]~7_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~28\,
	combout => \pro0|e0|alu0|Add0~29_combout\,
	cout => \pro0|e0|alu0|Add0~30\);

-- Location: LCCOMB_X18_Y8_N18
\pro0|e0|alu0|Add0~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~33_combout\ = (\pro0|e0|reg0|regs~284_combout\ & ((\pro0|co|c0|Mux3~2_combout\ & (\pro0|e0|alu0|Add0~32\ & VCC)) # (!\pro0|co|c0|Mux3~2_combout\ & (!\pro0|e0|alu0|Add0~32\)))) # (!\pro0|e0|reg0|regs~284_combout\ & 
-- ((\pro0|co|c0|Mux3~2_combout\ & (!\pro0|e0|alu0|Add0~32\)) # (!\pro0|co|c0|Mux3~2_combout\ & ((\pro0|e0|alu0|Add0~32\) # (GND)))))
-- \pro0|e0|alu0|Add0~34\ = CARRY((\pro0|e0|reg0|regs~284_combout\ & (!\pro0|co|c0|Mux3~2_combout\ & !\pro0|e0|alu0|Add0~32\)) # (!\pro0|e0|reg0|regs~284_combout\ & ((!\pro0|e0|alu0|Add0~32\) # (!\pro0|co|c0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~284_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~32\,
	combout => \pro0|e0|alu0|Add0~33_combout\,
	cout => \pro0|e0|alu0|Add0~34\);

-- Location: LCCOMB_X18_Y8_N20
\pro0|e0|alu0|Add0~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~35_combout\ = ((\pro0|e0|reg0|regs~297_combout\ $ (\pro0|co|c0|Mux3~2_combout\ $ (!\pro0|e0|alu0|Add0~34\)))) # (GND)
-- \pro0|e0|alu0|Add0~36\ = CARRY((\pro0|e0|reg0|regs~297_combout\ & ((\pro0|co|c0|Mux3~2_combout\) # (!\pro0|e0|alu0|Add0~34\))) # (!\pro0|e0|reg0|regs~297_combout\ & (\pro0|co|c0|Mux3~2_combout\ & !\pro0|e0|alu0|Add0~34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~297_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~34\,
	combout => \pro0|e0|alu0|Add0~35_combout\,
	cout => \pro0|e0|alu0|Add0~36\);

-- Location: LCCOMB_X18_Y8_N22
\pro0|e0|alu0|Add0~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~37_combout\ = (\pro0|e0|reg0|regs~310_combout\ & ((\pro0|co|c0|Mux3~2_combout\ & (\pro0|e0|alu0|Add0~36\ & VCC)) # (!\pro0|co|c0|Mux3~2_combout\ & (!\pro0|e0|alu0|Add0~36\)))) # (!\pro0|e0|reg0|regs~310_combout\ & 
-- ((\pro0|co|c0|Mux3~2_combout\ & (!\pro0|e0|alu0|Add0~36\)) # (!\pro0|co|c0|Mux3~2_combout\ & ((\pro0|e0|alu0|Add0~36\) # (GND)))))
-- \pro0|e0|alu0|Add0~38\ = CARRY((\pro0|e0|reg0|regs~310_combout\ & (!\pro0|co|c0|Mux3~2_combout\ & !\pro0|e0|alu0|Add0~36\)) # (!\pro0|e0|reg0|regs~310_combout\ & ((!\pro0|e0|alu0|Add0~36\) # (!\pro0|co|c0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~310_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~36\,
	combout => \pro0|e0|alu0|Add0~37_combout\,
	cout => \pro0|e0|alu0|Add0~38\);

-- Location: LCCOMB_X18_Y8_N24
\pro0|e0|alu0|Add0~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~39_combout\ = ((\pro0|e0|reg0|regs~323_combout\ $ (\pro0|co|c0|Mux3~2_combout\ $ (!\pro0|e0|alu0|Add0~38\)))) # (GND)
-- \pro0|e0|alu0|Add0~40\ = CARRY((\pro0|e0|reg0|regs~323_combout\ & ((\pro0|co|c0|Mux3~2_combout\) # (!\pro0|e0|alu0|Add0~38\))) # (!\pro0|e0|reg0|regs~323_combout\ & (\pro0|co|c0|Mux3~2_combout\ & !\pro0|e0|alu0|Add0~38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~323_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~38\,
	combout => \pro0|e0|alu0|Add0~39_combout\,
	cout => \pro0|e0|alu0|Add0~40\);

-- Location: LCCOMB_X18_Y8_N26
\pro0|e0|alu0|Add0~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~41_combout\ = (\pro0|e0|reg0|regs~336_combout\ & ((\pro0|co|c0|Mux3~2_combout\ & (\pro0|e0|alu0|Add0~40\ & VCC)) # (!\pro0|co|c0|Mux3~2_combout\ & (!\pro0|e0|alu0|Add0~40\)))) # (!\pro0|e0|reg0|regs~336_combout\ & 
-- ((\pro0|co|c0|Mux3~2_combout\ & (!\pro0|e0|alu0|Add0~40\)) # (!\pro0|co|c0|Mux3~2_combout\ & ((\pro0|e0|alu0|Add0~40\) # (GND)))))
-- \pro0|e0|alu0|Add0~42\ = CARRY((\pro0|e0|reg0|regs~336_combout\ & (!\pro0|co|c0|Mux3~2_combout\ & !\pro0|e0|alu0|Add0~40\)) # (!\pro0|e0|reg0|regs~336_combout\ & ((!\pro0|e0|alu0|Add0~40\) # (!\pro0|co|c0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~336_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~40\,
	combout => \pro0|e0|alu0|Add0~41_combout\,
	cout => \pro0|e0|alu0|Add0~42\);

-- Location: LCCOMB_X18_Y8_N28
\pro0|e0|alu0|Add0~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~43_combout\ = ((\pro0|e0|reg0|regs~349_combout\ $ (\pro0|co|c0|Mux3~2_combout\ $ (!\pro0|e0|alu0|Add0~42\)))) # (GND)
-- \pro0|e0|alu0|Add0~44\ = CARRY((\pro0|e0|reg0|regs~349_combout\ & ((\pro0|co|c0|Mux3~2_combout\) # (!\pro0|e0|alu0|Add0~42\))) # (!\pro0|e0|reg0|regs~349_combout\ & (\pro0|co|c0|Mux3~2_combout\ & !\pro0|e0|alu0|Add0~42\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~349_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datad => VCC,
	cin => \pro0|e0|alu0|Add0~42\,
	combout => \pro0|e0|alu0|Add0~43_combout\,
	cout => \pro0|e0|alu0|Add0~44\);

-- Location: LCCOMB_X23_Y4_N26
\pro0|e0|alu0|Mux1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux1~2_combout\ = (\pro0|e0|alu0|Mux1~1_combout\) # ((!\pro0|co|c0|Mux3~0_combout\ & \pro0|e0|alu0|Add0~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|alu0|Mux1~1_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|e0|alu0|Add0~43_combout\,
	combout => \pro0|e0|alu0|Mux1~2_combout\);

-- Location: LCCOMB_X23_Y4_N14
\pro0|e0|addr_m[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[14]~19_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux1~2_combout\))) # (!\pro0|co|m0|state~regout\ & (\pro0|co|pc_reg\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|pc_reg\(14),
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|e0|alu0|Mux1~2_combout\,
	combout => \pro0|e0|addr_m[14]~19_combout\);

-- Location: LCCOMB_X16_Y8_N24
\pro0|e0|alu0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux0~0_combout\ = (\pro0|co|ir\(13) & ((\pro0|co|ir\(5)))) # (!\pro0|co|ir\(13) & (\pro0|co|ir\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(13),
	datac => \pro0|co|ir\(7),
	datad => \pro0|co|ir\(5),
	combout => \pro0|e0|alu0|Mux0~0_combout\);

-- Location: LCFF_X21_Y7_N21
\pro0|e0|reg0|regs~83\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~360_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~83_regout\);

-- Location: LCCOMB_X20_Y6_N10
\pro0|e0|d[15]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[15]~22_combout\ = (\pro0|co|c0|Mux3~1_combout\ & (\pro0|e0|alu0|Mux0~1_combout\)) # (!\pro0|co|c0|Mux3~1_combout\ & ((\mem0|sramContr|dataReaded\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~1_combout\,
	datac => \pro0|e0|alu0|Mux0~1_combout\,
	datad => \mem0|sramContr|dataReaded\(15),
	combout => \pro0|e0|d[15]~22_combout\);

-- Location: LCCOMB_X21_Y7_N20
\pro0|e0|reg0|regs~360\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~360_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[15]~22_combout\))) # (!\rtl~3_combout\ & (\pro0|e0|reg0|regs~83_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~3_combout\,
	datac => \pro0|e0|reg0|regs~83_regout\,
	datad => \pro0|e0|d[15]~22_combout\,
	combout => \pro0|e0|reg0|regs~360_combout\);

-- Location: LCFF_X21_Y7_N5
\pro0|e0|reg0|regs~67\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~356_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~67_regout\);

-- Location: LCCOMB_X21_Y7_N4
\pro0|e0|reg0|regs~356\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~356_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[15]~22_combout\))) # (!\rtl~0_combout\ & (\pro0|e0|reg0|regs~67_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datac => \pro0|e0|reg0|regs~67_regout\,
	datad => \pro0|e0|d[15]~22_combout\,
	combout => \pro0|e0|reg0|regs~356_combout\);

-- Location: LCCOMB_X21_Y5_N12
\pro0|e0|reg0|regs~361\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~361_combout\ = (\pro0|e0|reg0|regs~359_combout\ & (((\pro0|e0|reg0|regs~360_combout\)) # (!\pro0|co|c0|addr_a[1]~1_combout\))) # (!\pro0|e0|reg0|regs~359_combout\ & (\pro0|co|c0|addr_a[1]~1_combout\ & 
-- ((\pro0|e0|reg0|regs~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~359_combout\,
	datab => \pro0|co|c0|addr_a[1]~1_combout\,
	datac => \pro0|e0|reg0|regs~360_combout\,
	datad => \pro0|e0|reg0|regs~356_combout\,
	combout => \pro0|e0|reg0|regs~361_combout\);

-- Location: LCFF_X21_Y7_N9
\pro0|e0|reg0|regs~115\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~350_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~115_regout\);

-- Location: LCCOMB_X21_Y7_N8
\pro0|e0|reg0|regs~350\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~350_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[15]~22_combout\))) # (!\rtl~4_combout\ & (\pro0|e0|reg0|regs~115_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4_combout\,
	datac => \pro0|e0|reg0|regs~115_regout\,
	datad => \pro0|e0|d[15]~22_combout\,
	combout => \pro0|e0|reg0|regs~350_combout\);

-- Location: LCFF_X21_Y7_N15
\pro0|e0|reg0|regs~131\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~351_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~131_regout\);

-- Location: LCCOMB_X21_Y7_N14
\pro0|e0|reg0|regs~351\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~351_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[15]~22_combout\))) # (!\rtl~5_combout\ & (\pro0|e0|reg0|regs~131_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~5_combout\,
	datac => \pro0|e0|reg0|regs~131_regout\,
	datad => \pro0|e0|d[15]~22_combout\,
	combout => \pro0|e0|reg0|regs~351_combout\);

-- Location: LCCOMB_X20_Y7_N22
\pro0|e0|reg0|regs~353\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~353_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & (((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~351_combout\))) # 
-- (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~352_combout\,
	datab => \pro0|co|c0|addr_a[0]~0_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|e0|reg0|regs~351_combout\,
	combout => \pro0|e0|reg0|regs~353_combout\);

-- Location: LCCOMB_X20_Y7_N4
\pro0|e0|reg0|regs~355\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~355_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~353_combout\ & (\pro0|e0|reg0|regs~354_combout\)) # (!\pro0|e0|reg0|regs~353_combout\ & ((\pro0|e0|reg0|regs~350_combout\))))) # (!\pro0|co|c0|addr_a[0]~0_combout\ 
-- & (((\pro0|e0|reg0|regs~353_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~354_combout\,
	datab => \pro0|co|c0|addr_a[0]~0_combout\,
	datac => \pro0|e0|reg0|regs~350_combout\,
	datad => \pro0|e0|reg0|regs~353_combout\,
	combout => \pro0|e0|reg0|regs~355_combout\);

-- Location: LCCOMB_X20_Y5_N6
\pro0|e0|reg0|regs~362\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~362_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~355_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~361_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~361_combout\,
	datac => \pro0|e0|reg0|regs~355_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~362_combout\);

-- Location: LCCOMB_X18_Y8_N30
\pro0|e0|alu0|Add0~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Add0~45_combout\ = \pro0|co|c0|Mux3~2_combout\ $ (\pro0|e0|alu0|Add0~44\ $ (\pro0|e0|reg0|regs~362_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~2_combout\,
	datad => \pro0|e0|reg0|regs~362_combout\,
	cin => \pro0|e0|alu0|Add0~44\,
	combout => \pro0|e0|alu0|Add0~45_combout\);

-- Location: LCCOMB_X23_Y4_N22
\pro0|e0|alu0|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux0~1_combout\ = (\pro0|co|c0|Mux3~0_combout\ & (\pro0|e0|alu0|Mux0~0_combout\)) # (!\pro0|co|c0|Mux3~0_combout\ & ((\pro0|e0|alu0|Add0~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datac => \pro0|e0|alu0|Mux0~0_combout\,
	datad => \pro0|e0|alu0|Add0~45_combout\,
	combout => \pro0|e0|alu0|Mux0~1_combout\);

-- Location: LCCOMB_X23_Y4_N28
\pro0|e0|addr_m[15]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[15]~20_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux0~1_combout\))) # (!\pro0|co|m0|state~regout\ & (\pro0|co|pc_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|pc_reg\(15),
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|e0|alu0|Mux0~1_combout\,
	combout => \pro0|e0|addr_m[15]~20_combout\);

-- Location: LCCOMB_X23_Y4_N12
\mem0|we_validated~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|we_validated~3_combout\ = (\pro0|co|m0|state~regout\ & (!\pro0|co|c0|wr_m~0_combout\ & ((!\pro0|e0|addr_m[15]~20_combout\) # (!\pro0|e0|addr_m[14]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|co|c0|wr_m~0_combout\,
	datac => \pro0|e0|addr_m[14]~19_combout\,
	datad => \pro0|e0|addr_m[15]~20_combout\,
	combout => \mem0|we_validated~3_combout\);

-- Location: LCCOMB_X23_Y4_N4
\mem0|sramContr|SRAM_DQ[0]_346\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[0]_346~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|we_validated~3_combout\))) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ[0]_346~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_DQ[0]_346~combout\,
	datac => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	datad => \mem0|we_validated~3_combout\,
	combout => \mem0|sramContr|SRAM_DQ[0]_346~combout\);

-- Location: LCCOMB_X18_Y9_N18
\pro0|e0|alu0|Mux14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux14~2_combout\ = (\pro0|e0|alu0|Mux14~1_combout\) # ((\pro0|e0|alu0|Add0~17_combout\ & !\pro0|co|c0|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Mux14~1_combout\,
	datab => \pro0|e0|alu0|Add0~17_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux14~2_combout\);

-- Location: LCCOMB_X18_Y7_N10
\pro0|e0|d[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[1]~0_combout\ = (\pro0|co|c0|Mux3~1_combout\ & (\pro0|e0|alu0|Mux14~2_combout\)) # (!\pro0|co|c0|Mux3~1_combout\ & ((\mem0|sramContr|dataReaded\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|alu0|Mux14~2_combout\,
	datac => \pro0|co|c0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(1),
	combout => \pro0|e0|d[1]~0_combout\);

-- Location: LCFF_X20_Y7_N25
\pro0|e0|reg0|regs~101\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~101_regout\);

-- Location: LCCOMB_X20_Y7_N24
\pro0|e0|reg0|regs~155\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~155_combout\ = (\rtl~4_combout\ & (\pro0|e0|d[1]~0_combout\)) # (!\rtl~4_combout\ & ((\pro0|e0|reg0|regs~101_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[1]~0_combout\,
	datac => \pro0|e0|reg0|regs~101_regout\,
	datad => \rtl~4_combout\,
	combout => \pro0|e0|reg0|regs~155_combout\);

-- Location: LCFF_X20_Y9_N17
\pro0|e0|reg0|regs~133\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~159_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~133_regout\);

-- Location: LCCOMB_X20_Y9_N16
\pro0|e0|reg0|regs~159\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~159_combout\ = (\rtl~7_combout\ & (\pro0|e0|d[1]~0_combout\)) # (!\rtl~7_combout\ & ((\pro0|e0|reg0|regs~133_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[1]~0_combout\,
	datac => \pro0|e0|reg0|regs~133_regout\,
	datad => \rtl~7_combout\,
	combout => \pro0|e0|reg0|regs~159_combout\);

-- Location: LCFF_X19_Y7_N1
\pro0|e0|reg0|regs~85\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~85_regout\);

-- Location: LCCOMB_X19_Y7_N0
\pro0|e0|reg0|regs~157\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~157_combout\ = (\rtl~6_combout\ & (\pro0|e0|d[1]~0_combout\)) # (!\rtl~6_combout\ & ((\pro0|e0|reg0|regs~85_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[1]~0_combout\,
	datab => \rtl~6_combout\,
	datac => \pro0|e0|reg0|regs~85_regout\,
	combout => \pro0|e0|reg0|regs~157_combout\);

-- Location: LCFF_X19_Y9_N7
\pro0|e0|reg0|regs~117\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~117_regout\);

-- Location: LCCOMB_X19_Y9_N6
\pro0|e0|reg0|regs~156\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~156_combout\ = (\rtl~5_combout\ & (\pro0|e0|d[1]~0_combout\)) # (!\rtl~5_combout\ & ((\pro0|e0|reg0|regs~117_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[1]~0_combout\,
	datac => \pro0|e0|reg0|regs~117_regout\,
	datad => \rtl~5_combout\,
	combout => \pro0|e0|reg0|regs~156_combout\);

-- Location: LCCOMB_X19_Y7_N10
\pro0|e0|reg0|regs~368\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~368_combout\ = (\pro0|co|ir\(9) & (((\pro0|co|ir\(10))))) # (!\pro0|co|ir\(9) & ((\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~156_combout\))) # (!\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~157_combout\,
	datac => \pro0|e0|reg0|regs~156_combout\,
	datad => \pro0|co|ir\(10),
	combout => \pro0|e0|reg0|regs~368_combout\);

-- Location: LCCOMB_X19_Y7_N4
\pro0|e0|reg0|regs~369\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~369_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~368_combout\ & ((\pro0|e0|reg0|regs~159_combout\))) # (!\pro0|e0|reg0|regs~368_combout\ & (\pro0|e0|reg0|regs~155_combout\)))) # (!\pro0|co|ir\(9) & 
-- (((\pro0|e0|reg0|regs~368_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~155_combout\,
	datac => \pro0|e0|reg0|regs~159_combout\,
	datad => \pro0|e0|reg0|regs~368_combout\,
	combout => \pro0|e0|reg0|regs~369_combout\);

-- Location: LCFF_X19_Y7_N23
\pro0|e0|reg0|regs~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~163_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~21_regout\);

-- Location: LCCOMB_X19_Y7_N22
\pro0|e0|reg0|regs~163\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~163_combout\ = (\rtl~2_combout\ & (\pro0|e0|d[1]~0_combout\)) # (!\rtl~2_combout\ & ((\pro0|e0|reg0|regs~21_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[1]~0_combout\,
	datac => \pro0|e0|reg0|regs~21_regout\,
	datad => \rtl~2_combout\,
	combout => \pro0|e0|reg0|regs~163_combout\);

-- Location: LCFF_X20_Y7_N3
\pro0|e0|reg0|regs~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~37_regout\);

-- Location: LCCOMB_X20_Y7_N2
\pro0|e0|reg0|regs~162\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~162_combout\ = (\rtl~1_combout\ & (\pro0|e0|d[1]~0_combout\)) # (!\rtl~1_combout\ & ((\pro0|e0|reg0|regs~37_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[1]~0_combout\,
	datac => \pro0|e0|reg0|regs~37_regout\,
	datad => \rtl~1_combout\,
	combout => \pro0|e0|reg0|regs~162_combout\);

-- Location: LCCOMB_X20_Y7_N18
\pro0|e0|reg0|regs~370\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~370_combout\ = (\pro0|co|ir\(9) & ((\pro0|co|ir\(10)) # ((\pro0|e0|reg0|regs~162_combout\)))) # (!\pro0|co|ir\(9) & (!\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~163_combout\,
	datad => \pro0|e0|reg0|regs~162_combout\,
	combout => \pro0|e0|reg0|regs~370_combout\);

-- Location: LCFF_X21_Y9_N21
\pro0|e0|reg0|regs~53\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~53_regout\);

-- Location: LCCOMB_X21_Y9_N20
\pro0|e0|reg0|regs~161\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~161_combout\ = (\rtl~0_combout\ & (\pro0|e0|d[1]~0_combout\)) # (!\rtl~0_combout\ & ((\pro0|e0|reg0|regs~53_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[1]~0_combout\,
	datac => \pro0|e0|reg0|regs~53_regout\,
	datad => \rtl~0_combout\,
	combout => \pro0|e0|reg0|regs~161_combout\);

-- Location: LCCOMB_X20_Y7_N8
\pro0|e0|reg0|regs~371\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~371_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~370_combout\ & (\pro0|e0|reg0|regs~165_combout\)) # (!\pro0|e0|reg0|regs~370_combout\ & ((\pro0|e0|reg0|regs~161_combout\))))) # (!\pro0|co|ir\(10) & 
-- (((\pro0|e0|reg0|regs~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~165_combout\,
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~370_combout\,
	datad => \pro0|e0|reg0|regs~161_combout\,
	combout => \pro0|e0|reg0|regs~371_combout\);

-- Location: LCCOMB_X20_Y7_N6
\pro0|e0|reg0|regs~372\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~372_combout\ = (\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~369_combout\)) # (!\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~371_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~369_combout\,
	datac => \pro0|e0|reg0|regs~371_combout\,
	datad => \pro0|co|ir\(11),
	combout => \pro0|e0|reg0|regs~372_combout\);

-- Location: LCCOMB_X16_Y7_N4
\mem0|sramContr|SRAM_DQ[1]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[1]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\pro0|e0|reg0|regs~372_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~372_combout\,
	datac => \mem0|sramContr|SRAM_DQ[1]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[1]$latch~combout\);

-- Location: LCFF_X16_Y9_N31
\pro0|e0|reg0|regs~70\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~178_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~70_regout\);

-- Location: LCCOMB_X16_Y9_N18
\pro0|e0|d[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[2]~2_combout\ = (!\pro0|co|c0|Mux3~1_combout\ & \mem0|sramContr|dataReaded\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(2),
	combout => \pro0|e0|d[2]~2_combout\);

-- Location: LCCOMB_X16_Y9_N30
\pro0|e0|reg0|regs~178\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~178_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[2]~1_combout\) # ((\pro0|e0|d[2]~2_combout\)))) # (!\rtl~3_combout\ & (((\pro0|e0|reg0|regs~70_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[2]~1_combout\,
	datab => \rtl~3_combout\,
	datac => \pro0|e0|reg0|regs~70_regout\,
	datad => \pro0|e0|d[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~178_combout\);

-- Location: LCCOMB_X18_Y9_N10
\pro0|e0|alu0|Mux13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux13~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|reg0|regs~180_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|e0|y[2]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~180_combout\,
	datab => \pro0|co|ir\(8),
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|e0|y[2]~0_combout\,
	combout => \pro0|e0|alu0|Mux13~0_combout\);

-- Location: LCCOMB_X18_Y9_N30
\pro0|e0|d[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[2]~1_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux13~0_combout\) # ((\pro0|e0|alu0|Add0~19_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~19_combout\,
	datab => \pro0|e0|alu0|Mux13~0_combout\,
	datac => \pro0|co|c0|Mux3~1_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|d[2]~1_combout\);

-- Location: LCFF_X16_Y9_N13
\pro0|e0|reg0|regs~54\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~54_regout\);

-- Location: LCCOMB_X16_Y9_N12
\pro0|e0|reg0|regs~174\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~174_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[2]~1_combout\) # ((\pro0|e0|d[2]~2_combout\)))) # (!\rtl~0_combout\ & (((\pro0|e0|reg0|regs~54_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datab => \pro0|e0|d[2]~1_combout\,
	datac => \pro0|e0|reg0|regs~54_regout\,
	datad => \pro0|e0|d[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~174_combout\);

-- Location: LCCOMB_X16_Y9_N8
\pro0|e0|reg0|regs~376\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~376_combout\ = (\pro0|e0|reg0|regs~375_combout\ & ((\pro0|e0|reg0|regs~178_combout\) # ((!\pro0|co|ir\(10))))) # (!\pro0|e0|reg0|regs~375_combout\ & (((\pro0|e0|reg0|regs~174_combout\ & \pro0|co|ir\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~375_combout\,
	datab => \pro0|e0|reg0|regs~178_combout\,
	datac => \pro0|e0|reg0|regs~174_combout\,
	datad => \pro0|co|ir\(10),
	combout => \pro0|e0|reg0|regs~376_combout\);

-- Location: LCCOMB_X20_Y5_N8
\pro0|e0|reg0|regs~377\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~377_combout\ = (\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~374_combout\)) # (!\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~376_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~374_combout\,
	datab => \pro0|e0|reg0|regs~376_combout\,
	datac => \pro0|co|ir\(11),
	combout => \pro0|e0|reg0|regs~377_combout\);

-- Location: LCCOMB_X12_Y5_N28
\mem0|sramContr|SRAM_DQ[2]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[2]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\pro0|e0|reg0|regs~377_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~377_combout\,
	datab => \mem0|sramContr|SRAM_DQ[2]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[2]$latch~combout\);

-- Location: LCFF_X18_Y6_N1
\pro0|e0|reg0|regs~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~201_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~39_regout\);

-- Location: LCCOMB_X18_Y6_N0
\pro0|e0|reg0|regs~201\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~201_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[3]~5_combout\) # ((\pro0|e0|d[3]~6_combout\)))) # (!\rtl~1_combout\ & (((\pro0|e0|reg0|regs~39_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datab => \pro0|e0|d[3]~5_combout\,
	datac => \pro0|e0|reg0|regs~39_regout\,
	datad => \pro0|e0|d[3]~6_combout\,
	combout => \pro0|e0|reg0|regs~201_combout\);

-- Location: LCCOMB_X18_Y6_N16
\pro0|e0|reg0|regs~380\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~380_combout\ = (\pro0|co|ir\(9) & (((\pro0|co|ir\(10)) # (\pro0|e0|reg0|regs~201_combout\)))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~202_combout\ & (!\pro0|co|ir\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~202_combout\,
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~201_combout\,
	combout => \pro0|e0|reg0|regs~380_combout\);

-- Location: LCFF_X18_Y6_N23
\pro0|e0|reg0|regs~55\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~200_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~55_regout\);

-- Location: LCCOMB_X18_Y6_N22
\pro0|e0|reg0|regs~200\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~200_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[3]~5_combout\) # ((\pro0|e0|d[3]~6_combout\)))) # (!\rtl~0_combout\ & (((\pro0|e0|reg0|regs~55_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datab => \pro0|e0|d[3]~5_combout\,
	datac => \pro0|e0|reg0|regs~55_regout\,
	datad => \pro0|e0|d[3]~6_combout\,
	combout => \pro0|e0|reg0|regs~200_combout\);

-- Location: LCCOMB_X18_Y6_N2
\pro0|e0|reg0|regs~381\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~381_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~380_combout\ & (\pro0|e0|reg0|regs~204_combout\)) # (!\pro0|e0|reg0|regs~380_combout\ & ((\pro0|e0|reg0|regs~200_combout\))))) # (!\pro0|co|ir\(10) & 
-- (((\pro0|e0|reg0|regs~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~204_combout\,
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~380_combout\,
	datad => \pro0|e0|reg0|regs~200_combout\,
	combout => \pro0|e0|reg0|regs~381_combout\);

-- Location: LCFF_X18_Y6_N11
\pro0|e0|reg0|regs~87\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~196_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~87_regout\);

-- Location: LCCOMB_X18_Y6_N10
\pro0|e0|reg0|regs~196\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~196_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[3]~5_combout\) # ((\pro0|e0|d[3]~6_combout\)))) # (!\rtl~6_combout\ & (((\pro0|e0|reg0|regs~87_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datab => \pro0|e0|d[3]~5_combout\,
	datac => \pro0|e0|reg0|regs~87_regout\,
	datad => \pro0|e0|d[3]~6_combout\,
	combout => \pro0|e0|reg0|regs~196_combout\);

-- Location: LCCOMB_X18_Y6_N24
\pro0|e0|reg0|regs~378\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~378_combout\ = (\pro0|co|ir\(9) & (((\pro0|co|ir\(10))))) # (!\pro0|co|ir\(9) & ((\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~195_combout\)) # (!\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~196_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~195_combout\,
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~196_combout\,
	combout => \pro0|e0|reg0|regs~378_combout\);

-- Location: LCFF_X18_Y6_N13
\pro0|e0|reg0|regs~135\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~198_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~135_regout\);

-- Location: LCCOMB_X18_Y6_N12
\pro0|e0|reg0|regs~198\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~198_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[3]~5_combout\) # ((\pro0|e0|d[3]~6_combout\)))) # (!\rtl~7_combout\ & (((\pro0|e0|reg0|regs~135_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datab => \pro0|e0|d[3]~5_combout\,
	datac => \pro0|e0|reg0|regs~135_regout\,
	datad => \pro0|e0|d[3]~6_combout\,
	combout => \pro0|e0|reg0|regs~198_combout\);

-- Location: LCCOMB_X18_Y6_N6
\pro0|e0|reg0|regs~379\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~379_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~378_combout\ & ((\pro0|e0|reg0|regs~198_combout\))) # (!\pro0|e0|reg0|regs~378_combout\ & (\pro0|e0|reg0|regs~194_combout\)))) # (!\pro0|co|ir\(9) & 
-- (((\pro0|e0|reg0|regs~378_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~194_combout\,
	datac => \pro0|e0|reg0|regs~378_combout\,
	datad => \pro0|e0|reg0|regs~198_combout\,
	combout => \pro0|e0|reg0|regs~379_combout\);

-- Location: LCCOMB_X18_Y6_N8
\pro0|e0|reg0|regs~382\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~382_combout\ = (\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~379_combout\))) # (!\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~381_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~381_combout\,
	datac => \pro0|co|ir\(11),
	datad => \pro0|e0|reg0|regs~379_combout\,
	combout => \pro0|e0|reg0|regs~382_combout\);

-- Location: LCCOMB_X15_Y6_N20
\mem0|sramContr|SRAM_DQ[3]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[3]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\pro0|e0|reg0|regs~382_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[3]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~382_combout\,
	datac => \mem0|sramContr|SRAM_DQ[3]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[3]$latch~combout\);

-- Location: LCCOMB_X19_Y5_N20
\pro0|e0|reg0|regs~383\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~383_combout\ = (\pro0|co|ir\(10) & (((\pro0|e0|reg0|regs~208_combout\) # (\pro0|co|ir\(9))))) # (!\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~209_combout\ & ((!\pro0|co|ir\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~209_combout\,
	datab => \pro0|e0|reg0|regs~208_combout\,
	datac => \pro0|co|ir\(10),
	datad => \pro0|co|ir\(9),
	combout => \pro0|e0|reg0|regs~383_combout\);

-- Location: LCFF_X19_Y5_N13
\pro0|e0|reg0|regs~104\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~207_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~104_regout\);

-- Location: LCCOMB_X19_Y5_N12
\pro0|e0|reg0|regs~207\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~207_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[4]~7_combout\) # ((\pro0|e0|d[4]~8_combout\)))) # (!\rtl~4_combout\ & (((\pro0|e0|reg0|regs~104_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[4]~7_combout\,
	datab => \rtl~4_combout\,
	datac => \pro0|e0|reg0|regs~104_regout\,
	datad => \pro0|e0|d[4]~8_combout\,
	combout => \pro0|e0|reg0|regs~207_combout\);

-- Location: LCCOMB_X19_Y5_N18
\pro0|e0|reg0|regs~384\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~384_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~383_combout\ & (\pro0|e0|reg0|regs~211_combout\)) # (!\pro0|e0|reg0|regs~383_combout\ & ((\pro0|e0|reg0|regs~207_combout\))))) # (!\pro0|co|ir\(9) & 
-- (((\pro0|e0|reg0|regs~383_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~211_combout\,
	datac => \pro0|e0|reg0|regs~383_combout\,
	datad => \pro0|e0|reg0|regs~207_combout\,
	combout => \pro0|e0|reg0|regs~384_combout\);

-- Location: LCFF_X19_Y5_N3
\pro0|e0|reg0|regs~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~215_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~24_regout\);

-- Location: LCCOMB_X19_Y5_N2
\pro0|e0|reg0|regs~215\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~215_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[4]~7_combout\) # ((\pro0|e0|d[4]~8_combout\)))) # (!\rtl~2_combout\ & (((\pro0|e0|reg0|regs~24_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2_combout\,
	datab => \pro0|e0|d[4]~7_combout\,
	datac => \pro0|e0|reg0|regs~24_regout\,
	datad => \pro0|e0|d[4]~8_combout\,
	combout => \pro0|e0|reg0|regs~215_combout\);

-- Location: LCCOMB_X19_Y6_N0
\pro0|e0|reg0|regs~385\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~385_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~214_combout\) # ((\pro0|co|ir\(10))))) # (!\pro0|co|ir\(9) & (((!\pro0|co|ir\(10) & \pro0|e0|reg0|regs~215_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~214_combout\,
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~215_combout\,
	combout => \pro0|e0|reg0|regs~385_combout\);

-- Location: LCCOMB_X19_Y6_N18
\pro0|e0|reg0|regs~386\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~386_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~385_combout\ & ((\pro0|e0|reg0|regs~217_combout\))) # (!\pro0|e0|reg0|regs~385_combout\ & (\pro0|e0|reg0|regs~213_combout\)))) # (!\pro0|co|ir\(10) & 
-- (((\pro0|e0|reg0|regs~385_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~213_combout\,
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~217_combout\,
	datad => \pro0|e0|reg0|regs~385_combout\,
	combout => \pro0|e0|reg0|regs~386_combout\);

-- Location: LCCOMB_X19_Y5_N8
\pro0|e0|reg0|regs~387\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~387_combout\ = (\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~384_combout\)) # (!\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~386_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~384_combout\,
	datac => \pro0|co|ir\(11),
	datad => \pro0|e0|reg0|regs~386_combout\,
	combout => \pro0|e0|reg0|regs~387_combout\);

-- Location: LCCOMB_X16_Y5_N24
\mem0|sramContr|SRAM_DQ[4]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[4]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\pro0|e0|reg0|regs~387_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[4]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~387_combout\,
	datac => \mem0|sramContr|SRAM_DQ[4]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[4]$latch~combout\);

-- Location: LCFF_X20_Y6_N23
\pro0|e0|reg0|regs~57\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~226_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~57_regout\);

-- Location: LCCOMB_X20_Y6_N2
\pro0|e0|d[5]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[5]~10_combout\ = (!\pro0|co|c0|Mux3~1_combout\ & \mem0|sramContr|dataReaded\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(5),
	combout => \pro0|e0|d[5]~10_combout\);

-- Location: LCCOMB_X20_Y6_N22
\pro0|e0|reg0|regs~226\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~226_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[5]~9_combout\) # ((\pro0|e0|d[5]~10_combout\)))) # (!\rtl~0_combout\ & (((\pro0|e0|reg0|regs~57_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datab => \pro0|e0|d[5]~9_combout\,
	datac => \pro0|e0|reg0|regs~57_regout\,
	datad => \pro0|e0|d[5]~10_combout\,
	combout => \pro0|e0|reg0|regs~226_combout\);

-- Location: LCFF_X20_Y6_N29
\pro0|e0|reg0|regs~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~227_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~41_regout\);

-- Location: LCCOMB_X20_Y6_N28
\pro0|e0|reg0|regs~227\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~227_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[5]~9_combout\) # ((\pro0|e0|d[5]~10_combout\)))) # (!\rtl~1_combout\ & (((\pro0|e0|reg0|regs~41_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datab => \pro0|e0|d[5]~9_combout\,
	datac => \pro0|e0|reg0|regs~41_regout\,
	datad => \pro0|e0|d[5]~10_combout\,
	combout => \pro0|e0|reg0|regs~227_combout\);

-- Location: LCFF_X20_Y6_N19
\pro0|e0|reg0|regs~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~228_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~25_regout\);

-- Location: LCCOMB_X20_Y6_N18
\pro0|e0|reg0|regs~228\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~228_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[5]~9_combout\) # ((\pro0|e0|d[5]~10_combout\)))) # (!\rtl~2_combout\ & (((\pro0|e0|reg0|regs~25_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2_combout\,
	datab => \pro0|e0|d[5]~9_combout\,
	datac => \pro0|e0|reg0|regs~25_regout\,
	datad => \pro0|e0|d[5]~10_combout\,
	combout => \pro0|e0|reg0|regs~228_combout\);

-- Location: LCCOMB_X20_Y6_N16
\pro0|e0|reg0|regs~229\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~229_combout\ = (\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~227_combout\) # ((\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|co|c0|addr_a[0]~0_combout\ & (((!\pro0|co|c0|addr_a[1]~1_combout\ & 
-- \pro0|e0|reg0|regs~228_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[0]~0_combout\,
	datab => \pro0|e0|reg0|regs~227_combout\,
	datac => \pro0|co|c0|addr_a[1]~1_combout\,
	datad => \pro0|e0|reg0|regs~228_combout\,
	combout => \pro0|e0|reg0|regs~229_combout\);

-- Location: LCCOMB_X20_Y6_N12
\pro0|e0|reg0|regs~231\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~231_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|e0|reg0|regs~229_combout\ & ((\pro0|e0|reg0|regs~230_combout\))) # (!\pro0|e0|reg0|regs~229_combout\ & (\pro0|e0|reg0|regs~226_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ 
-- & (((\pro0|e0|reg0|regs~229_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~226_combout\,
	datac => \pro0|e0|reg0|regs~230_combout\,
	datad => \pro0|e0|reg0|regs~229_combout\,
	combout => \pro0|e0|reg0|regs~231_combout\);

-- Location: LCFF_X20_Y6_N9
\pro0|e0|reg0|regs~137\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~224_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~137_regout\);

-- Location: LCCOMB_X20_Y6_N8
\pro0|e0|reg0|regs~224\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~224_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[5]~9_combout\) # ((\pro0|e0|d[5]~10_combout\)))) # (!\rtl~7_combout\ & (((\pro0|e0|reg0|regs~137_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[5]~9_combout\,
	datab => \rtl~7_combout\,
	datac => \pro0|e0|reg0|regs~137_regout\,
	datad => \pro0|e0|d[5]~10_combout\,
	combout => \pro0|e0|reg0|regs~224_combout\);

-- Location: LCFF_X20_Y6_N25
\pro0|e0|reg0|regs~105\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~220_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~105_regout\);

-- Location: LCCOMB_X20_Y6_N24
\pro0|e0|reg0|regs~220\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~220_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[5]~9_combout\) # ((\pro0|e0|d[5]~10_combout\)))) # (!\rtl~4_combout\ & (((\pro0|e0|reg0|regs~105_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4_combout\,
	datab => \pro0|e0|d[5]~9_combout\,
	datac => \pro0|e0|reg0|regs~105_regout\,
	datad => \pro0|e0|d[5]~10_combout\,
	combout => \pro0|e0|reg0|regs~220_combout\);

-- Location: LCCOMB_X19_Y6_N24
\pro0|e0|reg0|regs~225\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~225_combout\ = (\pro0|e0|reg0|regs~223_combout\ & (((\pro0|e0|reg0|regs~224_combout\)) # (!\pro0|co|c0|addr_a[0]~0_combout\))) # (!\pro0|e0|reg0|regs~223_combout\ & (\pro0|co|c0|addr_a[0]~0_combout\ & 
-- ((\pro0|e0|reg0|regs~220_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~223_combout\,
	datab => \pro0|co|c0|addr_a[0]~0_combout\,
	datac => \pro0|e0|reg0|regs~224_combout\,
	datad => \pro0|e0|reg0|regs~220_combout\,
	combout => \pro0|e0|reg0|regs~225_combout\);

-- Location: LCCOMB_X19_Y6_N14
\pro0|e0|reg0|regs~232\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~232_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~225_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~231_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~231_combout\,
	datac => \pro0|e0|reg0|regs~225_combout\,
	datad => \pro0|co|c0|addr_a[2]~2_combout\,
	combout => \pro0|e0|reg0|regs~232_combout\);

-- Location: LCCOMB_X15_Y8_N6
\pro0|e0|alu0|Mux10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux10~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|reg0|regs~232_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|e0|y[5]~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(8),
	datab => \pro0|e0|reg0|regs~232_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|e0|y[5]~5_combout\,
	combout => \pro0|e0|alu0|Mux10~0_combout\);

-- Location: LCCOMB_X15_Y9_N4
\pro0|e0|d[5]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[5]~9_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux10~0_combout\) # ((\pro0|e0|alu0|Add0~25_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~25_combout\,
	datab => \pro0|e0|alu0|Mux10~0_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[5]~9_combout\);

-- Location: LCFF_X20_Y6_N15
\pro0|e0|reg0|regs~73\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~230_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~73_regout\);

-- Location: LCCOMB_X20_Y6_N14
\pro0|e0|reg0|regs~230\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~230_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[5]~9_combout\) # ((\pro0|e0|d[5]~10_combout\)))) # (!\rtl~3_combout\ & (((\pro0|e0|reg0|regs~73_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3_combout\,
	datab => \pro0|e0|d[5]~9_combout\,
	datac => \pro0|e0|reg0|regs~73_regout\,
	datad => \pro0|e0|d[5]~10_combout\,
	combout => \pro0|e0|reg0|regs~230_combout\);

-- Location: LCCOMB_X20_Y6_N20
\pro0|e0|reg0|regs~391\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~391_combout\ = (\pro0|e0|reg0|regs~390_combout\ & ((\pro0|e0|reg0|regs~230_combout\) # ((!\pro0|co|ir\(10))))) # (!\pro0|e0|reg0|regs~390_combout\ & (((\pro0|co|ir\(10) & \pro0|e0|reg0|regs~226_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~390_combout\,
	datab => \pro0|e0|reg0|regs~230_combout\,
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~226_combout\,
	combout => \pro0|e0|reg0|regs~391_combout\);

-- Location: LCCOMB_X15_Y6_N0
\pro0|e0|reg0|regs~392\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~392_combout\ = (\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~389_combout\)) # (!\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~391_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~389_combout\,
	datac => \pro0|co|ir\(11),
	datad => \pro0|e0|reg0|regs~391_combout\,
	combout => \pro0|e0|reg0|regs~392_combout\);

-- Location: LCCOMB_X15_Y6_N14
\mem0|sramContr|SRAM_DQ[5]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[5]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\pro0|e0|reg0|regs~392_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[5]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~392_combout\,
	datac => \mem0|sramContr|SRAM_DQ[5]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[5]$latch~combout\);

-- Location: LCCOMB_X14_Y8_N16
\pro0|e0|d[6]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[6]~11_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux9~0_combout\) # ((\pro0|e0|alu0|Add0~27_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Mux9~0_combout\,
	datab => \pro0|e0|alu0|Add0~27_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[6]~11_combout\);

-- Location: LCFF_X21_Y8_N5
\pro0|e0|reg0|regs~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~241_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~26_regout\);

-- Location: LCCOMB_X20_Y7_N12
\pro0|e0|d[6]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[6]~12_combout\ = (!\pro0|co|c0|Mux3~1_combout\ & \mem0|sramContr|dataReaded\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(6),
	combout => \pro0|e0|d[6]~12_combout\);

-- Location: LCCOMB_X21_Y8_N4
\pro0|e0|reg0|regs~241\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~241_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[6]~11_combout\) # ((\pro0|e0|d[6]~12_combout\)))) # (!\rtl~2_combout\ & (((\pro0|e0|reg0|regs~26_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2_combout\,
	datab => \pro0|e0|d[6]~11_combout\,
	datac => \pro0|e0|reg0|regs~26_regout\,
	datad => \pro0|e0|d[6]~12_combout\,
	combout => \pro0|e0|reg0|regs~241_combout\);

-- Location: LCCOMB_X21_Y8_N28
\pro0|e0|reg0|regs~395\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~395_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~240_combout\) # ((\pro0|co|ir\(10))))) # (!\pro0|co|ir\(9) & (((\pro0|e0|reg0|regs~241_combout\ & !\pro0|co|ir\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~240_combout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~241_combout\,
	datad => \pro0|co|ir\(10),
	combout => \pro0|e0|reg0|regs~395_combout\);

-- Location: LCFF_X21_Y8_N19
\pro0|e0|reg0|regs~58\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~239_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~58_regout\);

-- Location: LCCOMB_X21_Y8_N18
\pro0|e0|reg0|regs~239\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~239_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[6]~11_combout\) # ((\pro0|e0|d[6]~12_combout\)))) # (!\rtl~0_combout\ & (((\pro0|e0|reg0|regs~58_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datab => \pro0|e0|d[6]~11_combout\,
	datac => \pro0|e0|reg0|regs~58_regout\,
	datad => \pro0|e0|d[6]~12_combout\,
	combout => \pro0|e0|reg0|regs~239_combout\);

-- Location: LCCOMB_X21_Y8_N30
\pro0|e0|reg0|regs~396\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~396_combout\ = (\pro0|e0|reg0|regs~395_combout\ & ((\pro0|e0|reg0|regs~243_combout\) # ((!\pro0|co|ir\(10))))) # (!\pro0|e0|reg0|regs~395_combout\ & (((\pro0|co|ir\(10) & \pro0|e0|reg0|regs~239_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~243_combout\,
	datab => \pro0|e0|reg0|regs~395_combout\,
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~239_combout\,
	combout => \pro0|e0|reg0|regs~396_combout\);

-- Location: LCCOMB_X18_Y5_N28
\pro0|e0|reg0|regs~397\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~397_combout\ = (\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~394_combout\)) # (!\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~396_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~394_combout\,
	datac => \pro0|co|ir\(11),
	datad => \pro0|e0|reg0|regs~396_combout\,
	combout => \pro0|e0|reg0|regs~397_combout\);

-- Location: LCCOMB_X18_Y5_N14
\mem0|sramContr|SRAM_DQ[6]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[6]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\pro0|e0|reg0|regs~397_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[6]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~397_combout\,
	datac => \mem0|sramContr|SRAM_DQ[6]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[6]$latch~combout\);

-- Location: LCFF_X14_Y9_N23
\pro0|e0|reg0|regs~43\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~253_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~43_regout\);

-- Location: LCCOMB_X15_Y9_N30
\pro0|e0|d[7]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[7]~14_combout\ = (\mem0|sramContr|dataReaded\(7) & !\pro0|co|c0|Mux3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(7),
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[7]~14_combout\);

-- Location: LCCOMB_X14_Y9_N22
\pro0|e0|reg0|regs~253\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~253_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[7]~13_combout\) # ((\pro0|e0|d[7]~14_combout\)))) # (!\rtl~1_combout\ & (((\pro0|e0|reg0|regs~43_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datab => \pro0|e0|d[7]~13_combout\,
	datac => \pro0|e0|reg0|regs~43_regout\,
	datad => \pro0|e0|d[7]~14_combout\,
	combout => \pro0|e0|reg0|regs~253_combout\);

-- Location: LCFF_X14_Y9_N5
\pro0|e0|reg0|regs~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~254_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~27_regout\);

-- Location: LCCOMB_X14_Y9_N4
\pro0|e0|reg0|regs~254\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~254_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[7]~13_combout\) # ((\pro0|e0|d[7]~14_combout\)))) # (!\rtl~2_combout\ & (((\pro0|e0|reg0|regs~27_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2_combout\,
	datab => \pro0|e0|d[7]~13_combout\,
	datac => \pro0|e0|reg0|regs~27_regout\,
	datad => \pro0|e0|d[7]~14_combout\,
	combout => \pro0|e0|reg0|regs~254_combout\);

-- Location: LCCOMB_X14_Y9_N2
\pro0|e0|reg0|regs~255\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~255_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & ((\pro0|co|c0|addr_a[0]~0_combout\ & (\pro0|e0|reg0|regs~253_combout\)) # 
-- (!\pro0|co|c0|addr_a[0]~0_combout\ & ((\pro0|e0|reg0|regs~254_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~253_combout\,
	datac => \pro0|e0|reg0|regs~254_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~255_combout\);

-- Location: LCFF_X14_Y9_N25
\pro0|e0|reg0|regs~59\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~252_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~59_regout\);

-- Location: LCCOMB_X14_Y9_N24
\pro0|e0|reg0|regs~252\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~252_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[7]~13_combout\) # ((\pro0|e0|d[7]~14_combout\)))) # (!\rtl~0_combout\ & (((\pro0|e0|reg0|regs~59_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datab => \pro0|e0|d[7]~13_combout\,
	datac => \pro0|e0|reg0|regs~59_regout\,
	datad => \pro0|e0|d[7]~14_combout\,
	combout => \pro0|e0|reg0|regs~252_combout\);

-- Location: LCCOMB_X14_Y9_N6
\pro0|e0|reg0|regs~257\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~257_combout\ = (\pro0|e0|reg0|regs~255_combout\ & ((\pro0|e0|reg0|regs~256_combout\) # ((!\pro0|co|c0|addr_a[1]~1_combout\)))) # (!\pro0|e0|reg0|regs~255_combout\ & (((\pro0|e0|reg0|regs~252_combout\ & 
-- \pro0|co|c0|addr_a[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~256_combout\,
	datab => \pro0|e0|reg0|regs~255_combout\,
	datac => \pro0|e0|reg0|regs~252_combout\,
	datad => \pro0|co|c0|addr_a[1]~1_combout\,
	combout => \pro0|e0|reg0|regs~257_combout\);

-- Location: LCFF_X14_Y9_N29
\pro0|e0|reg0|regs~91\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~248_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~91_regout\);

-- Location: LCCOMB_X14_Y9_N28
\pro0|e0|reg0|regs~248\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~248_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[7]~13_combout\) # ((\pro0|e0|d[7]~14_combout\)))) # (!\rtl~6_combout\ & (((\pro0|e0|reg0|regs~91_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datab => \pro0|e0|d[7]~13_combout\,
	datac => \pro0|e0|reg0|regs~91_regout\,
	datad => \pro0|e0|d[7]~14_combout\,
	combout => \pro0|e0|reg0|regs~248_combout\);

-- Location: LCCOMB_X14_Y9_N30
\pro0|e0|reg0|regs~249\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~249_combout\ = (\pro0|co|c0|addr_a[1]~1_combout\ & (((\pro0|e0|reg0|regs~247_combout\) # (\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|co|c0|addr_a[1]~1_combout\ & (\pro0|e0|reg0|regs~248_combout\ & 
-- ((!\pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|addr_a[1]~1_combout\,
	datab => \pro0|e0|reg0|regs~248_combout\,
	datac => \pro0|e0|reg0|regs~247_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~249_combout\);

-- Location: LCFF_X14_Y9_N21
\pro0|e0|reg0|regs~107\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~246_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~107_regout\);

-- Location: LCCOMB_X14_Y9_N20
\pro0|e0|reg0|regs~246\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~246_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[7]~13_combout\) # ((\pro0|e0|d[7]~14_combout\)))) # (!\rtl~4_combout\ & (((\pro0|e0|reg0|regs~107_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4_combout\,
	datab => \pro0|e0|d[7]~13_combout\,
	datac => \pro0|e0|reg0|regs~107_regout\,
	datad => \pro0|e0|d[7]~14_combout\,
	combout => \pro0|e0|reg0|regs~246_combout\);

-- Location: LCCOMB_X14_Y9_N18
\pro0|e0|reg0|regs~251\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~251_combout\ = (\pro0|e0|reg0|regs~249_combout\ & ((\pro0|e0|reg0|regs~250_combout\) # ((!\pro0|co|c0|addr_a[0]~0_combout\)))) # (!\pro0|e0|reg0|regs~249_combout\ & (((\pro0|e0|reg0|regs~246_combout\ & 
-- \pro0|co|c0|addr_a[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~250_combout\,
	datab => \pro0|e0|reg0|regs~249_combout\,
	datac => \pro0|e0|reg0|regs~246_combout\,
	datad => \pro0|co|c0|addr_a[0]~0_combout\,
	combout => \pro0|e0|reg0|regs~251_combout\);

-- Location: LCCOMB_X15_Y9_N0
\pro0|e0|reg0|regs~258\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~258_combout\ = (\pro0|co|c0|addr_a[2]~2_combout\ & ((\pro0|e0|reg0|regs~251_combout\))) # (!\pro0|co|c0|addr_a[2]~2_combout\ & (\pro0|e0|reg0|regs~257_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|reg0|regs~257_combout\,
	datac => \pro0|co|c0|addr_a[2]~2_combout\,
	datad => \pro0|e0|reg0|regs~251_combout\,
	combout => \pro0|e0|reg0|regs~258_combout\);

-- Location: LCCOMB_X16_Y8_N10
\pro0|e0|alu0|Mux8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux8~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|reg0|regs~258_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|e0|y[7]~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datab => \pro0|e0|reg0|regs~258_combout\,
	datac => \pro0|co|ir\(8),
	datad => \pro0|e0|y[7]~7_combout\,
	combout => \pro0|e0|alu0|Mux8~0_combout\);

-- Location: LCCOMB_X15_Y8_N20
\pro0|e0|d[7]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[7]~13_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux8~0_combout\) # ((!\pro0|co|c0|Mux3~0_combout\ & \pro0|e0|alu0|Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datab => \pro0|e0|alu0|Mux8~0_combout\,
	datac => \pro0|e0|alu0|Add0~29_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[7]~13_combout\);

-- Location: LCFF_X14_Y9_N15
\pro0|e0|reg0|regs~123\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~247_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~123_regout\);

-- Location: LCCOMB_X14_Y9_N14
\pro0|e0|reg0|regs~247\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~247_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[7]~13_combout\) # ((\pro0|e0|d[7]~14_combout\)))) # (!\rtl~5_combout\ & (((\pro0|e0|reg0|regs~123_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~5_combout\,
	datab => \pro0|e0|d[7]~13_combout\,
	datac => \pro0|e0|reg0|regs~123_regout\,
	datad => \pro0|e0|d[7]~14_combout\,
	combout => \pro0|e0|reg0|regs~247_combout\);

-- Location: LCCOMB_X14_Y9_N8
\pro0|e0|reg0|regs~398\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~398_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~247_combout\) # ((\pro0|co|ir\(9))))) # (!\pro0|co|ir\(10) & (((!\pro0|co|ir\(9) & \pro0|e0|reg0|regs~248_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~247_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~248_combout\,
	combout => \pro0|e0|reg0|regs~398_combout\);

-- Location: LCFF_X14_Y9_N13
\pro0|e0|reg0|regs~139\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~250_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~139_regout\);

-- Location: LCCOMB_X14_Y9_N12
\pro0|e0|reg0|regs~250\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~250_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[7]~13_combout\) # ((\pro0|e0|d[7]~14_combout\)))) # (!\rtl~7_combout\ & (((\pro0|e0|reg0|regs~139_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datab => \pro0|e0|d[7]~13_combout\,
	datac => \pro0|e0|reg0|regs~139_regout\,
	datad => \pro0|e0|d[7]~14_combout\,
	combout => \pro0|e0|reg0|regs~250_combout\);

-- Location: LCCOMB_X14_Y9_N10
\pro0|e0|reg0|regs~399\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~399_combout\ = (\pro0|e0|reg0|regs~398_combout\ & (((\pro0|e0|reg0|regs~250_combout\) # (!\pro0|co|ir\(9))))) # (!\pro0|e0|reg0|regs~398_combout\ & (\pro0|e0|reg0|regs~246_combout\ & (\pro0|co|ir\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~246_combout\,
	datab => \pro0|e0|reg0|regs~398_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~250_combout\,
	combout => \pro0|e0|reg0|regs~399_combout\);

-- Location: LCCOMB_X18_Y7_N22
\pro0|e0|reg0|regs~402\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~402_combout\ = (\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~399_combout\))) # (!\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~401_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~401_combout\,
	datac => \pro0|co|ir\(11),
	datad => \pro0|e0|reg0|regs~399_combout\,
	combout => \pro0|e0|reg0|regs~402_combout\);

-- Location: LCCOMB_X18_Y7_N14
\mem0|sramContr|SRAM_DQ[7]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[7]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\pro0|e0|reg0|regs~402_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[7]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~402_combout\,
	datab => \mem0|sramContr|SRAM_DQ[7]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[7]$latch~combout\);

-- Location: LCCOMB_X16_Y8_N26
\pro0|e0|alu0|Mux7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux7~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|y[0]~2_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|co|c0|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|y[0]~2_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datac => \pro0|co|ir\(8),
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux7~0_combout\);

-- Location: LCCOMB_X16_Y8_N28
\pro0|e0|alu0|Mux7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux7~1_combout\ = (\pro0|e0|alu0|Mux7~0_combout\) # ((\pro0|e0|alu0|Add0~31_combout\ & !\pro0|co|c0|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~31_combout\,
	datab => \pro0|e0|alu0|Mux7~0_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux7~1_combout\);

-- Location: LCCOMB_X16_Y8_N8
\pro0|e0|d[8]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[8]~15_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux7~1_combout\))) # (!\pro0|co|c0|Mux3~1_combout\ & (\mem0|sramContr|dataReaded\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|dataReaded\(8),
	datab => \pro0|e0|alu0|Mux7~1_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[8]~15_combout\);

-- Location: LCFF_X15_Y7_N9
\pro0|e0|reg0|regs~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~267_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~28_regout\);

-- Location: LCCOMB_X15_Y7_N8
\pro0|e0|reg0|regs~267\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~267_combout\ = (\rtl~2_combout\ & (\pro0|e0|d[8]~15_combout\)) # (!\rtl~2_combout\ & ((\pro0|e0|reg0|regs~28_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[8]~15_combout\,
	datac => \pro0|e0|reg0|regs~28_regout\,
	datad => \rtl~2_combout\,
	combout => \pro0|e0|reg0|regs~267_combout\);

-- Location: LCFF_X15_Y7_N31
\pro0|e0|reg0|regs~44\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~266_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~44_regout\);

-- Location: LCCOMB_X15_Y7_N30
\pro0|e0|reg0|regs~266\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~266_combout\ = (\rtl~1_combout\ & (\pro0|e0|d[8]~15_combout\)) # (!\rtl~1_combout\ & ((\pro0|e0|reg0|regs~44_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[8]~15_combout\,
	datac => \pro0|e0|reg0|regs~44_regout\,
	datad => \rtl~1_combout\,
	combout => \pro0|e0|reg0|regs~266_combout\);

-- Location: LCCOMB_X15_Y7_N18
\pro0|e0|reg0|regs~405\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~405_combout\ = (\pro0|co|ir\(9) & (((\pro0|co|ir\(10)) # (\pro0|e0|reg0|regs~266_combout\)))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~267_combout\ & (!\pro0|co|ir\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~267_combout\,
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~266_combout\,
	combout => \pro0|e0|reg0|regs~405_combout\);

-- Location: LCFF_X15_Y6_N3
\pro0|e0|reg0|regs~76\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~269_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~76_regout\);

-- Location: LCCOMB_X15_Y6_N2
\pro0|e0|reg0|regs~269\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~269_combout\ = (\rtl~3_combout\ & (\pro0|e0|d[8]~15_combout\)) # (!\rtl~3_combout\ & ((\pro0|e0|reg0|regs~76_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[8]~15_combout\,
	datac => \pro0|e0|reg0|regs~76_regout\,
	datad => \rtl~3_combout\,
	combout => \pro0|e0|reg0|regs~269_combout\);

-- Location: LCFF_X15_Y7_N13
\pro0|e0|reg0|regs~60\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~265_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~60_regout\);

-- Location: LCCOMB_X15_Y7_N12
\pro0|e0|reg0|regs~265\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~265_combout\ = (\rtl~0_combout\ & (\pro0|e0|d[8]~15_combout\)) # (!\rtl~0_combout\ & ((\pro0|e0|reg0|regs~60_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[8]~15_combout\,
	datac => \pro0|e0|reg0|regs~60_regout\,
	datad => \rtl~0_combout\,
	combout => \pro0|e0|reg0|regs~265_combout\);

-- Location: LCCOMB_X15_Y7_N24
\pro0|e0|reg0|regs~406\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~406_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~405_combout\ & (\pro0|e0|reg0|regs~269_combout\)) # (!\pro0|e0|reg0|regs~405_combout\ & ((\pro0|e0|reg0|regs~265_combout\))))) # (!\pro0|co|ir\(10) & 
-- (\pro0|e0|reg0|regs~405_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~405_combout\,
	datac => \pro0|e0|reg0|regs~269_combout\,
	datad => \pro0|e0|reg0|regs~265_combout\,
	combout => \pro0|e0|reg0|regs~406_combout\);

-- Location: LCFF_X15_Y6_N9
\pro0|e0|reg0|regs~108\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~259_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~108_regout\);

-- Location: LCCOMB_X15_Y6_N8
\pro0|e0|reg0|regs~259\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~259_combout\ = (\rtl~4_combout\ & (\pro0|e0|d[8]~15_combout\)) # (!\rtl~4_combout\ & ((\pro0|e0|reg0|regs~108_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[8]~15_combout\,
	datac => \pro0|e0|reg0|regs~108_regout\,
	datad => \rtl~4_combout\,
	combout => \pro0|e0|reg0|regs~259_combout\);

-- Location: LCFF_X16_Y7_N1
\pro0|e0|reg0|regs~124\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~260_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~124_regout\);

-- Location: LCCOMB_X16_Y7_N0
\pro0|e0|reg0|regs~260\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~260_combout\ = (\rtl~5_combout\ & (\pro0|e0|d[8]~15_combout\)) # (!\rtl~5_combout\ & ((\pro0|e0|reg0|regs~124_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[8]~15_combout\,
	datab => \rtl~5_combout\,
	datac => \pro0|e0|reg0|regs~124_regout\,
	combout => \pro0|e0|reg0|regs~260_combout\);

-- Location: LCFF_X16_Y7_N19
\pro0|e0|reg0|regs~92\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~261_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~92_regout\);

-- Location: LCCOMB_X16_Y7_N18
\pro0|e0|reg0|regs~261\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~261_combout\ = (\rtl~6_combout\ & (\pro0|e0|d[8]~15_combout\)) # (!\rtl~6_combout\ & ((\pro0|e0|reg0|regs~92_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[8]~15_combout\,
	datac => \pro0|e0|reg0|regs~92_regout\,
	datad => \rtl~6_combout\,
	combout => \pro0|e0|reg0|regs~261_combout\);

-- Location: LCCOMB_X16_Y7_N10
\pro0|e0|reg0|regs~403\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~403_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~260_combout\) # ((\pro0|co|ir\(9))))) # (!\pro0|co|ir\(10) & (((!\pro0|co|ir\(9) & \pro0|e0|reg0|regs~261_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~260_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~261_combout\,
	combout => \pro0|e0|reg0|regs~403_combout\);

-- Location: LCCOMB_X15_Y6_N26
\pro0|e0|reg0|regs~404\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~404_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~403_combout\ & (\pro0|e0|reg0|regs~263_combout\)) # (!\pro0|e0|reg0|regs~403_combout\ & ((\pro0|e0|reg0|regs~259_combout\))))) # (!\pro0|co|ir\(9) & 
-- (((\pro0|e0|reg0|regs~403_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~263_combout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~259_combout\,
	datad => \pro0|e0|reg0|regs~403_combout\,
	combout => \pro0|e0|reg0|regs~404_combout\);

-- Location: LCCOMB_X15_Y7_N22
\mem0|sramContr|SRAM_DQ~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~32_combout\ = (!\mem0|sramContr|process_1~0_combout\ & ((\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~404_combout\))) # (!\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|process_1~0_combout\,
	datab => \pro0|co|ir\(11),
	datac => \pro0|e0|reg0|regs~406_combout\,
	datad => \pro0|e0|reg0|regs~404_combout\,
	combout => \mem0|sramContr|SRAM_DQ~32_combout\);

-- Location: LCCOMB_X18_Y9_N24
\pro0|co|c0|word_byte~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|c0|word_byte~0_combout\ = ((\pro0|co|ir\(13) $ (!\pro0|co|ir\(12))) # (!\pro0|co|ir\(15))) # (!\pro0|co|ir\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(13),
	datab => \pro0|co|ir\(14),
	datac => \pro0|co|ir\(15),
	datad => \pro0|co|ir\(12),
	combout => \pro0|co|c0|word_byte~0_combout\);

-- Location: LCCOMB_X22_Y7_N28
\mem0|sramContr|SRAM_DQ~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~46_combout\ = (\mem0|sramContr|SRAM_DQ~32_combout\) # ((\pro0|co|m0|state~regout\ & (\pro0|e0|reg0|regs~367_combout\ & !\pro0|co|c0|word_byte~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|e0|reg0|regs~367_combout\,
	datac => \mem0|sramContr|SRAM_DQ~32_combout\,
	datad => \pro0|co|c0|word_byte~0_combout\,
	combout => \mem0|sramContr|SRAM_DQ~46_combout\);

-- Location: LCCOMB_X22_Y7_N20
\mem0|sramContr|SRAM_DQ[8]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[8]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ~46_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[8]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_DQ~46_combout\,
	datac => \mem0|sramContr|SRAM_DQ[8]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[8]$latch~combout\);

-- Location: LCCOMB_X19_Y6_N12
\mem0|sramContr|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|process_1~0_combout\ = (\pro0|co|m0|state~regout\ & !\pro0|co|c0|word_byte~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|c0|word_byte~0_combout\,
	combout => \mem0|sramContr|process_1~0_combout\);

-- Location: LCFF_X16_Y7_N23
\pro0|e0|reg0|regs~141\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~276_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~141_regout\);

-- Location: LCCOMB_X15_Y9_N26
\pro0|e0|d[9]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[9]~16_combout\ = (\pro0|co|c0|Mux3~1_combout\ & (\pro0|e0|alu0|Mux6~1_combout\)) # (!\pro0|co|c0|Mux3~1_combout\ & ((\mem0|sramContr|dataReaded\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Mux6~1_combout\,
	datab => \pro0|co|c0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(9),
	combout => \pro0|e0|d[9]~16_combout\);

-- Location: LCCOMB_X16_Y7_N22
\pro0|e0|reg0|regs~276\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~276_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[9]~16_combout\))) # (!\rtl~7_combout\ & (\pro0|e0|reg0|regs~141_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datac => \pro0|e0|reg0|regs~141_regout\,
	datad => \pro0|e0|d[9]~16_combout\,
	combout => \pro0|e0|reg0|regs~276_combout\);

-- Location: LCFF_X16_Y7_N3
\pro0|e0|reg0|regs~109\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~272_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~109_regout\);

-- Location: LCCOMB_X16_Y7_N2
\pro0|e0|reg0|regs~272\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~272_combout\ = (\rtl~4_combout\ & (\pro0|e0|d[9]~16_combout\)) # (!\rtl~4_combout\ & ((\pro0|e0|reg0|regs~109_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[9]~16_combout\,
	datac => \pro0|e0|reg0|regs~109_regout\,
	datad => \rtl~4_combout\,
	combout => \pro0|e0|reg0|regs~272_combout\);

-- Location: LCCOMB_X16_Y7_N26
\pro0|e0|reg0|regs~408\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~408_combout\ = (\pro0|e0|reg0|regs~407_combout\ & ((\pro0|e0|reg0|regs~276_combout\) # ((!\pro0|co|ir\(9))))) # (!\pro0|e0|reg0|regs~407_combout\ & (((\pro0|co|ir\(9) & \pro0|e0|reg0|regs~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~407_combout\,
	datab => \pro0|e0|reg0|regs~276_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~272_combout\,
	combout => \pro0|e0|reg0|regs~408_combout\);

-- Location: LCCOMB_X16_Y7_N8
\mem0|sramContr|SRAM_DQ~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~33_combout\ = (!\mem0|sramContr|process_1~0_combout\ & ((\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~408_combout\))) # (!\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~410_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~410_combout\,
	datab => \mem0|sramContr|process_1~0_combout\,
	datac => \pro0|co|ir\(11),
	datad => \pro0|e0|reg0|regs~408_combout\,
	combout => \mem0|sramContr|SRAM_DQ~33_combout\);

-- Location: LCCOMB_X16_Y7_N6
\mem0|sramContr|SRAM_DQ~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~47_combout\ = (\mem0|sramContr|SRAM_DQ~33_combout\) # ((!\pro0|co|c0|word_byte~0_combout\ & (\pro0|co|m0|state~regout\ & \pro0|e0|reg0|regs~372_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|word_byte~0_combout\,
	datab => \pro0|co|m0|state~regout\,
	datac => \mem0|sramContr|SRAM_DQ~33_combout\,
	datad => \pro0|e0|reg0|regs~372_combout\,
	combout => \mem0|sramContr|SRAM_DQ~47_combout\);

-- Location: LCCOMB_X16_Y7_N14
\mem0|sramContr|SRAM_DQ[9]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[9]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ~47_combout\)) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ[9]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|SRAM_DQ~47_combout\,
	datac => \mem0|sramContr|SRAM_DQ[9]$latch~combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[9]$latch~combout\);

-- Location: LCCOMB_X15_Y9_N16
\pro0|e0|alu0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux5~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & (\pro0|e0|y[2]~0_combout\)) # (!\pro0|co|ir\(8) & ((\pro0|co|c0|Mux3~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(8),
	datab => \pro0|e0|y[2]~0_combout\,
	datac => \pro0|co|c0|Mux3~2_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux5~0_combout\);

-- Location: LCCOMB_X16_Y8_N14
\pro0|e0|alu0|Mux5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux5~1_combout\ = (\pro0|e0|alu0|Mux5~0_combout\) # ((!\pro0|co|c0|Mux3~0_combout\ & \pro0|e0|alu0|Add0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datab => \pro0|e0|alu0|Mux5~0_combout\,
	datad => \pro0|e0|alu0|Add0~35_combout\,
	combout => \pro0|e0|alu0|Mux5~1_combout\);

-- Location: LCCOMB_X20_Y5_N16
\pro0|e0|d[10]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[10]~17_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux5~1_combout\))) # (!\pro0|co|c0|Mux3~1_combout\ & (\mem0|sramContr|dataReaded\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|dataReaded\(10),
	datac => \pro0|e0|alu0|Mux5~1_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[10]~17_combout\);

-- Location: LCFF_X21_Y5_N25
\pro0|e0|reg0|regs~126\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~286_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~126_regout\);

-- Location: LCCOMB_X21_Y5_N24
\pro0|e0|reg0|regs~286\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~286_combout\ = (\rtl~5_combout\ & (\pro0|e0|d[10]~17_combout\)) # (!\rtl~5_combout\ & ((\pro0|e0|reg0|regs~126_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[10]~17_combout\,
	datac => \pro0|e0|reg0|regs~126_regout\,
	datad => \rtl~5_combout\,
	combout => \pro0|e0|reg0|regs~286_combout\);

-- Location: LCFF_X21_Y5_N23
\pro0|e0|reg0|regs~94\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~287_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~94_regout\);

-- Location: LCCOMB_X21_Y5_N22
\pro0|e0|reg0|regs~287\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~287_combout\ = (\rtl~6_combout\ & (\pro0|e0|d[10]~17_combout\)) # (!\rtl~6_combout\ & ((\pro0|e0|reg0|regs~94_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[10]~17_combout\,
	datac => \pro0|e0|reg0|regs~94_regout\,
	datad => \rtl~6_combout\,
	combout => \pro0|e0|reg0|regs~287_combout\);

-- Location: LCCOMB_X21_Y5_N2
\pro0|e0|reg0|regs~411\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~411_combout\ = (\pro0|co|ir\(10) & ((\pro0|co|ir\(9)) # ((\pro0|e0|reg0|regs~286_combout\)))) # (!\pro0|co|ir\(10) & (!\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~286_combout\,
	datad => \pro0|e0|reg0|regs~287_combout\,
	combout => \pro0|e0|reg0|regs~411_combout\);

-- Location: LCFF_X21_Y5_N27
\pro0|e0|reg0|regs~110\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~285_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~110_regout\);

-- Location: LCCOMB_X21_Y5_N26
\pro0|e0|reg0|regs~285\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~285_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[10]~17_combout\))) # (!\rtl~4_combout\ & (\pro0|e0|reg0|regs~110_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~4_combout\,
	datac => \pro0|e0|reg0|regs~110_regout\,
	datad => \pro0|e0|d[10]~17_combout\,
	combout => \pro0|e0|reg0|regs~285_combout\);

-- Location: LCCOMB_X21_Y5_N8
\pro0|e0|reg0|regs~412\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~412_combout\ = (\pro0|e0|reg0|regs~411_combout\ & ((\pro0|e0|reg0|regs~289_combout\) # ((!\pro0|co|ir\(9))))) # (!\pro0|e0|reg0|regs~411_combout\ & (((\pro0|co|ir\(9) & \pro0|e0|reg0|regs~285_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~289_combout\,
	datab => \pro0|e0|reg0|regs~411_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~285_combout\,
	combout => \pro0|e0|reg0|regs~412_combout\);

-- Location: LCFF_X20_Y5_N27
\pro0|e0|reg0|regs~78\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~295_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~78_regout\);

-- Location: LCCOMB_X20_Y5_N26
\pro0|e0|reg0|regs~295\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~295_combout\ = (\rtl~3_combout\ & (\pro0|e0|d[10]~17_combout\)) # (!\rtl~3_combout\ & ((\pro0|e0|reg0|regs~78_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[10]~17_combout\,
	datac => \pro0|e0|reg0|regs~78_regout\,
	datad => \rtl~3_combout\,
	combout => \pro0|e0|reg0|regs~295_combout\);

-- Location: LCFF_X20_Y5_N25
\pro0|e0|reg0|regs~46\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~292_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~46_regout\);

-- Location: LCCOMB_X20_Y5_N24
\pro0|e0|reg0|regs~292\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~292_combout\ = (\rtl~1_combout\ & (\pro0|e0|d[10]~17_combout\)) # (!\rtl~1_combout\ & ((\pro0|e0|reg0|regs~46_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[10]~17_combout\,
	datac => \pro0|e0|reg0|regs~46_regout\,
	datad => \rtl~1_combout\,
	combout => \pro0|e0|reg0|regs~292_combout\);

-- Location: LCFF_X21_Y5_N7
\pro0|e0|reg0|regs~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~293_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~30_regout\);

-- Location: LCCOMB_X21_Y5_N6
\pro0|e0|reg0|regs~293\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~293_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[10]~17_combout\))) # (!\rtl~2_combout\ & (\pro0|e0|reg0|regs~30_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2_combout\,
	datac => \pro0|e0|reg0|regs~30_regout\,
	datad => \pro0|e0|d[10]~17_combout\,
	combout => \pro0|e0|reg0|regs~293_combout\);

-- Location: LCCOMB_X20_Y5_N14
\pro0|e0|reg0|regs~413\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~413_combout\ = (\pro0|co|ir\(10) & (\pro0|co|ir\(9))) # (!\pro0|co|ir\(10) & ((\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~292_combout\)) # (!\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~293_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~292_combout\,
	datad => \pro0|e0|reg0|regs~293_combout\,
	combout => \pro0|e0|reg0|regs~413_combout\);

-- Location: LCFF_X20_Y5_N31
\pro0|e0|reg0|regs~62\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~291_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~62_regout\);

-- Location: LCCOMB_X20_Y5_N30
\pro0|e0|reg0|regs~291\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~291_combout\ = (\rtl~0_combout\ & (\pro0|e0|d[10]~17_combout\)) # (!\rtl~0_combout\ & ((\pro0|e0|reg0|regs~62_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|d[10]~17_combout\,
	datab => \rtl~0_combout\,
	datac => \pro0|e0|reg0|regs~62_regout\,
	combout => \pro0|e0|reg0|regs~291_combout\);

-- Location: LCCOMB_X20_Y5_N28
\pro0|e0|reg0|regs~414\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~414_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~413_combout\ & (\pro0|e0|reg0|regs~295_combout\)) # (!\pro0|e0|reg0|regs~413_combout\ & ((\pro0|e0|reg0|regs~291_combout\))))) # (!\pro0|co|ir\(10) & 
-- (((\pro0|e0|reg0|regs~413_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~295_combout\,
	datac => \pro0|e0|reg0|regs~413_combout\,
	datad => \pro0|e0|reg0|regs~291_combout\,
	combout => \pro0|e0|reg0|regs~414_combout\);

-- Location: LCCOMB_X20_Y5_N18
\mem0|sramContr|SRAM_DQ~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~34_combout\ = (!\mem0|sramContr|process_1~0_combout\ & ((\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~412_combout\)) # (!\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~414_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(11),
	datab => \mem0|sramContr|process_1~0_combout\,
	datac => \pro0|e0|reg0|regs~412_combout\,
	datad => \pro0|e0|reg0|regs~414_combout\,
	combout => \mem0|sramContr|SRAM_DQ~34_combout\);

-- Location: LCCOMB_X20_Y5_N20
\mem0|sramContr|SRAM_DQ~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~48_combout\ = (\mem0|sramContr|SRAM_DQ~34_combout\) # ((!\pro0|co|c0|word_byte~0_combout\ & (\pro0|co|m0|state~regout\ & \pro0|e0|reg0|regs~377_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|word_byte~0_combout\,
	datab => \pro0|co|m0|state~regout\,
	datac => \pro0|e0|reg0|regs~377_combout\,
	datad => \mem0|sramContr|SRAM_DQ~34_combout\,
	combout => \mem0|sramContr|SRAM_DQ~48_combout\);

-- Location: LCCOMB_X20_Y5_N10
\mem0|sramContr|SRAM_DQ[10]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[10]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ~48_combout\))) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ[10]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|SRAM_DQ[10]$latch~combout\,
	datac => \mem0|sramContr|SRAM_DQ~48_combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[10]$latch~combout\);

-- Location: LCFF_X16_Y6_N19
\pro0|e0|reg0|regs~79\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~308_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~79_regout\);

-- Location: LCCOMB_X15_Y8_N14
\pro0|e0|alu0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux4~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & ((\pro0|e0|y[3]~3_combout\))) # (!\pro0|co|ir\(8) & (\pro0|co|c0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datab => \pro0|co|c0|Mux3~2_combout\,
	datac => \pro0|e0|y[3]~3_combout\,
	datad => \pro0|co|ir\(8),
	combout => \pro0|e0|alu0|Mux4~0_combout\);

-- Location: LCCOMB_X16_Y8_N16
\pro0|e0|alu0|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux4~1_combout\ = (\pro0|e0|alu0|Mux4~0_combout\) # ((\pro0|e0|alu0|Add0~37_combout\ & !\pro0|co|c0|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|alu0|Add0~37_combout\,
	datac => \pro0|e0|alu0|Mux4~0_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux4~1_combout\);

-- Location: LCCOMB_X16_Y8_N30
\pro0|e0|d[11]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[11]~18_combout\ = (\pro0|co|c0|Mux3~1_combout\ & (\pro0|e0|alu0|Mux4~1_combout\)) # (!\pro0|co|c0|Mux3~1_combout\ & ((\mem0|sramContr|dataReaded\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~1_combout\,
	datac => \pro0|e0|alu0|Mux4~1_combout\,
	datad => \mem0|sramContr|dataReaded\(11),
	combout => \pro0|e0|d[11]~18_combout\);

-- Location: LCCOMB_X16_Y6_N18
\pro0|e0|reg0|regs~308\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~308_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[11]~18_combout\))) # (!\rtl~3_combout\ & (\pro0|e0|reg0|regs~79_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~3_combout\,
	datac => \pro0|e0|reg0|regs~79_regout\,
	datad => \pro0|e0|d[11]~18_combout\,
	combout => \pro0|e0|reg0|regs~308_combout\);

-- Location: LCFF_X16_Y6_N7
\pro0|e0|reg0|regs~47\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~305_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~47_regout\);

-- Location: LCCOMB_X16_Y6_N6
\pro0|e0|reg0|regs~305\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~305_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[11]~18_combout\))) # (!\rtl~1_combout\ & (\pro0|e0|reg0|regs~47_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datac => \pro0|e0|reg0|regs~47_regout\,
	datad => \pro0|e0|d[11]~18_combout\,
	combout => \pro0|e0|reg0|regs~305_combout\);

-- Location: LCCOMB_X16_Y6_N10
\pro0|e0|reg0|regs~417\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~417_combout\ = (\pro0|co|ir\(9) & (((\pro0|co|ir\(10)) # (\pro0|e0|reg0|regs~305_combout\)))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~306_combout\ & (!\pro0|co|ir\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~306_combout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~305_combout\,
	combout => \pro0|e0|reg0|regs~417_combout\);

-- Location: LCCOMB_X16_Y6_N8
\pro0|e0|reg0|regs~418\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~418_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~417_combout\ & ((\pro0|e0|reg0|regs~308_combout\))) # (!\pro0|e0|reg0|regs~417_combout\ & (\pro0|e0|reg0|regs~304_combout\)))) # (!\pro0|co|ir\(10) & 
-- (((\pro0|e0|reg0|regs~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~304_combout\,
	datab => \pro0|e0|reg0|regs~308_combout\,
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~417_combout\,
	combout => \pro0|e0|reg0|regs~418_combout\);

-- Location: LCFF_X16_Y6_N31
\pro0|e0|reg0|regs~127\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~299_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~127_regout\);

-- Location: LCCOMB_X16_Y6_N30
\pro0|e0|reg0|regs~299\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~299_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[11]~18_combout\))) # (!\rtl~5_combout\ & (\pro0|e0|reg0|regs~127_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~5_combout\,
	datac => \pro0|e0|reg0|regs~127_regout\,
	datad => \pro0|e0|d[11]~18_combout\,
	combout => \pro0|e0|reg0|regs~299_combout\);

-- Location: LCCOMB_X16_Y6_N14
\pro0|e0|reg0|regs~415\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~415_combout\ = (\pro0|co|ir\(9) & (((\pro0|co|ir\(10))))) # (!\pro0|co|ir\(9) & ((\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~299_combout\))) # (!\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~300_combout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|co|ir\(10),
	datad => \pro0|e0|reg0|regs~299_combout\,
	combout => \pro0|e0|reg0|regs~415_combout\);

-- Location: LCFF_X16_Y6_N5
\pro0|e0|reg0|regs~111\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~298_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~111_regout\);

-- Location: LCCOMB_X16_Y6_N4
\pro0|e0|reg0|regs~298\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~298_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[11]~18_combout\))) # (!\rtl~4_combout\ & (\pro0|e0|reg0|regs~111_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4_combout\,
	datac => \pro0|e0|reg0|regs~111_regout\,
	datad => \pro0|e0|d[11]~18_combout\,
	combout => \pro0|e0|reg0|regs~298_combout\);

-- Location: LCFF_X16_Y6_N3
\pro0|e0|reg0|regs~143\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~302_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~143_regout\);

-- Location: LCCOMB_X16_Y6_N2
\pro0|e0|reg0|regs~302\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~302_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[11]~18_combout\))) # (!\rtl~7_combout\ & (\pro0|e0|reg0|regs~143_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~7_combout\,
	datac => \pro0|e0|reg0|regs~143_regout\,
	datad => \pro0|e0|d[11]~18_combout\,
	combout => \pro0|e0|reg0|regs~302_combout\);

-- Location: LCCOMB_X16_Y6_N28
\pro0|e0|reg0|regs~416\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~416_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~415_combout\ & ((\pro0|e0|reg0|regs~302_combout\))) # (!\pro0|e0|reg0|regs~415_combout\ & (\pro0|e0|reg0|regs~298_combout\)))) # (!\pro0|co|ir\(9) & 
-- (\pro0|e0|reg0|regs~415_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~415_combout\,
	datac => \pro0|e0|reg0|regs~298_combout\,
	datad => \pro0|e0|reg0|regs~302_combout\,
	combout => \pro0|e0|reg0|regs~416_combout\);

-- Location: LCCOMB_X16_Y6_N26
\mem0|sramContr|SRAM_DQ~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~35_combout\ = (!\mem0|sramContr|process_1~0_combout\ & ((\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~416_combout\))) # (!\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~418_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|process_1~0_combout\,
	datab => \pro0|co|ir\(11),
	datac => \pro0|e0|reg0|regs~418_combout\,
	datad => \pro0|e0|reg0|regs~416_combout\,
	combout => \mem0|sramContr|SRAM_DQ~35_combout\);

-- Location: LCCOMB_X16_Y6_N16
\mem0|sramContr|SRAM_DQ~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~49_combout\ = (\mem0|sramContr|SRAM_DQ~35_combout\) # ((\pro0|e0|reg0|regs~382_combout\ & (!\pro0|co|c0|word_byte~0_combout\ & \pro0|co|m0|state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~382_combout\,
	datab => \pro0|co|c0|word_byte~0_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|SRAM_DQ~35_combout\,
	combout => \mem0|sramContr|SRAM_DQ~49_combout\);

-- Location: LCCOMB_X16_Y6_N22
\mem0|sramContr|SRAM_DQ[11]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[11]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ~49_combout\))) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ[11]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_DQ[11]$latch~combout\,
	datac => \mem0|sramContr|SRAM_DQ~49_combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[11]$latch~combout\);

-- Location: LCFF_X16_Y5_N1
\pro0|e0|reg0|regs~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~319_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~32_regout\);

-- Location: LCCOMB_X15_Y8_N8
\pro0|e0|alu0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux3~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & ((\pro0|e0|y[4]~4_combout\))) # (!\pro0|co|ir\(8) & (\pro0|co|c0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(8),
	datab => \pro0|co|c0|Mux3~2_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|e0|y[4]~4_combout\,
	combout => \pro0|e0|alu0|Mux3~0_combout\);

-- Location: LCCOMB_X15_Y8_N0
\pro0|e0|alu0|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux3~1_combout\ = (\pro0|e0|alu0|Mux3~0_combout\) # ((!\pro0|co|c0|Mux3~0_combout\ & \pro0|e0|alu0|Add0~39_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Mux3~0_combout\,
	datab => \pro0|e0|alu0|Mux3~0_combout\,
	datad => \pro0|e0|alu0|Add0~39_combout\,
	combout => \pro0|e0|alu0|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y7_N2
\pro0|e0|d[12]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[12]~19_combout\ = (\pro0|co|c0|Mux3~1_combout\ & (\pro0|e0|alu0|Mux3~1_combout\)) # (!\pro0|co|c0|Mux3~1_combout\ & ((\mem0|sramContr|dataReaded\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~1_combout\,
	datac => \pro0|e0|alu0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(12),
	combout => \pro0|e0|d[12]~19_combout\);

-- Location: LCCOMB_X16_Y5_N0
\pro0|e0|reg0|regs~319\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~319_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[12]~19_combout\))) # (!\rtl~2_combout\ & (\pro0|e0|reg0|regs~32_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~2_combout\,
	datac => \pro0|e0|reg0|regs~32_regout\,
	datad => \pro0|e0|d[12]~19_combout\,
	combout => \pro0|e0|reg0|regs~319_combout\);

-- Location: LCFF_X16_Y5_N23
\pro0|e0|reg0|regs~48\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~318_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~48_regout\);

-- Location: LCCOMB_X16_Y5_N22
\pro0|e0|reg0|regs~318\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~318_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[12]~19_combout\))) # (!\rtl~1_combout\ & (\pro0|e0|reg0|regs~48_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datac => \pro0|e0|reg0|regs~48_regout\,
	datad => \pro0|e0|d[12]~19_combout\,
	combout => \pro0|e0|reg0|regs~318_combout\);

-- Location: LCCOMB_X16_Y5_N4
\pro0|e0|reg0|regs~421\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~421_combout\ = (\pro0|co|ir\(10) & (((\pro0|co|ir\(9))))) # (!\pro0|co|ir\(10) & ((\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~318_combout\))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~319_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~318_combout\,
	combout => \pro0|e0|reg0|regs~421_combout\);

-- Location: LCFF_X16_Y5_N17
\pro0|e0|reg0|regs~64\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~317_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~64_regout\);

-- Location: LCCOMB_X16_Y5_N16
\pro0|e0|reg0|regs~317\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~317_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[12]~19_combout\))) # (!\rtl~0_combout\ & (\pro0|e0|reg0|regs~64_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~0_combout\,
	datac => \pro0|e0|reg0|regs~64_regout\,
	datad => \pro0|e0|d[12]~19_combout\,
	combout => \pro0|e0|reg0|regs~317_combout\);

-- Location: LCFF_X16_Y5_N19
\pro0|e0|reg0|regs~80\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~321_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~80_regout\);

-- Location: LCCOMB_X16_Y5_N18
\pro0|e0|reg0|regs~321\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~321_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[12]~19_combout\))) # (!\rtl~3_combout\ & (\pro0|e0|reg0|regs~80_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~3_combout\,
	datac => \pro0|e0|reg0|regs~80_regout\,
	datad => \pro0|e0|d[12]~19_combout\,
	combout => \pro0|e0|reg0|regs~321_combout\);

-- Location: LCCOMB_X16_Y5_N2
\pro0|e0|reg0|regs~422\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~422_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~421_combout\ & ((\pro0|e0|reg0|regs~321_combout\))) # (!\pro0|e0|reg0|regs~421_combout\ & (\pro0|e0|reg0|regs~317_combout\)))) # (!\pro0|co|ir\(10) & 
-- (\pro0|e0|reg0|regs~421_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~421_combout\,
	datac => \pro0|e0|reg0|regs~317_combout\,
	datad => \pro0|e0|reg0|regs~321_combout\,
	combout => \pro0|e0|reg0|regs~422_combout\);

-- Location: LCFF_X16_Y5_N9
\pro0|e0|reg0|regs~112\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~311_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~112_regout\);

-- Location: LCCOMB_X16_Y5_N8
\pro0|e0|reg0|regs~311\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~311_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[12]~19_combout\))) # (!\rtl~4_combout\ & (\pro0|e0|reg0|regs~112_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~4_combout\,
	datac => \pro0|e0|reg0|regs~112_regout\,
	datad => \pro0|e0|d[12]~19_combout\,
	combout => \pro0|e0|reg0|regs~311_combout\);

-- Location: LCFF_X16_Y5_N11
\pro0|e0|reg0|regs~144\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~315_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~144_regout\);

-- Location: LCCOMB_X16_Y5_N10
\pro0|e0|reg0|regs~315\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~315_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[12]~19_combout\))) # (!\rtl~7_combout\ & (\pro0|e0|reg0|regs~144_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datac => \pro0|e0|reg0|regs~144_regout\,
	datad => \pro0|e0|d[12]~19_combout\,
	combout => \pro0|e0|reg0|regs~315_combout\);

-- Location: LCCOMB_X16_Y5_N26
\pro0|e0|reg0|regs~420\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~420_combout\ = (\pro0|e0|reg0|regs~419_combout\ & (((\pro0|e0|reg0|regs~315_combout\)) # (!\pro0|co|ir\(9)))) # (!\pro0|e0|reg0|regs~419_combout\ & (\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~311_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~419_combout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~311_combout\,
	datad => \pro0|e0|reg0|regs~315_combout\,
	combout => \pro0|e0|reg0|regs~420_combout\);

-- Location: LCCOMB_X16_Y5_N20
\mem0|sramContr|SRAM_DQ~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~36_combout\ = (!\mem0|sramContr|process_1~0_combout\ & ((\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~420_combout\))) # (!\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|process_1~0_combout\,
	datab => \pro0|e0|reg0|regs~422_combout\,
	datac => \pro0|co|ir\(11),
	datad => \pro0|e0|reg0|regs~420_combout\,
	combout => \mem0|sramContr|SRAM_DQ~36_combout\);

-- Location: LCCOMB_X16_Y5_N14
\mem0|sramContr|SRAM_DQ~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~50_combout\ = (\mem0|sramContr|SRAM_DQ~36_combout\) # ((\pro0|e0|reg0|regs~387_combout\ & (!\pro0|co|c0|word_byte~0_combout\ & \pro0|co|m0|state~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~387_combout\,
	datab => \pro0|co|c0|word_byte~0_combout\,
	datac => \mem0|sramContr|SRAM_DQ~36_combout\,
	datad => \pro0|co|m0|state~regout\,
	combout => \mem0|sramContr|SRAM_DQ~50_combout\);

-- Location: LCCOMB_X16_Y5_N30
\mem0|sramContr|SRAM_DQ[12]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[12]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ~50_combout\))) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ[12]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_DQ[12]$latch~combout\,
	datac => \mem0|sramContr|SRAM_DQ~50_combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[12]$latch~combout\);

-- Location: LCFF_X14_Y6_N21
\pro0|e0|reg0|regs~113\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~324_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~113_regout\);

-- Location: LCCOMB_X20_Y8_N2
\mem0|sramContr|dataReaded~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~7_combout\ = (\mem0|sramContr|SRAM_UB_N~0_combout\ & ((\mem0|sramContr|SRAM_LB_N~0_combout\ & ((\SRAM_DQ[15]~15\))) # (!\mem0|sramContr|SRAM_LB_N~0_combout\ & (\SRAM_DQ[13]~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[13]~13\,
	datab => \SRAM_DQ[15]~15\,
	datac => \mem0|sramContr|SRAM_LB_N~0_combout\,
	datad => \mem0|sramContr|SRAM_UB_N~0_combout\,
	combout => \mem0|sramContr|dataReaded~7_combout\);

-- Location: LCCOMB_X20_Y8_N12
\mem0|sramContr|dataReaded~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded~8_combout\ = (\mem0|sramContr|dataReaded~7_combout\) # ((!\mem0|sramContr|SRAM_UB_N~0_combout\ & \SRAM_DQ[7]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_UB_N~0_combout\,
	datac => \SRAM_DQ[7]~7\,
	datad => \mem0|sramContr|dataReaded~7_combout\,
	combout => \mem0|sramContr|dataReaded~8_combout\);

-- Location: LCCOMB_X20_Y8_N16
\mem0|sramContr|dataReaded[13]\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|dataReaded\(13) = (GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & ((\mem0|sramContr|dataReaded~8_combout\))) # (!GLOBAL(\mem0|sramContr|state.STOP~clkctrl_outclk\) & (\mem0|sramContr|dataReaded\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|dataReaded\(13),
	datac => \mem0|sramContr|state.STOP~clkctrl_outclk\,
	datad => \mem0|sramContr|dataReaded~8_combout\,
	combout => \mem0|sramContr|dataReaded\(13));

-- Location: LCCOMB_X19_Y8_N14
\pro0|e0|alu0|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux2~1_combout\ = (\pro0|co|c0|Mux3~0_combout\ & (\pro0|e0|alu0|Mux2~0_combout\)) # (!\pro0|co|c0|Mux3~0_combout\ & ((\pro0|e0|alu0|Add0~41_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Mux2~0_combout\,
	datab => \pro0|e0|alu0|Add0~41_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux2~1_combout\);

-- Location: LCCOMB_X20_Y5_N22
\pro0|e0|d[13]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[13]~20_combout\ = (\pro0|co|c0|Mux3~1_combout\ & ((\pro0|e0|alu0|Mux2~1_combout\))) # (!\pro0|co|c0|Mux3~1_combout\ & (\mem0|sramContr|dataReaded\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|dataReaded\(13),
	datac => \pro0|e0|alu0|Mux2~1_combout\,
	datad => \pro0|co|c0|Mux3~1_combout\,
	combout => \pro0|e0|d[13]~20_combout\);

-- Location: LCCOMB_X14_Y6_N20
\pro0|e0|reg0|regs~324\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~324_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[13]~20_combout\))) # (!\rtl~4_combout\ & (\pro0|e0|reg0|regs~113_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~4_combout\,
	datac => \pro0|e0|reg0|regs~113_regout\,
	datad => \pro0|e0|d[13]~20_combout\,
	combout => \pro0|e0|reg0|regs~324_combout\);

-- Location: LCFF_X14_Y6_N19
\pro0|e0|reg0|regs~145\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~328_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~145_regout\);

-- Location: LCCOMB_X14_Y6_N18
\pro0|e0|reg0|regs~328\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~328_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[13]~20_combout\))) # (!\rtl~7_combout\ & (\pro0|e0|reg0|regs~145_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~7_combout\,
	datac => \pro0|e0|reg0|regs~145_regout\,
	datad => \pro0|e0|d[13]~20_combout\,
	combout => \pro0|e0|reg0|regs~328_combout\);

-- Location: LCCOMB_X14_Y6_N4
\pro0|e0|reg0|regs~424\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~424_combout\ = (\pro0|e0|reg0|regs~423_combout\ & (((\pro0|e0|reg0|regs~328_combout\)) # (!\pro0|co|ir\(9)))) # (!\pro0|e0|reg0|regs~423_combout\ & (\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~324_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~423_combout\,
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~324_combout\,
	datad => \pro0|e0|reg0|regs~328_combout\,
	combout => \pro0|e0|reg0|regs~424_combout\);

-- Location: LCFF_X14_Y6_N1
\pro0|e0|reg0|regs~65\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~330_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~65_regout\);

-- Location: LCCOMB_X14_Y6_N0
\pro0|e0|reg0|regs~330\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~330_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[13]~20_combout\))) # (!\rtl~0_combout\ & (\pro0|e0|reg0|regs~65_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datac => \pro0|e0|reg0|regs~65_regout\,
	datad => \pro0|e0|d[13]~20_combout\,
	combout => \pro0|e0|reg0|regs~330_combout\);

-- Location: LCFF_X14_Y6_N29
\pro0|e0|reg0|regs~81\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~334_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~81_regout\);

-- Location: LCCOMB_X14_Y6_N28
\pro0|e0|reg0|regs~334\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~334_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[13]~20_combout\))) # (!\rtl~3_combout\ & (\pro0|e0|reg0|regs~81_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3_combout\,
	datac => \pro0|e0|reg0|regs~81_regout\,
	datad => \pro0|e0|d[13]~20_combout\,
	combout => \pro0|e0|reg0|regs~334_combout\);

-- Location: LCFF_X14_Y6_N9
\pro0|e0|reg0|regs~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~332_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~33_regout\);

-- Location: LCCOMB_X14_Y6_N8
\pro0|e0|reg0|regs~332\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~332_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[13]~20_combout\))) # (!\rtl~2_combout\ & (\pro0|e0|reg0|regs~33_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~2_combout\,
	datac => \pro0|e0|reg0|regs~33_regout\,
	datad => \pro0|e0|d[13]~20_combout\,
	combout => \pro0|e0|reg0|regs~332_combout\);

-- Location: LCFF_X14_Y6_N3
\pro0|e0|reg0|regs~49\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~331_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~49_regout\);

-- Location: LCCOMB_X14_Y6_N2
\pro0|e0|reg0|regs~331\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~331_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[13]~20_combout\))) # (!\rtl~1_combout\ & (\pro0|e0|reg0|regs~49_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~1_combout\,
	datac => \pro0|e0|reg0|regs~49_regout\,
	datad => \pro0|e0|d[13]~20_combout\,
	combout => \pro0|e0|reg0|regs~331_combout\);

-- Location: LCCOMB_X14_Y6_N10
\pro0|e0|reg0|regs~425\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~425_combout\ = (\pro0|co|ir\(10) & (\pro0|co|ir\(9))) # (!\pro0|co|ir\(10) & ((\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~331_combout\))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~332_combout\,
	datad => \pro0|e0|reg0|regs~331_combout\,
	combout => \pro0|e0|reg0|regs~425_combout\);

-- Location: LCCOMB_X14_Y6_N12
\pro0|e0|reg0|regs~426\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~426_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~425_combout\ & ((\pro0|e0|reg0|regs~334_combout\))) # (!\pro0|e0|reg0|regs~425_combout\ & (\pro0|e0|reg0|regs~330_combout\)))) # (!\pro0|co|ir\(10) & 
-- (((\pro0|e0|reg0|regs~425_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~330_combout\,
	datac => \pro0|e0|reg0|regs~334_combout\,
	datad => \pro0|e0|reg0|regs~425_combout\,
	combout => \pro0|e0|reg0|regs~426_combout\);

-- Location: LCCOMB_X14_Y6_N22
\mem0|sramContr|SRAM_DQ~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~37_combout\ = (!\mem0|sramContr|process_1~0_combout\ & ((\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~424_combout\)) # (!\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~426_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(11),
	datab => \mem0|sramContr|process_1~0_combout\,
	datac => \pro0|e0|reg0|regs~424_combout\,
	datad => \pro0|e0|reg0|regs~426_combout\,
	combout => \mem0|sramContr|SRAM_DQ~37_combout\);

-- Location: LCCOMB_X14_Y6_N24
\mem0|sramContr|SRAM_DQ~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~51_combout\ = (\mem0|sramContr|SRAM_DQ~37_combout\) # ((!\pro0|co|c0|word_byte~0_combout\ & (\pro0|co|m0|state~regout\ & \pro0|e0|reg0|regs~392_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|word_byte~0_combout\,
	datab => \pro0|co|m0|state~regout\,
	datac => \pro0|e0|reg0|regs~392_combout\,
	datad => \mem0|sramContr|SRAM_DQ~37_combout\,
	combout => \mem0|sramContr|SRAM_DQ~51_combout\);

-- Location: LCCOMB_X14_Y6_N14
\mem0|sramContr|SRAM_DQ[13]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[13]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ~51_combout\))) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ[13]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_DQ[13]$latch~combout\,
	datac => \mem0|sramContr|SRAM_DQ~51_combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[13]$latch~combout\);

-- Location: LCFF_X15_Y5_N1
\pro0|e0|reg0|regs~82\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~347_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~82_regout\);

-- Location: LCCOMB_X20_Y5_N0
\pro0|e0|d[14]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|d[14]~21_combout\ = (\pro0|co|c0|Mux3~1_combout\ & (\pro0|e0|alu0|Mux1~2_combout\)) # (!\pro0|co|c0|Mux3~1_combout\ & ((\mem0|sramContr|dataReaded\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Mux1~2_combout\,
	datab => \pro0|co|c0|Mux3~1_combout\,
	datad => \mem0|sramContr|dataReaded\(14),
	combout => \pro0|e0|d[14]~21_combout\);

-- Location: LCCOMB_X15_Y5_N0
\pro0|e0|reg0|regs~347\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~347_combout\ = (\rtl~3_combout\ & ((\pro0|e0|d[14]~21_combout\))) # (!\rtl~3_combout\ & (\pro0|e0|reg0|regs~82_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~3_combout\,
	datac => \pro0|e0|reg0|regs~82_regout\,
	datad => \pro0|e0|d[14]~21_combout\,
	combout => \pro0|e0|reg0|regs~347_combout\);

-- Location: LCFF_X15_Y5_N5
\pro0|e0|reg0|regs~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~345_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~34_regout\);

-- Location: LCCOMB_X15_Y5_N4
\pro0|e0|reg0|regs~345\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~345_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[14]~21_combout\))) # (!\rtl~2_combout\ & (\pro0|e0|reg0|regs~34_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~2_combout\,
	datac => \pro0|e0|reg0|regs~34_regout\,
	datad => \pro0|e0|d[14]~21_combout\,
	combout => \pro0|e0|reg0|regs~345_combout\);

-- Location: LCFF_X15_Y5_N23
\pro0|e0|reg0|regs~50\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~344_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~50_regout\);

-- Location: LCCOMB_X15_Y5_N22
\pro0|e0|reg0|regs~344\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~344_combout\ = (\rtl~1_combout\ & ((\pro0|e0|d[14]~21_combout\))) # (!\rtl~1_combout\ & (\pro0|e0|reg0|regs~50_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~1_combout\,
	datac => \pro0|e0|reg0|regs~50_regout\,
	datad => \pro0|e0|d[14]~21_combout\,
	combout => \pro0|e0|reg0|regs~344_combout\);

-- Location: LCCOMB_X15_Y5_N14
\pro0|e0|reg0|regs~429\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~429_combout\ = (\pro0|co|ir\(9) & ((\pro0|co|ir\(10)) # ((\pro0|e0|reg0|regs~344_combout\)))) # (!\pro0|co|ir\(9) & (!\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~345_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~345_combout\,
	datad => \pro0|e0|reg0|regs~344_combout\,
	combout => \pro0|e0|reg0|regs~429_combout\);

-- Location: LCFF_X15_Y5_N13
\pro0|e0|reg0|regs~66\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~343_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~66_regout\);

-- Location: LCCOMB_X15_Y5_N12
\pro0|e0|reg0|regs~343\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~343_combout\ = (\rtl~0_combout\ & ((\pro0|e0|d[14]~21_combout\))) # (!\rtl~0_combout\ & (\pro0|e0|reg0|regs~66_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~0_combout\,
	datac => \pro0|e0|reg0|regs~66_regout\,
	datad => \pro0|e0|d[14]~21_combout\,
	combout => \pro0|e0|reg0|regs~343_combout\);

-- Location: LCCOMB_X15_Y5_N8
\pro0|e0|reg0|regs~430\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~430_combout\ = (\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~429_combout\ & (\pro0|e0|reg0|regs~347_combout\)) # (!\pro0|e0|reg0|regs~429_combout\ & ((\pro0|e0|reg0|regs~343_combout\))))) # (!\pro0|co|ir\(10) & 
-- (((\pro0|e0|reg0|regs~429_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~347_combout\,
	datac => \pro0|e0|reg0|regs~429_combout\,
	datad => \pro0|e0|reg0|regs~343_combout\,
	combout => \pro0|e0|reg0|regs~430_combout\);

-- Location: LCFF_X15_Y5_N27
\pro0|e0|reg0|regs~146\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~341_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~146_regout\);

-- Location: LCCOMB_X15_Y5_N26
\pro0|e0|reg0|regs~341\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~341_combout\ = (\rtl~7_combout\ & ((\pro0|e0|d[14]~21_combout\))) # (!\rtl~7_combout\ & (\pro0|e0|reg0|regs~146_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~7_combout\,
	datac => \pro0|e0|reg0|regs~146_regout\,
	datad => \pro0|e0|d[14]~21_combout\,
	combout => \pro0|e0|reg0|regs~341_combout\);

-- Location: LCFF_X15_Y5_N21
\pro0|e0|reg0|regs~114\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~337_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~114_regout\);

-- Location: LCCOMB_X15_Y5_N20
\pro0|e0|reg0|regs~337\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~337_combout\ = (\rtl~4_combout\ & ((\pro0|e0|d[14]~21_combout\))) # (!\rtl~4_combout\ & (\pro0|e0|reg0|regs~114_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~4_combout\,
	datac => \pro0|e0|reg0|regs~114_regout\,
	datad => \pro0|e0|d[14]~21_combout\,
	combout => \pro0|e0|reg0|regs~337_combout\);

-- Location: LCFF_X15_Y5_N25
\pro0|e0|reg0|regs~98\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~339_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~98_regout\);

-- Location: LCCOMB_X15_Y5_N24
\pro0|e0|reg0|regs~339\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~339_combout\ = (\rtl~6_combout\ & ((\pro0|e0|d[14]~21_combout\))) # (!\rtl~6_combout\ & (\pro0|e0|reg0|regs~98_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rtl~6_combout\,
	datac => \pro0|e0|reg0|regs~98_regout\,
	datad => \pro0|e0|d[14]~21_combout\,
	combout => \pro0|e0|reg0|regs~339_combout\);

-- Location: LCFF_X15_Y5_N19
\pro0|e0|reg0|regs~130\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~338_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~130_regout\);

-- Location: LCCOMB_X15_Y5_N18
\pro0|e0|reg0|regs~338\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~338_combout\ = (\rtl~5_combout\ & ((\pro0|e0|d[14]~21_combout\))) # (!\rtl~5_combout\ & (\pro0|e0|reg0|regs~130_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~5_combout\,
	datac => \pro0|e0|reg0|regs~130_regout\,
	datad => \pro0|e0|d[14]~21_combout\,
	combout => \pro0|e0|reg0|regs~338_combout\);

-- Location: LCCOMB_X15_Y5_N30
\pro0|e0|reg0|regs~427\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~427_combout\ = (\pro0|co|ir\(9) & (\pro0|co|ir\(10))) # (!\pro0|co|ir\(9) & ((\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~338_combout\))) # (!\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~339_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~339_combout\,
	datad => \pro0|e0|reg0|regs~338_combout\,
	combout => \pro0|e0|reg0|regs~427_combout\);

-- Location: LCCOMB_X15_Y5_N28
\pro0|e0|reg0|regs~428\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~428_combout\ = (\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~427_combout\ & (\pro0|e0|reg0|regs~341_combout\)) # (!\pro0|e0|reg0|regs~427_combout\ & ((\pro0|e0|reg0|regs~337_combout\))))) # (!\pro0|co|ir\(9) & 
-- (((\pro0|e0|reg0|regs~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|e0|reg0|regs~341_combout\,
	datac => \pro0|e0|reg0|regs~337_combout\,
	datad => \pro0|e0|reg0|regs~427_combout\,
	combout => \pro0|e0|reg0|regs~428_combout\);

-- Location: LCCOMB_X15_Y5_N10
\mem0|sramContr|SRAM_DQ~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~38_combout\ = (!\mem0|sramContr|process_1~0_combout\ & ((\pro0|co|ir\(11) & ((\pro0|e0|reg0|regs~428_combout\))) # (!\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~430_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(11),
	datab => \mem0|sramContr|process_1~0_combout\,
	datac => \pro0|e0|reg0|regs~430_combout\,
	datad => \pro0|e0|reg0|regs~428_combout\,
	combout => \mem0|sramContr|SRAM_DQ~38_combout\);

-- Location: LCCOMB_X15_Y5_N16
\mem0|sramContr|SRAM_DQ~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~52_combout\ = (\mem0|sramContr|SRAM_DQ~38_combout\) # ((\pro0|co|m0|state~regout\ & (!\pro0|co|c0|word_byte~0_combout\ & \pro0|e0|reg0|regs~397_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|co|c0|word_byte~0_combout\,
	datac => \pro0|e0|reg0|regs~397_combout\,
	datad => \mem0|sramContr|SRAM_DQ~38_combout\,
	combout => \mem0|sramContr|SRAM_DQ~52_combout\);

-- Location: LCCOMB_X15_Y5_N2
\mem0|sramContr|SRAM_DQ[14]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[14]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ~52_combout\))) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ[14]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_DQ[14]$latch~combout\,
	datac => \mem0|sramContr|SRAM_DQ~52_combout\,
	datad => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	combout => \mem0|sramContr|SRAM_DQ[14]$latch~combout\);

-- Location: LCCOMB_X14_Y9_N0
\pro0|e0|reg0|regs~400\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~400_combout\ = (\pro0|co|ir\(10) & (((\pro0|co|ir\(9))))) # (!\pro0|co|ir\(10) & ((\pro0|co|ir\(9) & ((\pro0|e0|reg0|regs~253_combout\))) # (!\pro0|co|ir\(9) & (\pro0|e0|reg0|regs~254_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(10),
	datab => \pro0|e0|reg0|regs~254_combout\,
	datac => \pro0|co|ir\(9),
	datad => \pro0|e0|reg0|regs~253_combout\,
	combout => \pro0|e0|reg0|regs~400_combout\);

-- Location: LCCOMB_X14_Y9_N26
\pro0|e0|reg0|regs~401\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~401_combout\ = (\pro0|e0|reg0|regs~400_combout\ & ((\pro0|e0|reg0|regs~256_combout\) # ((!\pro0|co|ir\(10))))) # (!\pro0|e0|reg0|regs~400_combout\ & (((\pro0|e0|reg0|regs~252_combout\ & \pro0|co|ir\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~256_combout\,
	datab => \pro0|e0|reg0|regs~400_combout\,
	datac => \pro0|e0|reg0|regs~252_combout\,
	datad => \pro0|co|ir\(10),
	combout => \pro0|e0|reg0|regs~401_combout\);

-- Location: LCFF_X21_Y7_N31
\pro0|e0|reg0|regs~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~358_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~35_regout\);

-- Location: LCCOMB_X21_Y7_N30
\pro0|e0|reg0|regs~358\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~358_combout\ = (\rtl~2_combout\ & ((\pro0|e0|d[15]~22_combout\))) # (!\rtl~2_combout\ & (\pro0|e0|reg0|regs~35_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rtl~2_combout\,
	datac => \pro0|e0|reg0|regs~35_regout\,
	datad => \pro0|e0|d[15]~22_combout\,
	combout => \pro0|e0|reg0|regs~358_combout\);

-- Location: LCFF_X20_Y7_N15
\pro0|e0|reg0|regs~51\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|e0|reg0|regs~357_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|e0|reg0|regs~51_regout\);

-- Location: LCCOMB_X20_Y7_N14
\pro0|e0|reg0|regs~357\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|reg0|regs~357_combout\ = (\rtl~1_combout\ & (\pro0|e0|d[15]~22_combout\)) # (!\rtl~1_combout\ & ((\pro0|e0|reg0|regs~51_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|d[15]~22_combout\,
	datac => \pro0|e0|reg0|regs~51_regout\,
	datad => \rtl~1_combout\,
	combout => \pro0|e0|reg0|regs~357_combout\);

-- Location: LCCOMB_X21_Y7_N22
\mem0|sramContr|SRAM_DQ~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~41_combout\ = (\pro0|co|ir\(9) & ((\pro0|co|ir\(10) & (\pro0|e0|reg0|regs~360_combout\)) # (!\pro0|co|ir\(10) & ((\pro0|e0|reg0|regs~357_combout\))))) # (!\pro0|co|ir\(9) & (\pro0|co|ir\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(9),
	datab => \pro0|co|ir\(10),
	datac => \pro0|e0|reg0|regs~360_combout\,
	datad => \pro0|e0|reg0|regs~357_combout\,
	combout => \mem0|sramContr|SRAM_DQ~41_combout\);

-- Location: LCCOMB_X21_Y7_N24
\mem0|sramContr|SRAM_DQ~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~42_combout\ = (\pro0|co|ir\(11) & ((\pro0|co|ir\(9)) # ((\mem0|sramContr|SRAM_DQ~41_combout\)))) # (!\pro0|co|ir\(11) & ((\pro0|co|ir\(9) & ((\mem0|sramContr|SRAM_DQ~41_combout\))) # (!\pro0|co|ir\(9) & 
-- (\pro0|e0|reg0|regs~358_combout\ & !\mem0|sramContr|SRAM_DQ~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(11),
	datab => \pro0|co|ir\(9),
	datac => \pro0|e0|reg0|regs~358_combout\,
	datad => \mem0|sramContr|SRAM_DQ~41_combout\,
	combout => \mem0|sramContr|SRAM_DQ~42_combout\);

-- Location: LCCOMB_X21_Y7_N10
\mem0|sramContr|SRAM_DQ~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~43_combout\ = (\pro0|co|ir\(11) & (\pro0|e0|reg0|regs~352_combout\)) # (!\pro0|co|ir\(11) & (((\pro0|e0|reg0|regs~356_combout\ & \mem0|sramContr|SRAM_DQ~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|reg0|regs~352_combout\,
	datab => \pro0|co|ir\(11),
	datac => \pro0|e0|reg0|regs~356_combout\,
	datad => \mem0|sramContr|SRAM_DQ~41_combout\,
	combout => \mem0|sramContr|SRAM_DQ~43_combout\);

-- Location: LCCOMB_X21_Y7_N0
\mem0|sramContr|SRAM_DQ~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~44_combout\ = (\mem0|sramContr|SRAM_DQ~40_combout\ & ((\mem0|sramContr|SRAM_DQ~42_combout\) # (\mem0|sramContr|SRAM_DQ~43_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|SRAM_DQ~40_combout\,
	datac => \mem0|sramContr|SRAM_DQ~42_combout\,
	datad => \mem0|sramContr|SRAM_DQ~43_combout\,
	combout => \mem0|sramContr|SRAM_DQ~44_combout\);

-- Location: LCCOMB_X21_Y7_N28
\mem0|sramContr|SRAM_DQ~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~53_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|co|c0|word_byte~0_combout\ & ((\mem0|sramContr|SRAM_DQ~44_combout\))) # (!\pro0|co|c0|word_byte~0_combout\ & (\pro0|co|ir\(11))))) # (!\pro0|co|m0|state~regout\ & 
-- (((\mem0|sramContr|SRAM_DQ~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|co|ir\(11),
	datac => \pro0|co|c0|word_byte~0_combout\,
	datad => \mem0|sramContr|SRAM_DQ~44_combout\,
	combout => \mem0|sramContr|SRAM_DQ~53_combout\);

-- Location: LCCOMB_X21_Y7_N2
\mem0|sramContr|SRAM_DQ~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ~45_combout\ = (\mem0|sramContr|process_1~0_combout\ & ((\mem0|sramContr|SRAM_DQ~53_combout\ & ((\pro0|e0|reg0|regs~399_combout\))) # (!\mem0|sramContr|SRAM_DQ~53_combout\ & (\pro0|e0|reg0|regs~401_combout\)))) # 
-- (!\mem0|sramContr|process_1~0_combout\ & (((\mem0|sramContr|SRAM_DQ~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|sramContr|process_1~0_combout\,
	datab => \pro0|e0|reg0|regs~401_combout\,
	datac => \pro0|e0|reg0|regs~399_combout\,
	datad => \mem0|sramContr|SRAM_DQ~53_combout\,
	combout => \mem0|sramContr|SRAM_DQ~45_combout\);

-- Location: LCCOMB_X21_Y7_N26
\mem0|sramContr|SRAM_DQ[15]$latch\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_DQ[15]$latch~combout\ = (GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & ((\mem0|sramContr|SRAM_DQ~45_combout\))) # (!GLOBAL(\mem0|sramContr|state.SETUP~clkctrl_outclk\) & (\mem0|sramContr|SRAM_DQ[15]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mem0|sramContr|SRAM_DQ[15]$latch~combout\,
	datac => \mem0|sramContr|state.SETUP~clkctrl_outclk\,
	datad => \mem0|sramContr|SRAM_DQ~45_combout\,
	combout => \mem0|sramContr|SRAM_DQ[15]$latch~combout\);

-- Location: LCCOMB_X22_Y5_N0
\pro0|co|pc_reg[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[1]~15_combout\ = \pro0|co|pc_reg\(1) $ (VCC)
-- \pro0|co|pc_reg[1]~16\ = CARRY(\pro0|co|pc_reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|pc_reg\(1),
	datad => VCC,
	combout => \pro0|co|pc_reg[1]~15_combout\,
	cout => \pro0|co|pc_reg[1]~16\);

-- Location: LCCOMB_X23_Y5_N8
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X23_Y5_N2
\pro0|co|booted~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|booted~0_combout\ = (\pro0|co|booted~regout\) # (\SW~combout\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|booted~regout\,
	datad => \SW~combout\(9),
	combout => \pro0|co|booted~0_combout\);

-- Location: LCFF_X23_Y5_N3
\pro0|co|booted\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|booted~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|booted~regout\);

-- Location: LCCOMB_X23_Y5_N4
\pro0|co|process_0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|process_0~0_combout\ = ((!\pro0|co|booted~regout\) # (!\pro0|co|m0|state~regout\)) # (!\pro0|co|c0|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Equal0~4_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|booted~regout\,
	combout => \pro0|co|process_0~0_combout\);

-- Location: LCCOMB_X23_Y5_N30
\pro0|co|pc_reg[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[2]~17_combout\ = (\SW~combout\(9)) # ((\pro0|co|c0|Equal0~4_combout\ & (\pro0|co|m0|state~regout\ & \pro0|co|booted~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|c0|Equal0~4_combout\,
	datab => \SW~combout\(9),
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|booted~regout\,
	combout => \pro0|co|pc_reg[2]~17_combout\);

-- Location: LCFF_X22_Y5_N1
\pro0|co|pc_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[1]~15_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(1));

-- Location: LCCOMB_X18_Y7_N20
\pro0|e0|addr_m[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[1]~0_combout\ = (\pro0|co|m0|state~regout\ & (\pro0|e0|alu0|Mux14~2_combout\)) # (!\pro0|co|m0|state~regout\ & ((\pro0|co|pc_reg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|m0|state~regout\,
	datac => \pro0|e0|alu0|Mux14~2_combout\,
	datad => \pro0|co|pc_reg\(1),
	combout => \pro0|e0|addr_m[1]~0_combout\);

-- Location: LCCOMB_X14_Y8_N12
\pro0|e0|addr_m[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[2]~1_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux13~0_combout\) # ((\pro0|e0|alu0|Add0~19_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~19_combout\,
	datab => \pro0|co|c0|Mux3~0_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|e0|alu0|Mux13~0_combout\,
	combout => \pro0|e0|addr_m[2]~1_combout\);

-- Location: LCCOMB_X22_Y5_N2
\pro0|co|pc_reg[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[2]~18_combout\ = (\pro0|co|pc_reg\(2) & (!\pro0|co|pc_reg[1]~16\)) # (!\pro0|co|pc_reg\(2) & ((\pro0|co|pc_reg[1]~16\) # (GND)))
-- \pro0|co|pc_reg[2]~19\ = CARRY((!\pro0|co|pc_reg[1]~16\) # (!\pro0|co|pc_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|pc_reg\(2),
	datad => VCC,
	cin => \pro0|co|pc_reg[1]~16\,
	combout => \pro0|co|pc_reg[2]~18_combout\,
	cout => \pro0|co|pc_reg[2]~19\);

-- Location: LCFF_X22_Y5_N3
\pro0|co|pc_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[2]~18_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(2));

-- Location: LCCOMB_X14_Y8_N10
\pro0|e0|addr_m[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[2]~2_combout\ = (\pro0|e0|addr_m[2]~1_combout\) # ((!\pro0|co|m0|state~regout\ & \pro0|co|pc_reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|addr_m[2]~1_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(2),
	combout => \pro0|e0|addr_m[2]~2_combout\);

-- Location: LCCOMB_X14_Y8_N28
\pro0|e0|addr_m[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[3]~3_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux12~0_combout\) # ((\pro0|e0|alu0|Add0~21_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~21_combout\,
	datab => \pro0|co|c0|Mux3~0_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|e0|alu0|Mux12~0_combout\,
	combout => \pro0|e0|addr_m[3]~3_combout\);

-- Location: LCCOMB_X22_Y5_N4
\pro0|co|pc_reg[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[3]~20_combout\ = (\pro0|co|pc_reg\(3) & (\pro0|co|pc_reg[2]~19\ $ (GND))) # (!\pro0|co|pc_reg\(3) & (!\pro0|co|pc_reg[2]~19\ & VCC))
-- \pro0|co|pc_reg[3]~21\ = CARRY((\pro0|co|pc_reg\(3) & !\pro0|co|pc_reg[2]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|pc_reg\(3),
	datad => VCC,
	cin => \pro0|co|pc_reg[2]~19\,
	combout => \pro0|co|pc_reg[3]~20_combout\,
	cout => \pro0|co|pc_reg[3]~21\);

-- Location: LCFF_X22_Y5_N5
\pro0|co|pc_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[3]~20_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(3));

-- Location: LCCOMB_X14_Y5_N16
\pro0|e0|addr_m[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[3]~4_combout\ = (\pro0|e0|addr_m[3]~3_combout\) # ((!\pro0|co|m0|state~regout\ & \pro0|co|pc_reg\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|e0|addr_m[3]~3_combout\,
	datad => \pro0|co|pc_reg\(3),
	combout => \pro0|e0|addr_m[3]~4_combout\);

-- Location: LCCOMB_X15_Y9_N20
\pro0|e0|addr_m[4]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[4]~5_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux11~0_combout\) # ((\pro0|e0|alu0|Add0~23_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~23_combout\,
	datab => \pro0|e0|alu0|Mux11~0_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|co|m0|state~regout\,
	combout => \pro0|e0|addr_m[4]~5_combout\);

-- Location: LCCOMB_X22_Y5_N6
\pro0|co|pc_reg[4]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[4]~22_combout\ = (\pro0|co|pc_reg\(4) & (!\pro0|co|pc_reg[3]~21\)) # (!\pro0|co|pc_reg\(4) & ((\pro0|co|pc_reg[3]~21\) # (GND)))
-- \pro0|co|pc_reg[4]~23\ = CARRY((!\pro0|co|pc_reg[3]~21\) # (!\pro0|co|pc_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|pc_reg\(4),
	datad => VCC,
	cin => \pro0|co|pc_reg[3]~21\,
	combout => \pro0|co|pc_reg[4]~22_combout\,
	cout => \pro0|co|pc_reg[4]~23\);

-- Location: LCFF_X22_Y5_N7
\pro0|co|pc_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[4]~22_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(4));

-- Location: LCCOMB_X14_Y8_N14
\pro0|e0|addr_m[4]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[4]~6_combout\ = (\pro0|e0|addr_m[4]~5_combout\) # ((!\pro0|co|m0|state~regout\ & \pro0|co|pc_reg\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|addr_m[4]~5_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(4),
	combout => \pro0|e0|addr_m[4]~6_combout\);

-- Location: LCCOMB_X15_Y9_N14
\pro0|e0|addr_m[5]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[5]~7_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux10~0_combout\) # ((\pro0|e0|alu0|Add0~25_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Add0~25_combout\,
	datab => \pro0|e0|alu0|Mux10~0_combout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|co|m0|state~regout\,
	combout => \pro0|e0|addr_m[5]~7_combout\);

-- Location: LCCOMB_X22_Y5_N8
\pro0|co|pc_reg[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[5]~24_combout\ = (\pro0|co|pc_reg\(5) & (\pro0|co|pc_reg[4]~23\ $ (GND))) # (!\pro0|co|pc_reg\(5) & (!\pro0|co|pc_reg[4]~23\ & VCC))
-- \pro0|co|pc_reg[5]~25\ = CARRY((\pro0|co|pc_reg\(5) & !\pro0|co|pc_reg[4]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|pc_reg\(5),
	datad => VCC,
	cin => \pro0|co|pc_reg[4]~23\,
	combout => \pro0|co|pc_reg[5]~24_combout\,
	cout => \pro0|co|pc_reg[5]~25\);

-- Location: LCFF_X22_Y5_N9
\pro0|co|pc_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[5]~24_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(5));

-- Location: LCCOMB_X14_Y5_N10
\pro0|e0|addr_m[5]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[5]~8_combout\ = (\pro0|e0|addr_m[5]~7_combout\) # ((!\pro0|co|m0|state~regout\ & \pro0|co|pc_reg\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datac => \pro0|e0|addr_m[5]~7_combout\,
	datad => \pro0|co|pc_reg\(5),
	combout => \pro0|e0|addr_m[5]~8_combout\);

-- Location: LCCOMB_X14_Y8_N0
\pro0|e0|addr_m[6]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[6]~9_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux9~0_combout\) # ((!\pro0|co|c0|Mux3~0_combout\ & \pro0|e0|alu0|Add0~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Mux9~0_combout\,
	datab => \pro0|co|m0|state~regout\,
	datac => \pro0|co|c0|Mux3~0_combout\,
	datad => \pro0|e0|alu0|Add0~27_combout\,
	combout => \pro0|e0|addr_m[6]~9_combout\);

-- Location: LCCOMB_X22_Y5_N10
\pro0|co|pc_reg[6]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[6]~26_combout\ = (\pro0|co|pc_reg\(6) & (!\pro0|co|pc_reg[5]~25\)) # (!\pro0|co|pc_reg\(6) & ((\pro0|co|pc_reg[5]~25\) # (GND)))
-- \pro0|co|pc_reg[6]~27\ = CARRY((!\pro0|co|pc_reg[5]~25\) # (!\pro0|co|pc_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|pc_reg\(6),
	datad => VCC,
	cin => \pro0|co|pc_reg[5]~25\,
	combout => \pro0|co|pc_reg[6]~26_combout\,
	cout => \pro0|co|pc_reg[6]~27\);

-- Location: LCFF_X22_Y5_N11
\pro0|co|pc_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[6]~26_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(6));

-- Location: LCCOMB_X23_Y5_N16
\pro0|e0|addr_m[6]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[6]~10_combout\ = (\pro0|e0|addr_m[6]~9_combout\) # ((!\pro0|co|m0|state~regout\ & \pro0|co|pc_reg\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|addr_m[6]~9_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(6),
	combout => \pro0|e0|addr_m[6]~10_combout\);

-- Location: LCCOMB_X15_Y8_N4
\pro0|e0|addr_m[7]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[7]~11_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux8~0_combout\) # ((\pro0|e0|alu0|Add0~29_combout\ & !\pro0|co|c0|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|m0|state~regout\,
	datab => \pro0|e0|alu0|Mux8~0_combout\,
	datac => \pro0|e0|alu0|Add0~29_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|addr_m[7]~11_combout\);

-- Location: LCCOMB_X22_Y5_N12
\pro0|co|pc_reg[7]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[7]~28_combout\ = (\pro0|co|pc_reg\(7) & (\pro0|co|pc_reg[6]~27\ $ (GND))) # (!\pro0|co|pc_reg\(7) & (!\pro0|co|pc_reg[6]~27\ & VCC))
-- \pro0|co|pc_reg[7]~29\ = CARRY((\pro0|co|pc_reg\(7) & !\pro0|co|pc_reg[6]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|pc_reg\(7),
	datad => VCC,
	cin => \pro0|co|pc_reg[6]~27\,
	combout => \pro0|co|pc_reg[7]~28_combout\,
	cout => \pro0|co|pc_reg[7]~29\);

-- Location: LCFF_X22_Y5_N13
\pro0|co|pc_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[7]~28_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(7));

-- Location: LCCOMB_X23_Y5_N22
\pro0|e0|addr_m[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[7]~12_combout\ = (\pro0|e0|addr_m[7]~11_combout\) # ((!\pro0|co|m0|state~regout\ & \pro0|co|pc_reg\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|addr_m[7]~11_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(7),
	combout => \pro0|e0|addr_m[7]~12_combout\);

-- Location: LCCOMB_X22_Y5_N14
\pro0|co|pc_reg[8]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[8]~30_combout\ = (\pro0|co|pc_reg\(8) & (!\pro0|co|pc_reg[7]~29\)) # (!\pro0|co|pc_reg\(8) & ((\pro0|co|pc_reg[7]~29\) # (GND)))
-- \pro0|co|pc_reg[8]~31\ = CARRY((!\pro0|co|pc_reg[7]~29\) # (!\pro0|co|pc_reg\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|pc_reg\(8),
	datad => VCC,
	cin => \pro0|co|pc_reg[7]~29\,
	combout => \pro0|co|pc_reg[8]~30_combout\,
	cout => \pro0|co|pc_reg[8]~31\);

-- Location: LCFF_X22_Y5_N15
\pro0|co|pc_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[8]~30_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(8));

-- Location: LCCOMB_X23_Y5_N12
\pro0|e0|addr_m[8]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[8]~13_combout\ = (\pro0|co|m0|state~regout\ & (\pro0|e0|alu0|Mux7~1_combout\)) # (!\pro0|co|m0|state~regout\ & ((\pro0|co|pc_reg\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|alu0|Mux7~1_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(8),
	combout => \pro0|e0|addr_m[8]~13_combout\);

-- Location: LCCOMB_X22_Y5_N16
\pro0|co|pc_reg[9]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[9]~32_combout\ = (\pro0|co|pc_reg\(9) & (\pro0|co|pc_reg[8]~31\ $ (GND))) # (!\pro0|co|pc_reg\(9) & (!\pro0|co|pc_reg[8]~31\ & VCC))
-- \pro0|co|pc_reg[9]~33\ = CARRY((\pro0|co|pc_reg\(9) & !\pro0|co|pc_reg[8]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|pc_reg\(9),
	datad => VCC,
	cin => \pro0|co|pc_reg[8]~31\,
	combout => \pro0|co|pc_reg[9]~32_combout\,
	cout => \pro0|co|pc_reg[9]~33\);

-- Location: LCFF_X22_Y5_N17
\pro0|co|pc_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[9]~32_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(9));

-- Location: LCCOMB_X15_Y9_N12
\pro0|e0|alu0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux6~0_combout\ = (\pro0|co|c0|Mux3~0_combout\ & ((\pro0|co|ir\(8) & ((\pro0|e0|y[1]~1_combout\))) # (!\pro0|co|ir\(8) & (\pro0|co|c0|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|ir\(8),
	datab => \pro0|co|c0|Mux3~2_combout\,
	datac => \pro0|e0|y[1]~1_combout\,
	datad => \pro0|co|c0|Mux3~0_combout\,
	combout => \pro0|e0|alu0|Mux6~0_combout\);

-- Location: LCCOMB_X15_Y9_N6
\pro0|e0|alu0|Mux6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|alu0|Mux6~1_combout\ = (\pro0|e0|alu0|Mux6~0_combout\) # ((!\pro0|co|c0|Mux3~0_combout\ & \pro0|e0|alu0|Add0~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|c0|Mux3~0_combout\,
	datac => \pro0|e0|alu0|Add0~33_combout\,
	datad => \pro0|e0|alu0|Mux6~0_combout\,
	combout => \pro0|e0|alu0|Mux6~1_combout\);

-- Location: LCCOMB_X22_Y5_N30
\pro0|e0|addr_m[9]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[9]~14_combout\ = (\pro0|co|m0|state~regout\ & ((\pro0|e0|alu0|Mux6~1_combout\))) # (!\pro0|co|m0|state~regout\ & (\pro0|co|pc_reg\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|m0|state~regout\,
	datac => \pro0|co|pc_reg\(9),
	datad => \pro0|e0|alu0|Mux6~1_combout\,
	combout => \pro0|e0|addr_m[9]~14_combout\);

-- Location: LCCOMB_X22_Y5_N18
\pro0|co|pc_reg[10]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[10]~34_combout\ = (\pro0|co|pc_reg\(10) & (!\pro0|co|pc_reg[9]~33\)) # (!\pro0|co|pc_reg\(10) & ((\pro0|co|pc_reg[9]~33\) # (GND)))
-- \pro0|co|pc_reg[10]~35\ = CARRY((!\pro0|co|pc_reg[9]~33\) # (!\pro0|co|pc_reg\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|pc_reg\(10),
	datad => VCC,
	cin => \pro0|co|pc_reg[9]~33\,
	combout => \pro0|co|pc_reg[10]~34_combout\,
	cout => \pro0|co|pc_reg[10]~35\);

-- Location: LCFF_X22_Y5_N19
\pro0|co|pc_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[10]~34_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(10));

-- Location: LCCOMB_X20_Y5_N4
\pro0|e0|addr_m[10]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[10]~15_combout\ = (\pro0|co|m0|state~regout\ & (\pro0|e0|alu0|Mux5~1_combout\)) # (!\pro0|co|m0|state~regout\ & ((\pro0|co|pc_reg\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|alu0|Mux5~1_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(10),
	combout => \pro0|e0|addr_m[10]~15_combout\);

-- Location: LCCOMB_X22_Y5_N20
\pro0|co|pc_reg[11]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[11]~36_combout\ = (\pro0|co|pc_reg\(11) & (\pro0|co|pc_reg[10]~35\ $ (GND))) # (!\pro0|co|pc_reg\(11) & (!\pro0|co|pc_reg[10]~35\ & VCC))
-- \pro0|co|pc_reg[11]~37\ = CARRY((\pro0|co|pc_reg\(11) & !\pro0|co|pc_reg[10]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|co|pc_reg\(11),
	datad => VCC,
	cin => \pro0|co|pc_reg[10]~35\,
	combout => \pro0|co|pc_reg[11]~36_combout\,
	cout => \pro0|co|pc_reg[11]~37\);

-- Location: LCFF_X22_Y5_N21
\pro0|co|pc_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[11]~36_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(11));

-- Location: LCCOMB_X21_Y5_N16
\pro0|e0|addr_m[11]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[11]~16_combout\ = (\pro0|co|m0|state~regout\ & (\pro0|e0|alu0|Mux4~1_combout\)) # (!\pro0|co|m0|state~regout\ & ((\pro0|co|pc_reg\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|alu0|Mux4~1_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(11),
	combout => \pro0|e0|addr_m[11]~16_combout\);

-- Location: LCCOMB_X22_Y5_N22
\pro0|co|pc_reg[12]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|co|pc_reg[12]~38_combout\ = (\pro0|co|pc_reg\(12) & (!\pro0|co|pc_reg[11]~37\)) # (!\pro0|co|pc_reg\(12) & ((\pro0|co|pc_reg[11]~37\) # (GND)))
-- \pro0|co|pc_reg[12]~39\ = CARRY((!\pro0|co|pc_reg[11]~37\) # (!\pro0|co|pc_reg\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \pro0|co|pc_reg\(12),
	datad => VCC,
	cin => \pro0|co|pc_reg[11]~37\,
	combout => \pro0|co|pc_reg[12]~38_combout\,
	cout => \pro0|co|pc_reg[12]~39\);

-- Location: LCFF_X22_Y5_N23
\pro0|co|pc_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[12]~38_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(12));

-- Location: LCCOMB_X18_Y5_N16
\pro0|e0|addr_m[12]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[12]~17_combout\ = (\pro0|co|m0|state~regout\ & (\pro0|e0|alu0|Mux3~1_combout\)) # (!\pro0|co|m0|state~regout\ & ((\pro0|co|pc_reg\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pro0|e0|alu0|Mux3~1_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(12),
	combout => \pro0|e0|addr_m[12]~17_combout\);

-- Location: LCFF_X22_Y5_N25
\pro0|co|pc_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clock8~clkctrl_outclk\,
	datain => \pro0|co|pc_reg[13]~40_combout\,
	sdata => \~GND~combout\,
	sload => \pro0|co|process_0~0_combout\,
	ena => \pro0|co|pc_reg[2]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \pro0|co|pc_reg\(13));

-- Location: LCCOMB_X20_Y5_N2
\pro0|e0|addr_m[13]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \pro0|e0|addr_m[13]~18_combout\ = (\pro0|co|m0|state~regout\ & (\pro0|e0|alu0|Mux2~1_combout\)) # (!\pro0|co|m0|state~regout\ & ((\pro0|co|pc_reg\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pro0|e0|alu0|Mux2~1_combout\,
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|pc_reg\(13),
	combout => \pro0|e0|addr_m[13]~18_combout\);

-- Location: LCCOMB_X14_Y4_N20
\mem0|sramContr|SRAM_LB_N~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_LB_N~1_combout\ = (\pro0|co|m0|state~regout\ & \mem0|sramContr|SRAM_LB_N~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|m0|state~regout\,
	datad => \mem0|sramContr|SRAM_LB_N~0_combout\,
	combout => \mem0|sramContr|SRAM_LB_N~1_combout\);

-- Location: LCCOMB_X23_Y4_N16
\mem0|we_validated~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|we_validated~2_combout\ = (\pro0|co|m0|state~regout\ & !\pro0|co|c0|wr_m~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pro0|co|m0|state~regout\,
	datad => \pro0|co|c0|wr_m~0_combout\,
	combout => \mem0|we_validated~2_combout\);

-- Location: LCCOMB_X23_Y4_N8
\mem0|sramContr|SRAM_WE_N~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mem0|sramContr|SRAM_WE_N~0_combout\ = (((\pro0|e0|addr_m[15]~20_combout\ & \pro0|e0|addr_m[14]~19_combout\)) # (!\mem0|sramContr|state.WRITE~regout\)) # (!\mem0|we_validated~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem0|we_validated~2_combout\,
	datab => \pro0|e0|addr_m[15]~20_combout\,
	datac => \mem0|sramContr|state.WRITE~regout\,
	datad => \pro0|e0|addr_m[14]~19_combout\,
	combout => \mem0|sramContr|SRAM_WE_N~0_combout\);

-- Location: PIN_AA3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(0));

-- Location: PIN_AB3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(1));

-- Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(2));

-- Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(3));

-- Location: PIN_AA5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(4));

-- Location: PIN_AB10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[6]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(5));

-- Location: PIN_AA11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(6));

-- Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[8]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(7));

-- Location: PIN_V11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[9]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(8));

-- Location: PIN_W11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[10]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(9));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[11]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(10));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[12]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(11));

-- Location: PIN_Y10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[13]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(12));

-- Location: PIN_U10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[14]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(13));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \pro0|e0|addr_m[15]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(14));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(15));

-- Location: PIN_Y6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[16]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(16));

-- Location: PIN_Y5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_ADDR[17]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_ADDR(17));

-- Location: PIN_W7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_UB_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|ALT_INV_SRAM_UB_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_UB_N);

-- Location: PIN_Y7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_LB_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_LB_N~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_LB_N);

-- Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_CE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_CE_N);

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_OE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_OE_N);

-- Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\SRAM_WE_N~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \mem0|sramContr|SRAM_WE_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SRAM_WE_N);
END structure;


