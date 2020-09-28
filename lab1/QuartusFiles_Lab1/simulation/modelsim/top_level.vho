-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "09/28/2020 12:32:56"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0);
	HEX0 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX1 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX2 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX3 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX4 : BUFFER std_logic_vector(7 DOWNTO 0);
	HEX5 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[1]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[2]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[3]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[4]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[5]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[6]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[8]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LEDR[9]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[1]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[2]	=>  Location: PIN_E21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_C19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_C20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_E17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[7]	=>  Location: PIN_D22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_E20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_E19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_F19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[7]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_K20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_L18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_N19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[7]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset_n	=>  Location: PIN_A7,	 I/O Standard: 3.3 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(7 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX3[7]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX4[7]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX5[7]~output_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~5_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|counter~2_combout\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.s6~q\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~1\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~2_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~3\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~4_combout\ : std_logic;
SIGNAL \binary_bcd_ins|counter~1_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~8_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~6_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~7_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~9_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~5\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~6_combout\ : std_logic;
SIGNAL \binary_bcd_ins|counter~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~7\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~8_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~9\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~10_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~11\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~12_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~13\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~14_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~15\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~16_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~17\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~18_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~19\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~20_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~21\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~22_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~23\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~24_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~25\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~26_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~27\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~28_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~29\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~30_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~31\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~32_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~33\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~34_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~35\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~36_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~37\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~38_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~3_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~39\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~40_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~41\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~42_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~43\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~44_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~45\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~46_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~47\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~48_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~49\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~50_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~51\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~52_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~53\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~54_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~55\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~56_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~57\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~58_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~59\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~60_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~61\ : std_logic;
SIGNAL \binary_bcd_ins|Add4~62_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~2_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~1_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Equal0~4_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd[3]~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.S0~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.S0~q\ : std_logic;
SIGNAL \binary_bcd_ins|Selector29~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.S1~q\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.S2~q\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.S3~q\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.S4~q\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.S5~feeder_combout\ : std_logic;
SIGNAL \binary_bcd_ins|CurentState.S5~q\ : std_logic;
SIGNAL \binary_bcd_ins|Selector28~1_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector28~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector28~2_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector28~3_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector27~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[12]~37_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector26~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector25~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector24~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector23~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector22~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector21~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector20~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector19~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector18~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector17~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector16~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector15~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|LessThan3~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[13]~6_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[13]~7_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[13]~38_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~1\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~2_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector14~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~3\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~4_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector13~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~5\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~6_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector12~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd[0]~feeder_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd[1]~feeder_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder0|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder0|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder0|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder0|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder0|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder0|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder0|Mux0~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~7\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~8_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector11~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~1\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~2_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~9\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~10_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector10~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~11\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~12_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~3\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~4_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector9~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~5\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~6_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~13\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~14_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector8~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[19]~8_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[19]~9_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[19]~10_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder1|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder1|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder1|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder1|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder1|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder1|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder1|Mux0~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[24]~11_combout\ : std_logic;
SIGNAL \binary_bcd_ins|WideOr1~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~15\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~16_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector7~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~7\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~8_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector7~1_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[19]~13_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[24]~12_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[24]~14_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~9\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~10_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~1\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~2_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector6~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~17\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~18_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector6~1_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~11\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~12_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~3\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~4_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~19\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~20_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector5~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector5~1_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~5\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~6_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~13\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~14_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector4~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~21\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~22_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Selector4~1_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd[8]~feeder_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder2|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder2|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder2|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder2|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder2|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder2|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder2|Mux0~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[28]~34_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[28]~35_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~15\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~17\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~19\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~21\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~22_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[28]~40_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~29\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~30_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[27]~29_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[27]~28_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~7\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~9\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~11\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~13\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~14_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[28]~33_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[27]~26_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[28]~36_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[28]~15_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[28]~16_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[28]~17_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~8_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[25]~18_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[25]~19_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~16_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[25]~20_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~23\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~24_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[25]~21_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[26]~23_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~18_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~10_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[26]~22_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[26]~24_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~25\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~26_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[26]~25_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~27\ : std_logic;
SIGNAL \binary_bcd_ins|Add3~28_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add2~20_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[27]~39_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[27]~27_combout\ : std_logic;
SIGNAL \binary_bcd_ins|Add1~12_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[27]~30_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[27]~31_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal[27]~32_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder3|Mux6~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder3|Mux5~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder3|Mux4~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder3|Mux3~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder3|Mux2~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder3|Mux1~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder3|Mux0~0_combout\ : std_logic;
SIGNAL \binary_bcd_ins|bcd_signal\ : std_logic_vector(28 DOWNTO 0);
SIGNAL \binary_bcd_ins|bcd\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \binary_bcd_ins|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \SevenSegment_ins|decoder3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder2|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \SevenSegment_ins|decoder0|ALT_INV_Mux0~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\SevenSegment_ins|decoder3|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegment_ins|decoder3|Mux0~0_combout\;
\SevenSegment_ins|decoder2|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegment_ins|decoder2|Mux0~0_combout\;
\SevenSegment_ins|decoder1|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegment_ins|decoder1|Mux0~0_combout\;
\SevenSegment_ins|decoder0|ALT_INV_Mux0~0_combout\ <= NOT \SevenSegment_ins|decoder0|Mux0~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N8
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X46_Y54_N2
\LEDR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[0]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\LEDR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[1]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\LEDR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[2]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\LEDR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[3]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\LEDR[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[4]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\LEDR[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[5]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\LEDR[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[6]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\LEDR[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[7]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\LEDR[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[8]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\LEDR[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SW[9]~input_o\,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder2|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder2|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder2|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder2|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder2|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder2|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\HEX3[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\HEX3[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\HEX3[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\HEX3[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\HEX3[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\HEX3[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\HEX3[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SevenSegment_ins|decoder3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\HEX3[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX3[7]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\HEX4[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\HEX4[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\HEX4[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\HEX4[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\HEX4[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\HEX4[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\HEX4[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\HEX4[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX4[7]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\HEX5[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\HEX5[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\HEX5[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\HEX5[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\HEX5[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\HEX5[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\HEX5[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\HEX5[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX5[7]~output_o\);

-- Location: IOIBUF_X51_Y54_N29
\SW[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X51_Y54_N22
\SW[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\SW[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\SW[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SW[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X49_Y54_N1
\SW[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X54_Y54_N15
\SW[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X58_Y54_N29
\SW[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X56_Y54_N1
\SW[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X69_Y54_N1
\SW[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X34_Y0_N29
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G19
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y49_N22
\binary_bcd_ins|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~5_combout\ = (!\binary_bcd_ins|counter\(13) & (!\binary_bcd_ins|counter\(14) & (!\binary_bcd_ins|counter\(15) & !\binary_bcd_ins|counter\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(13),
	datab => \binary_bcd_ins|counter\(14),
	datac => \binary_bcd_ins|counter\(15),
	datad => \binary_bcd_ins|counter\(12),
	combout => \binary_bcd_ins|Equal0~5_combout\);

-- Location: LCCOMB_X58_Y49_N0
\binary_bcd_ins|Add4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~0_combout\ = \binary_bcd_ins|counter\(0) $ (VCC)
-- \binary_bcd_ins|Add4~1\ = CARRY(\binary_bcd_ins|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(0),
	datad => VCC,
	combout => \binary_bcd_ins|Add4~0_combout\,
	cout => \binary_bcd_ins|Add4~1\);

-- Location: LCCOMB_X57_Y49_N14
\binary_bcd_ins|counter~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|counter~2_combout\ = (\binary_bcd_ins|Add4~0_combout\ & ((!\binary_bcd_ins|Equal0~9_combout\) # (!\binary_bcd_ins|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~4_combout\,
	datac => \binary_bcd_ins|Add4~0_combout\,
	datad => \binary_bcd_ins|Equal0~9_combout\,
	combout => \binary_bcd_ins|counter~2_combout\);

-- Location: IOIBUF_X49_Y54_N29
\reset_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: FF_X57_Y49_N9
\binary_bcd_ins|CurentState.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|CurentState.S5~q\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|CurentState.s6~q\);

-- Location: FF_X57_Y49_N15
\binary_bcd_ins|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|counter~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(0));

-- Location: LCCOMB_X58_Y49_N2
\binary_bcd_ins|Add4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~2_combout\ = (\binary_bcd_ins|counter\(1) & (!\binary_bcd_ins|Add4~1\)) # (!\binary_bcd_ins|counter\(1) & ((\binary_bcd_ins|Add4~1\) # (GND)))
-- \binary_bcd_ins|Add4~3\ = CARRY((!\binary_bcd_ins|Add4~1\) # (!\binary_bcd_ins|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(1),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~1\,
	combout => \binary_bcd_ins|Add4~2_combout\,
	cout => \binary_bcd_ins|Add4~3\);

-- Location: FF_X58_Y49_N3
\binary_bcd_ins|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~2_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(1));

-- Location: LCCOMB_X58_Y49_N4
\binary_bcd_ins|Add4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~4_combout\ = (\binary_bcd_ins|counter\(2) & (\binary_bcd_ins|Add4~3\ $ (GND))) # (!\binary_bcd_ins|counter\(2) & (!\binary_bcd_ins|Add4~3\ & VCC))
-- \binary_bcd_ins|Add4~5\ = CARRY((\binary_bcd_ins|counter\(2) & !\binary_bcd_ins|Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(2),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~3\,
	combout => \binary_bcd_ins|Add4~4_combout\,
	cout => \binary_bcd_ins|Add4~5\);

-- Location: LCCOMB_X57_Y49_N28
\binary_bcd_ins|counter~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|counter~1_combout\ = (\binary_bcd_ins|Add4~4_combout\ & ((!\binary_bcd_ins|Equal0~4_combout\) # (!\binary_bcd_ins|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~9_combout\,
	datac => \binary_bcd_ins|Equal0~4_combout\,
	datad => \binary_bcd_ins|Add4~4_combout\,
	combout => \binary_bcd_ins|counter~1_combout\);

-- Location: FF_X57_Y49_N29
\binary_bcd_ins|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|counter~1_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(2));

-- Location: LCCOMB_X57_Y49_N16
\binary_bcd_ins|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~8_combout\ = (!\binary_bcd_ins|counter\(1) & (\binary_bcd_ins|counter\(2) & (!\binary_bcd_ins|counter\(0) & \binary_bcd_ins|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(1),
	datab => \binary_bcd_ins|counter\(2),
	datac => \binary_bcd_ins|counter\(0),
	datad => \binary_bcd_ins|counter\(3),
	combout => \binary_bcd_ins|Equal0~8_combout\);

-- Location: LCCOMB_X59_Y49_N24
\binary_bcd_ins|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~6_combout\ = (!\binary_bcd_ins|counter\(11) & (!\binary_bcd_ins|counter\(10) & (!\binary_bcd_ins|counter\(8) & !\binary_bcd_ins|counter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(11),
	datab => \binary_bcd_ins|counter\(10),
	datac => \binary_bcd_ins|counter\(8),
	datad => \binary_bcd_ins|counter\(9),
	combout => \binary_bcd_ins|Equal0~6_combout\);

-- Location: LCCOMB_X57_Y49_N24
\binary_bcd_ins|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~7_combout\ = (!\binary_bcd_ins|counter\(5) & (!\binary_bcd_ins|counter\(7) & (!\binary_bcd_ins|counter\(4) & !\binary_bcd_ins|counter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(5),
	datab => \binary_bcd_ins|counter\(7),
	datac => \binary_bcd_ins|counter\(4),
	datad => \binary_bcd_ins|counter\(6),
	combout => \binary_bcd_ins|Equal0~7_combout\);

-- Location: LCCOMB_X57_Y49_N10
\binary_bcd_ins|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~9_combout\ = (\binary_bcd_ins|Equal0~5_combout\ & (\binary_bcd_ins|Equal0~8_combout\ & (\binary_bcd_ins|Equal0~6_combout\ & \binary_bcd_ins|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~5_combout\,
	datab => \binary_bcd_ins|Equal0~8_combout\,
	datac => \binary_bcd_ins|Equal0~6_combout\,
	datad => \binary_bcd_ins|Equal0~7_combout\,
	combout => \binary_bcd_ins|Equal0~9_combout\);

-- Location: LCCOMB_X58_Y49_N6
\binary_bcd_ins|Add4~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~6_combout\ = (\binary_bcd_ins|counter\(3) & (!\binary_bcd_ins|Add4~5\)) # (!\binary_bcd_ins|counter\(3) & ((\binary_bcd_ins|Add4~5\) # (GND)))
-- \binary_bcd_ins|Add4~7\ = CARRY((!\binary_bcd_ins|Add4~5\) # (!\binary_bcd_ins|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(3),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~5\,
	combout => \binary_bcd_ins|Add4~6_combout\,
	cout => \binary_bcd_ins|Add4~7\);

-- Location: LCCOMB_X57_Y49_N2
\binary_bcd_ins|counter~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|counter~0_combout\ = (\binary_bcd_ins|Add4~6_combout\ & ((!\binary_bcd_ins|Equal0~4_combout\) # (!\binary_bcd_ins|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~9_combout\,
	datac => \binary_bcd_ins|Add4~6_combout\,
	datad => \binary_bcd_ins|Equal0~4_combout\,
	combout => \binary_bcd_ins|counter~0_combout\);

-- Location: FF_X57_Y49_N3
\binary_bcd_ins|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|counter~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(3));

-- Location: LCCOMB_X58_Y49_N8
\binary_bcd_ins|Add4~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~8_combout\ = (\binary_bcd_ins|counter\(4) & (\binary_bcd_ins|Add4~7\ $ (GND))) # (!\binary_bcd_ins|counter\(4) & (!\binary_bcd_ins|Add4~7\ & VCC))
-- \binary_bcd_ins|Add4~9\ = CARRY((\binary_bcd_ins|counter\(4) & !\binary_bcd_ins|Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(4),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~7\,
	combout => \binary_bcd_ins|Add4~8_combout\,
	cout => \binary_bcd_ins|Add4~9\);

-- Location: FF_X58_Y49_N9
\binary_bcd_ins|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~8_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(4));

-- Location: LCCOMB_X58_Y49_N10
\binary_bcd_ins|Add4~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~10_combout\ = (\binary_bcd_ins|counter\(5) & (!\binary_bcd_ins|Add4~9\)) # (!\binary_bcd_ins|counter\(5) & ((\binary_bcd_ins|Add4~9\) # (GND)))
-- \binary_bcd_ins|Add4~11\ = CARRY((!\binary_bcd_ins|Add4~9\) # (!\binary_bcd_ins|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(5),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~9\,
	combout => \binary_bcd_ins|Add4~10_combout\,
	cout => \binary_bcd_ins|Add4~11\);

-- Location: FF_X58_Y49_N11
\binary_bcd_ins|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~10_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(5));

-- Location: LCCOMB_X58_Y49_N12
\binary_bcd_ins|Add4~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~12_combout\ = (\binary_bcd_ins|counter\(6) & (\binary_bcd_ins|Add4~11\ $ (GND))) # (!\binary_bcd_ins|counter\(6) & (!\binary_bcd_ins|Add4~11\ & VCC))
-- \binary_bcd_ins|Add4~13\ = CARRY((\binary_bcd_ins|counter\(6) & !\binary_bcd_ins|Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(6),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~11\,
	combout => \binary_bcd_ins|Add4~12_combout\,
	cout => \binary_bcd_ins|Add4~13\);

-- Location: FF_X58_Y49_N13
\binary_bcd_ins|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~12_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(6));

-- Location: LCCOMB_X58_Y49_N14
\binary_bcd_ins|Add4~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~14_combout\ = (\binary_bcd_ins|counter\(7) & (!\binary_bcd_ins|Add4~13\)) # (!\binary_bcd_ins|counter\(7) & ((\binary_bcd_ins|Add4~13\) # (GND)))
-- \binary_bcd_ins|Add4~15\ = CARRY((!\binary_bcd_ins|Add4~13\) # (!\binary_bcd_ins|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(7),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~13\,
	combout => \binary_bcd_ins|Add4~14_combout\,
	cout => \binary_bcd_ins|Add4~15\);

-- Location: FF_X58_Y49_N15
\binary_bcd_ins|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~14_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(7));

-- Location: LCCOMB_X58_Y49_N16
\binary_bcd_ins|Add4~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~16_combout\ = (\binary_bcd_ins|counter\(8) & (\binary_bcd_ins|Add4~15\ $ (GND))) # (!\binary_bcd_ins|counter\(8) & (!\binary_bcd_ins|Add4~15\ & VCC))
-- \binary_bcd_ins|Add4~17\ = CARRY((\binary_bcd_ins|counter\(8) & !\binary_bcd_ins|Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(8),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~15\,
	combout => \binary_bcd_ins|Add4~16_combout\,
	cout => \binary_bcd_ins|Add4~17\);

-- Location: FF_X58_Y49_N17
\binary_bcd_ins|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~16_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(8));

-- Location: LCCOMB_X58_Y49_N18
\binary_bcd_ins|Add4~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~18_combout\ = (\binary_bcd_ins|counter\(9) & (!\binary_bcd_ins|Add4~17\)) # (!\binary_bcd_ins|counter\(9) & ((\binary_bcd_ins|Add4~17\) # (GND)))
-- \binary_bcd_ins|Add4~19\ = CARRY((!\binary_bcd_ins|Add4~17\) # (!\binary_bcd_ins|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(9),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~17\,
	combout => \binary_bcd_ins|Add4~18_combout\,
	cout => \binary_bcd_ins|Add4~19\);

-- Location: FF_X58_Y49_N19
\binary_bcd_ins|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~18_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(9));

-- Location: LCCOMB_X58_Y49_N20
\binary_bcd_ins|Add4~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~20_combout\ = (\binary_bcd_ins|counter\(10) & (\binary_bcd_ins|Add4~19\ $ (GND))) # (!\binary_bcd_ins|counter\(10) & (!\binary_bcd_ins|Add4~19\ & VCC))
-- \binary_bcd_ins|Add4~21\ = CARRY((\binary_bcd_ins|counter\(10) & !\binary_bcd_ins|Add4~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(10),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~19\,
	combout => \binary_bcd_ins|Add4~20_combout\,
	cout => \binary_bcd_ins|Add4~21\);

-- Location: FF_X58_Y49_N21
\binary_bcd_ins|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~20_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(10));

-- Location: LCCOMB_X58_Y49_N22
\binary_bcd_ins|Add4~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~22_combout\ = (\binary_bcd_ins|counter\(11) & (!\binary_bcd_ins|Add4~21\)) # (!\binary_bcd_ins|counter\(11) & ((\binary_bcd_ins|Add4~21\) # (GND)))
-- \binary_bcd_ins|Add4~23\ = CARRY((!\binary_bcd_ins|Add4~21\) # (!\binary_bcd_ins|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(11),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~21\,
	combout => \binary_bcd_ins|Add4~22_combout\,
	cout => \binary_bcd_ins|Add4~23\);

-- Location: FF_X58_Y49_N23
\binary_bcd_ins|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~22_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(11));

-- Location: LCCOMB_X58_Y49_N24
\binary_bcd_ins|Add4~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~24_combout\ = (\binary_bcd_ins|counter\(12) & (\binary_bcd_ins|Add4~23\ $ (GND))) # (!\binary_bcd_ins|counter\(12) & (!\binary_bcd_ins|Add4~23\ & VCC))
-- \binary_bcd_ins|Add4~25\ = CARRY((\binary_bcd_ins|counter\(12) & !\binary_bcd_ins|Add4~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(12),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~23\,
	combout => \binary_bcd_ins|Add4~24_combout\,
	cout => \binary_bcd_ins|Add4~25\);

-- Location: FF_X58_Y49_N25
\binary_bcd_ins|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~24_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(12));

-- Location: LCCOMB_X58_Y49_N26
\binary_bcd_ins|Add4~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~26_combout\ = (\binary_bcd_ins|counter\(13) & (!\binary_bcd_ins|Add4~25\)) # (!\binary_bcd_ins|counter\(13) & ((\binary_bcd_ins|Add4~25\) # (GND)))
-- \binary_bcd_ins|Add4~27\ = CARRY((!\binary_bcd_ins|Add4~25\) # (!\binary_bcd_ins|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(13),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~25\,
	combout => \binary_bcd_ins|Add4~26_combout\,
	cout => \binary_bcd_ins|Add4~27\);

-- Location: FF_X58_Y49_N27
\binary_bcd_ins|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~26_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(13));

-- Location: LCCOMB_X58_Y49_N28
\binary_bcd_ins|Add4~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~28_combout\ = (\binary_bcd_ins|counter\(14) & (\binary_bcd_ins|Add4~27\ $ (GND))) # (!\binary_bcd_ins|counter\(14) & (!\binary_bcd_ins|Add4~27\ & VCC))
-- \binary_bcd_ins|Add4~29\ = CARRY((\binary_bcd_ins|counter\(14) & !\binary_bcd_ins|Add4~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(14),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~27\,
	combout => \binary_bcd_ins|Add4~28_combout\,
	cout => \binary_bcd_ins|Add4~29\);

-- Location: FF_X58_Y49_N29
\binary_bcd_ins|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~28_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(14));

-- Location: LCCOMB_X58_Y49_N30
\binary_bcd_ins|Add4~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~30_combout\ = (\binary_bcd_ins|counter\(15) & (!\binary_bcd_ins|Add4~29\)) # (!\binary_bcd_ins|counter\(15) & ((\binary_bcd_ins|Add4~29\) # (GND)))
-- \binary_bcd_ins|Add4~31\ = CARRY((!\binary_bcd_ins|Add4~29\) # (!\binary_bcd_ins|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(15),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~29\,
	combout => \binary_bcd_ins|Add4~30_combout\,
	cout => \binary_bcd_ins|Add4~31\);

-- Location: FF_X58_Y49_N31
\binary_bcd_ins|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~30_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(15));

-- Location: LCCOMB_X58_Y48_N0
\binary_bcd_ins|Add4~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~32_combout\ = (\binary_bcd_ins|counter\(16) & (\binary_bcd_ins|Add4~31\ $ (GND))) # (!\binary_bcd_ins|counter\(16) & (!\binary_bcd_ins|Add4~31\ & VCC))
-- \binary_bcd_ins|Add4~33\ = CARRY((\binary_bcd_ins|counter\(16) & !\binary_bcd_ins|Add4~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(16),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~31\,
	combout => \binary_bcd_ins|Add4~32_combout\,
	cout => \binary_bcd_ins|Add4~33\);

-- Location: FF_X58_Y48_N1
\binary_bcd_ins|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~32_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(16));

-- Location: LCCOMB_X58_Y48_N2
\binary_bcd_ins|Add4~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~34_combout\ = (\binary_bcd_ins|counter\(17) & (!\binary_bcd_ins|Add4~33\)) # (!\binary_bcd_ins|counter\(17) & ((\binary_bcd_ins|Add4~33\) # (GND)))
-- \binary_bcd_ins|Add4~35\ = CARRY((!\binary_bcd_ins|Add4~33\) # (!\binary_bcd_ins|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(17),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~33\,
	combout => \binary_bcd_ins|Add4~34_combout\,
	cout => \binary_bcd_ins|Add4~35\);

-- Location: FF_X58_Y48_N3
\binary_bcd_ins|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~34_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(17));

-- Location: LCCOMB_X58_Y48_N4
\binary_bcd_ins|Add4~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~36_combout\ = (\binary_bcd_ins|counter\(18) & (\binary_bcd_ins|Add4~35\ $ (GND))) # (!\binary_bcd_ins|counter\(18) & (!\binary_bcd_ins|Add4~35\ & VCC))
-- \binary_bcd_ins|Add4~37\ = CARRY((\binary_bcd_ins|counter\(18) & !\binary_bcd_ins|Add4~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(18),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~35\,
	combout => \binary_bcd_ins|Add4~36_combout\,
	cout => \binary_bcd_ins|Add4~37\);

-- Location: FF_X58_Y48_N5
\binary_bcd_ins|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~36_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(18));

-- Location: LCCOMB_X58_Y48_N6
\binary_bcd_ins|Add4~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~38_combout\ = (\binary_bcd_ins|counter\(19) & (!\binary_bcd_ins|Add4~37\)) # (!\binary_bcd_ins|counter\(19) & ((\binary_bcd_ins|Add4~37\) # (GND)))
-- \binary_bcd_ins|Add4~39\ = CARRY((!\binary_bcd_ins|Add4~37\) # (!\binary_bcd_ins|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(19),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~37\,
	combout => \binary_bcd_ins|Add4~38_combout\,
	cout => \binary_bcd_ins|Add4~39\);

-- Location: FF_X58_Y48_N7
\binary_bcd_ins|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~38_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(19));

-- Location: LCCOMB_X57_Y48_N4
\binary_bcd_ins|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~3_combout\ = (!\binary_bcd_ins|counter\(18) & (!\binary_bcd_ins|counter\(17) & (!\binary_bcd_ins|counter\(16) & !\binary_bcd_ins|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(18),
	datab => \binary_bcd_ins|counter\(17),
	datac => \binary_bcd_ins|counter\(16),
	datad => \binary_bcd_ins|counter\(19),
	combout => \binary_bcd_ins|Equal0~3_combout\);

-- Location: LCCOMB_X58_Y48_N8
\binary_bcd_ins|Add4~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~40_combout\ = (\binary_bcd_ins|counter\(20) & (\binary_bcd_ins|Add4~39\ $ (GND))) # (!\binary_bcd_ins|counter\(20) & (!\binary_bcd_ins|Add4~39\ & VCC))
-- \binary_bcd_ins|Add4~41\ = CARRY((\binary_bcd_ins|counter\(20) & !\binary_bcd_ins|Add4~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(20),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~39\,
	combout => \binary_bcd_ins|Add4~40_combout\,
	cout => \binary_bcd_ins|Add4~41\);

-- Location: FF_X58_Y48_N9
\binary_bcd_ins|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~40_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(20));

-- Location: LCCOMB_X58_Y48_N10
\binary_bcd_ins|Add4~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~42_combout\ = (\binary_bcd_ins|counter\(21) & (!\binary_bcd_ins|Add4~41\)) # (!\binary_bcd_ins|counter\(21) & ((\binary_bcd_ins|Add4~41\) # (GND)))
-- \binary_bcd_ins|Add4~43\ = CARRY((!\binary_bcd_ins|Add4~41\) # (!\binary_bcd_ins|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(21),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~41\,
	combout => \binary_bcd_ins|Add4~42_combout\,
	cout => \binary_bcd_ins|Add4~43\);

-- Location: FF_X58_Y48_N11
\binary_bcd_ins|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~42_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(21));

-- Location: LCCOMB_X58_Y48_N12
\binary_bcd_ins|Add4~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~44_combout\ = (\binary_bcd_ins|counter\(22) & (\binary_bcd_ins|Add4~43\ $ (GND))) # (!\binary_bcd_ins|counter\(22) & (!\binary_bcd_ins|Add4~43\ & VCC))
-- \binary_bcd_ins|Add4~45\ = CARRY((\binary_bcd_ins|counter\(22) & !\binary_bcd_ins|Add4~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(22),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~43\,
	combout => \binary_bcd_ins|Add4~44_combout\,
	cout => \binary_bcd_ins|Add4~45\);

-- Location: FF_X58_Y48_N13
\binary_bcd_ins|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~44_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(22));

-- Location: LCCOMB_X58_Y48_N14
\binary_bcd_ins|Add4~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~46_combout\ = (\binary_bcd_ins|counter\(23) & (!\binary_bcd_ins|Add4~45\)) # (!\binary_bcd_ins|counter\(23) & ((\binary_bcd_ins|Add4~45\) # (GND)))
-- \binary_bcd_ins|Add4~47\ = CARRY((!\binary_bcd_ins|Add4~45\) # (!\binary_bcd_ins|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(23),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~45\,
	combout => \binary_bcd_ins|Add4~46_combout\,
	cout => \binary_bcd_ins|Add4~47\);

-- Location: FF_X58_Y48_N15
\binary_bcd_ins|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~46_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(23));

-- Location: LCCOMB_X58_Y48_N16
\binary_bcd_ins|Add4~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~48_combout\ = (\binary_bcd_ins|counter\(24) & (\binary_bcd_ins|Add4~47\ $ (GND))) # (!\binary_bcd_ins|counter\(24) & (!\binary_bcd_ins|Add4~47\ & VCC))
-- \binary_bcd_ins|Add4~49\ = CARRY((\binary_bcd_ins|counter\(24) & !\binary_bcd_ins|Add4~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(24),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~47\,
	combout => \binary_bcd_ins|Add4~48_combout\,
	cout => \binary_bcd_ins|Add4~49\);

-- Location: FF_X58_Y48_N17
\binary_bcd_ins|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~48_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(24));

-- Location: LCCOMB_X58_Y48_N18
\binary_bcd_ins|Add4~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~50_combout\ = (\binary_bcd_ins|counter\(25) & (!\binary_bcd_ins|Add4~49\)) # (!\binary_bcd_ins|counter\(25) & ((\binary_bcd_ins|Add4~49\) # (GND)))
-- \binary_bcd_ins|Add4~51\ = CARRY((!\binary_bcd_ins|Add4~49\) # (!\binary_bcd_ins|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(25),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~49\,
	combout => \binary_bcd_ins|Add4~50_combout\,
	cout => \binary_bcd_ins|Add4~51\);

-- Location: FF_X58_Y48_N19
\binary_bcd_ins|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~50_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(25));

-- Location: LCCOMB_X58_Y48_N20
\binary_bcd_ins|Add4~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~52_combout\ = (\binary_bcd_ins|counter\(26) & (\binary_bcd_ins|Add4~51\ $ (GND))) # (!\binary_bcd_ins|counter\(26) & (!\binary_bcd_ins|Add4~51\ & VCC))
-- \binary_bcd_ins|Add4~53\ = CARRY((\binary_bcd_ins|counter\(26) & !\binary_bcd_ins|Add4~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(26),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~51\,
	combout => \binary_bcd_ins|Add4~52_combout\,
	cout => \binary_bcd_ins|Add4~53\);

-- Location: FF_X58_Y48_N21
\binary_bcd_ins|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~52_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(26));

-- Location: LCCOMB_X58_Y48_N22
\binary_bcd_ins|Add4~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~54_combout\ = (\binary_bcd_ins|counter\(27) & (!\binary_bcd_ins|Add4~53\)) # (!\binary_bcd_ins|counter\(27) & ((\binary_bcd_ins|Add4~53\) # (GND)))
-- \binary_bcd_ins|Add4~55\ = CARRY((!\binary_bcd_ins|Add4~53\) # (!\binary_bcd_ins|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(27),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~53\,
	combout => \binary_bcd_ins|Add4~54_combout\,
	cout => \binary_bcd_ins|Add4~55\);

-- Location: FF_X58_Y48_N23
\binary_bcd_ins|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~54_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(27));

-- Location: LCCOMB_X58_Y48_N24
\binary_bcd_ins|Add4~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~56_combout\ = (\binary_bcd_ins|counter\(28) & (\binary_bcd_ins|Add4~55\ $ (GND))) # (!\binary_bcd_ins|counter\(28) & (!\binary_bcd_ins|Add4~55\ & VCC))
-- \binary_bcd_ins|Add4~57\ = CARRY((\binary_bcd_ins|counter\(28) & !\binary_bcd_ins|Add4~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(28),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~55\,
	combout => \binary_bcd_ins|Add4~56_combout\,
	cout => \binary_bcd_ins|Add4~57\);

-- Location: FF_X58_Y48_N25
\binary_bcd_ins|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~56_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(28));

-- Location: LCCOMB_X58_Y48_N26
\binary_bcd_ins|Add4~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~58_combout\ = (\binary_bcd_ins|counter\(29) & (!\binary_bcd_ins|Add4~57\)) # (!\binary_bcd_ins|counter\(29) & ((\binary_bcd_ins|Add4~57\) # (GND)))
-- \binary_bcd_ins|Add4~59\ = CARRY((!\binary_bcd_ins|Add4~57\) # (!\binary_bcd_ins|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(29),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~57\,
	combout => \binary_bcd_ins|Add4~58_combout\,
	cout => \binary_bcd_ins|Add4~59\);

-- Location: FF_X58_Y48_N27
\binary_bcd_ins|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~58_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(29));

-- Location: LCCOMB_X58_Y48_N28
\binary_bcd_ins|Add4~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~60_combout\ = (\binary_bcd_ins|counter\(30) & (\binary_bcd_ins|Add4~59\ $ (GND))) # (!\binary_bcd_ins|counter\(30) & (!\binary_bcd_ins|Add4~59\ & VCC))
-- \binary_bcd_ins|Add4~61\ = CARRY((\binary_bcd_ins|counter\(30) & !\binary_bcd_ins|Add4~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|counter\(30),
	datad => VCC,
	cin => \binary_bcd_ins|Add4~59\,
	combout => \binary_bcd_ins|Add4~60_combout\,
	cout => \binary_bcd_ins|Add4~61\);

-- Location: FF_X58_Y48_N29
\binary_bcd_ins|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~60_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(30));

-- Location: LCCOMB_X58_Y48_N30
\binary_bcd_ins|Add4~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add4~62_combout\ = \binary_bcd_ins|counter\(31) $ (\binary_bcd_ins|Add4~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(31),
	cin => \binary_bcd_ins|Add4~61\,
	combout => \binary_bcd_ins|Add4~62_combout\);

-- Location: FF_X58_Y48_N31
\binary_bcd_ins|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Add4~62_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|CurentState.s6~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|counter\(31));

-- Location: LCCOMB_X57_Y48_N0
\binary_bcd_ins|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~0_combout\ = (!\binary_bcd_ins|counter\(29) & (!\binary_bcd_ins|counter\(28) & (!\binary_bcd_ins|counter\(31) & !\binary_bcd_ins|counter\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(29),
	datab => \binary_bcd_ins|counter\(28),
	datac => \binary_bcd_ins|counter\(31),
	datad => \binary_bcd_ins|counter\(30),
	combout => \binary_bcd_ins|Equal0~0_combout\);

-- Location: LCCOMB_X57_Y49_N26
\binary_bcd_ins|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~2_combout\ = (!\binary_bcd_ins|counter\(23) & (!\binary_bcd_ins|counter\(21) & (!\binary_bcd_ins|counter\(22) & !\binary_bcd_ins|counter\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(23),
	datab => \binary_bcd_ins|counter\(21),
	datac => \binary_bcd_ins|counter\(22),
	datad => \binary_bcd_ins|counter\(20),
	combout => \binary_bcd_ins|Equal0~2_combout\);

-- Location: LCCOMB_X57_Y48_N2
\binary_bcd_ins|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~1_combout\ = (!\binary_bcd_ins|counter\(24) & (!\binary_bcd_ins|counter\(25) & (!\binary_bcd_ins|counter\(26) & !\binary_bcd_ins|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|counter\(24),
	datab => \binary_bcd_ins|counter\(25),
	datac => \binary_bcd_ins|counter\(26),
	datad => \binary_bcd_ins|counter\(27),
	combout => \binary_bcd_ins|Equal0~1_combout\);

-- Location: LCCOMB_X57_Y49_N12
\binary_bcd_ins|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Equal0~4_combout\ = (\binary_bcd_ins|Equal0~3_combout\ & (\binary_bcd_ins|Equal0~0_combout\ & (\binary_bcd_ins|Equal0~2_combout\ & \binary_bcd_ins|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~3_combout\,
	datab => \binary_bcd_ins|Equal0~0_combout\,
	datac => \binary_bcd_ins|Equal0~2_combout\,
	datad => \binary_bcd_ins|Equal0~1_combout\,
	combout => \binary_bcd_ins|Equal0~4_combout\);

-- Location: LCCOMB_X57_Y49_N20
\binary_bcd_ins|bcd[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd[3]~0_combout\ = (\binary_bcd_ins|Equal0~4_combout\ & (\binary_bcd_ins|CurentState.s6~q\ & \binary_bcd_ins|Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~4_combout\,
	datac => \binary_bcd_ins|CurentState.s6~q\,
	datad => \binary_bcd_ins|Equal0~9_combout\,
	combout => \binary_bcd_ins|bcd[3]~0_combout\);

-- Location: LCCOMB_X57_Y48_N14
\binary_bcd_ins|CurentState.S0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|CurentState.S0~0_combout\ = !\binary_bcd_ins|bcd[3]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \binary_bcd_ins|bcd[3]~0_combout\,
	combout => \binary_bcd_ins|CurentState.S0~0_combout\);

-- Location: FF_X57_Y48_N15
\binary_bcd_ins|CurentState.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|CurentState.S0~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|CurentState.S0~q\);

-- Location: LCCOMB_X57_Y49_N0
\binary_bcd_ins|Selector29~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector29~0_combout\ = ((\binary_bcd_ins|CurentState.s6~q\ & ((!\binary_bcd_ins|Equal0~9_combout\) # (!\binary_bcd_ins|Equal0~4_combout\)))) # (!\binary_bcd_ins|CurentState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~4_combout\,
	datab => \binary_bcd_ins|CurentState.s6~q\,
	datac => \binary_bcd_ins|CurentState.S0~q\,
	datad => \binary_bcd_ins|Equal0~9_combout\,
	combout => \binary_bcd_ins|Selector29~0_combout\);

-- Location: FF_X57_Y49_N1
\binary_bcd_ins|CurentState.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector29~0_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|CurentState.S1~q\);

-- Location: FF_X64_Y50_N5
\binary_bcd_ins|CurentState.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|CurentState.S1~q\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|CurentState.S2~q\);

-- Location: FF_X64_Y50_N31
\binary_bcd_ins|CurentState.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|CurentState.S2~q\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|CurentState.S3~q\);

-- Location: FF_X64_Y50_N3
\binary_bcd_ins|CurentState.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|CurentState.S3~q\,
	sload => VCC,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|CurentState.S4~q\);

-- Location: LCCOMB_X64_Y50_N28
\binary_bcd_ins|CurentState.S5~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|CurentState.S5~feeder_combout\ = \binary_bcd_ins|CurentState.S4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_bcd_ins|CurentState.S4~q\,
	combout => \binary_bcd_ins|CurentState.S5~feeder_combout\);

-- Location: FF_X64_Y50_N29
\binary_bcd_ins|CurentState.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|CurentState.S5~feeder_combout\,
	ena => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|CurentState.S5~q\);

-- Location: LCCOMB_X64_Y50_N8
\binary_bcd_ins|Selector28~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector28~1_combout\ = (\binary_bcd_ins|CurentState.S0~q\ & (!\binary_bcd_ins|CurentState.s6~q\ & !\binary_bcd_ins|CurentState.S5~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S0~q\,
	datac => \binary_bcd_ins|CurentState.s6~q\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector28~1_combout\);

-- Location: LCCOMB_X57_Y49_N8
\binary_bcd_ins|Selector28~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector28~0_combout\ = (\binary_bcd_ins|CurentState.s6~q\ & ((!\binary_bcd_ins|Equal0~9_combout\) # (!\binary_bcd_ins|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~4_combout\,
	datac => \binary_bcd_ins|CurentState.s6~q\,
	datad => \binary_bcd_ins|Equal0~9_combout\,
	combout => \binary_bcd_ins|Selector28~0_combout\);

-- Location: LCCOMB_X57_Y50_N20
\binary_bcd_ins|Selector28~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector28~2_combout\ = (\SW[0]~input_o\ & !\binary_bcd_ins|CurentState.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \binary_bcd_ins|CurentState.S0~q\,
	combout => \binary_bcd_ins|Selector28~2_combout\);

-- Location: LCCOMB_X57_Y50_N10
\binary_bcd_ins|Selector28~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector28~3_combout\ = (\binary_bcd_ins|Selector28~2_combout\) # ((\binary_bcd_ins|bcd_signal\(0) & ((\binary_bcd_ins|Selector28~1_combout\) # (\binary_bcd_ins|Selector28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Selector28~1_combout\,
	datab => \binary_bcd_ins|Selector28~0_combout\,
	datac => \binary_bcd_ins|bcd_signal\(0),
	datad => \binary_bcd_ins|Selector28~2_combout\,
	combout => \binary_bcd_ins|Selector28~3_combout\);

-- Location: FF_X57_Y50_N11
\binary_bcd_ins|bcd_signal[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector28~3_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(0));

-- Location: LCCOMB_X57_Y50_N4
\binary_bcd_ins|Selector27~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector27~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & ((\binary_bcd_ins|bcd_signal\(0)))) # (!\binary_bcd_ins|CurentState.S5~q\ & (\SW[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \binary_bcd_ins|CurentState.S5~q\,
	datad => \binary_bcd_ins|bcd_signal\(0),
	combout => \binary_bcd_ins|Selector27~0_combout\);

-- Location: LCCOMB_X57_Y50_N26
\binary_bcd_ins|bcd_signal[12]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[12]~37_combout\ = (!\binary_bcd_ins|Selector28~1_combout\ & (((\binary_bcd_ins|Equal0~4_combout\ & \binary_bcd_ins|Equal0~9_combout\)) # (!\binary_bcd_ins|CurentState.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~4_combout\,
	datab => \binary_bcd_ins|CurentState.s6~q\,
	datac => \binary_bcd_ins|Selector28~1_combout\,
	datad => \binary_bcd_ins|Equal0~9_combout\,
	combout => \binary_bcd_ins|bcd_signal[12]~37_combout\);

-- Location: FF_X57_Y50_N5
\binary_bcd_ins|bcd_signal[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector27~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(1));

-- Location: LCCOMB_X57_Y50_N2
\binary_bcd_ins|Selector26~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector26~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & ((\binary_bcd_ins|bcd_signal\(1)))) # (!\binary_bcd_ins|CurentState.S5~q\ & (\SW[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datac => \binary_bcd_ins|bcd_signal\(1),
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector26~0_combout\);

-- Location: FF_X57_Y50_N3
\binary_bcd_ins|bcd_signal[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector26~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(2));

-- Location: LCCOMB_X57_Y50_N16
\binary_bcd_ins|Selector25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector25~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|bcd_signal\(2))) # (!\binary_bcd_ins|CurentState.S5~q\ & ((\SW[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(2),
	datac => \SW[3]~input_o\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector25~0_combout\);

-- Location: FF_X57_Y50_N17
\binary_bcd_ins|bcd_signal[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector25~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(3));

-- Location: LCCOMB_X57_Y50_N6
\binary_bcd_ins|Selector24~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector24~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|bcd_signal\(3))) # (!\binary_bcd_ins|CurentState.S5~q\ & ((\SW[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(3),
	datac => \SW[4]~input_o\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector24~0_combout\);

-- Location: FF_X57_Y50_N7
\binary_bcd_ins|bcd_signal[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector24~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(4));

-- Location: LCCOMB_X57_Y50_N28
\binary_bcd_ins|Selector23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector23~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|bcd_signal\(4))) # (!\binary_bcd_ins|CurentState.S5~q\ & ((\SW[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(4),
	datac => \SW[5]~input_o\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector23~0_combout\);

-- Location: FF_X57_Y50_N29
\binary_bcd_ins|bcd_signal[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector23~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(5));

-- Location: LCCOMB_X57_Y50_N18
\binary_bcd_ins|Selector22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector22~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|bcd_signal\(5))) # (!\binary_bcd_ins|CurentState.S5~q\ & ((\SW[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(5),
	datac => \SW[6]~input_o\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector22~0_combout\);

-- Location: FF_X57_Y50_N19
\binary_bcd_ins|bcd_signal[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector22~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(6));

-- Location: LCCOMB_X57_Y50_N0
\binary_bcd_ins|Selector21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector21~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|bcd_signal\(6))) # (!\binary_bcd_ins|CurentState.S5~q\ & ((\SW[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(6),
	datac => \SW[7]~input_o\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector21~0_combout\);

-- Location: FF_X57_Y50_N1
\binary_bcd_ins|bcd_signal[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector21~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(7));

-- Location: LCCOMB_X57_Y50_N8
\binary_bcd_ins|Selector20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector20~0_combout\ = (\binary_bcd_ins|bcd_signal\(7) & \binary_bcd_ins|CurentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(7),
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector20~0_combout\);

-- Location: FF_X57_Y50_N9
\binary_bcd_ins|bcd_signal[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector20~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(8));

-- Location: LCCOMB_X57_Y50_N30
\binary_bcd_ins|Selector19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector19~0_combout\ = (\binary_bcd_ins|bcd_signal\(8) & \binary_bcd_ins|CurentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_bcd_ins|bcd_signal\(8),
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector19~0_combout\);

-- Location: FF_X57_Y50_N31
\binary_bcd_ins|bcd_signal[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector19~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(9));

-- Location: LCCOMB_X57_Y50_N12
\binary_bcd_ins|Selector18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector18~0_combout\ = (\binary_bcd_ins|bcd_signal\(9) & \binary_bcd_ins|CurentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_bcd_ins|bcd_signal\(9),
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector18~0_combout\);

-- Location: FF_X57_Y50_N13
\binary_bcd_ins|bcd_signal[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector18~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(10));

-- Location: LCCOMB_X57_Y50_N24
\binary_bcd_ins|Selector17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector17~0_combout\ = (\binary_bcd_ins|bcd_signal\(10) & \binary_bcd_ins|CurentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(10),
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector17~0_combout\);

-- Location: FF_X57_Y50_N25
\binary_bcd_ins|bcd_signal[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector17~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(11));

-- Location: LCCOMB_X57_Y50_N22
\binary_bcd_ins|Selector16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector16~0_combout\ = (\binary_bcd_ins|bcd_signal\(11) & \binary_bcd_ins|CurentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(11),
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|Selector16~0_combout\);

-- Location: FF_X57_Y50_N23
\binary_bcd_ins|bcd_signal[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector16~0_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|bcd_signal[12]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(12));

-- Location: LCCOMB_X65_Y50_N0
\binary_bcd_ins|Add3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~0_combout\ = \binary_bcd_ins|bcd_signal\(13) $ (VCC)
-- \binary_bcd_ins|Add3~1\ = CARRY(\binary_bcd_ins|bcd_signal\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(13),
	datad => VCC,
	combout => \binary_bcd_ins|Add3~0_combout\,
	cout => \binary_bcd_ins|Add3~1\);

-- Location: LCCOMB_X66_Y50_N0
\binary_bcd_ins|Selector15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector15~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|bcd_signal\(12))) # (!\binary_bcd_ins|CurentState.S5~q\ & ((\binary_bcd_ins|Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S5~q\,
	datab => \binary_bcd_ins|bcd_signal\(12),
	datac => \binary_bcd_ins|Add3~0_combout\,
	combout => \binary_bcd_ins|Selector15~0_combout\);

-- Location: LCCOMB_X66_Y50_N26
\binary_bcd_ins|LessThan3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|LessThan3~0_combout\ = (\binary_bcd_ins|bcd_signal\(13)) # (\binary_bcd_ins|bcd_signal\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(13),
	datad => \binary_bcd_ins|bcd_signal\(14),
	combout => \binary_bcd_ins|LessThan3~0_combout\);

-- Location: LCCOMB_X64_Y50_N2
\binary_bcd_ins|bcd_signal[13]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[13]~6_combout\ = (\binary_bcd_ins|CurentState.S4~q\ & (!\binary_bcd_ins|bcd_signal\(16) & ((!\binary_bcd_ins|LessThan3~0_combout\) # (!\binary_bcd_ins|bcd_signal\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(15),
	datab => \binary_bcd_ins|LessThan3~0_combout\,
	datac => \binary_bcd_ins|CurentState.S4~q\,
	datad => \binary_bcd_ins|bcd_signal\(16),
	combout => \binary_bcd_ins|bcd_signal[13]~6_combout\);

-- Location: LCCOMB_X57_Y49_N6
\binary_bcd_ins|bcd_signal[13]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[13]~7_combout\ = (!\binary_bcd_ins|bcd_signal[13]~6_combout\ & (((\binary_bcd_ins|Equal0~4_combout\ & \binary_bcd_ins|Equal0~9_combout\)) # (!\binary_bcd_ins|CurentState.s6~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Equal0~4_combout\,
	datab => \binary_bcd_ins|CurentState.s6~q\,
	datac => \binary_bcd_ins|bcd_signal[13]~6_combout\,
	datad => \binary_bcd_ins|Equal0~9_combout\,
	combout => \binary_bcd_ins|bcd_signal[13]~7_combout\);

-- Location: LCCOMB_X64_Y50_N6
\binary_bcd_ins|bcd_signal[13]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[13]~38_combout\ = (\binary_bcd_ins|bcd_signal[13]~7_combout\ & ((\binary_bcd_ins|CurentState.S5~q\) # ((\binary_bcd_ins|CurentState.S4~q\) # (\binary_bcd_ins|CurentState.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[13]~7_combout\,
	datab => \binary_bcd_ins|CurentState.S5~q\,
	datac => \binary_bcd_ins|CurentState.S4~q\,
	datad => \binary_bcd_ins|CurentState.s6~q\,
	combout => \binary_bcd_ins|bcd_signal[13]~38_combout\);

-- Location: FF_X65_Y50_N1
\binary_bcd_ins|bcd_signal[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|Selector15~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd_signal[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(13));

-- Location: LCCOMB_X65_Y50_N2
\binary_bcd_ins|Add3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~2_combout\ = (\binary_bcd_ins|bcd_signal\(14) & (\binary_bcd_ins|Add3~1\ & VCC)) # (!\binary_bcd_ins|bcd_signal\(14) & (!\binary_bcd_ins|Add3~1\))
-- \binary_bcd_ins|Add3~3\ = CARRY((!\binary_bcd_ins|bcd_signal\(14) & !\binary_bcd_ins|Add3~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(14),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~1\,
	combout => \binary_bcd_ins|Add3~2_combout\,
	cout => \binary_bcd_ins|Add3~3\);

-- Location: LCCOMB_X66_Y50_N20
\binary_bcd_ins|Selector14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector14~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & ((\binary_bcd_ins|bcd_signal\(13)))) # (!\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|Add3~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S5~q\,
	datac => \binary_bcd_ins|Add3~2_combout\,
	datad => \binary_bcd_ins|bcd_signal\(13),
	combout => \binary_bcd_ins|Selector14~0_combout\);

-- Location: FF_X65_Y50_N3
\binary_bcd_ins|bcd_signal[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|Selector14~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd_signal[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(14));

-- Location: LCCOMB_X65_Y50_N4
\binary_bcd_ins|Add3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~4_combout\ = (\binary_bcd_ins|bcd_signal\(15) & (\binary_bcd_ins|Add3~3\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(15) & (!\binary_bcd_ins|Add3~3\ & VCC))
-- \binary_bcd_ins|Add3~5\ = CARRY((\binary_bcd_ins|bcd_signal\(15) & !\binary_bcd_ins|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(15),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~3\,
	combout => \binary_bcd_ins|Add3~4_combout\,
	cout => \binary_bcd_ins|Add3~5\);

-- Location: LCCOMB_X66_Y50_N30
\binary_bcd_ins|Selector13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector13~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & ((\binary_bcd_ins|bcd_signal\(14)))) # (!\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S5~q\,
	datac => \binary_bcd_ins|Add3~4_combout\,
	datad => \binary_bcd_ins|bcd_signal\(14),
	combout => \binary_bcd_ins|Selector13~0_combout\);

-- Location: FF_X65_Y50_N5
\binary_bcd_ins|bcd_signal[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|Selector13~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd_signal[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(15));

-- Location: LCCOMB_X65_Y50_N6
\binary_bcd_ins|Add3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~6_combout\ = (\binary_bcd_ins|bcd_signal\(16) & (!\binary_bcd_ins|Add3~5\)) # (!\binary_bcd_ins|bcd_signal\(16) & ((\binary_bcd_ins|Add3~5\) # (GND)))
-- \binary_bcd_ins|Add3~7\ = CARRY((!\binary_bcd_ins|Add3~5\) # (!\binary_bcd_ins|bcd_signal\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(16),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~5\,
	combout => \binary_bcd_ins|Add3~6_combout\,
	cout => \binary_bcd_ins|Add3~7\);

-- Location: LCCOMB_X66_Y50_N24
\binary_bcd_ins|Selector12~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector12~0_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & (\binary_bcd_ins|bcd_signal\(15))) # (!\binary_bcd_ins|CurentState.S5~q\ & ((\binary_bcd_ins|Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S5~q\,
	datab => \binary_bcd_ins|bcd_signal\(15),
	datad => \binary_bcd_ins|Add3~6_combout\,
	combout => \binary_bcd_ins|Selector12~0_combout\);

-- Location: FF_X65_Y50_N7
\binary_bcd_ins|bcd_signal[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|Selector12~0_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd_signal[13]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(16));

-- Location: FF_X66_Y51_N7
\binary_bcd_ins|bcd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(16),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(3));

-- Location: LCCOMB_X66_Y51_N16
\binary_bcd_ins|bcd[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd[0]~feeder_combout\ = \binary_bcd_ins|bcd_signal\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_bcd_ins|bcd_signal\(13),
	combout => \binary_bcd_ins|bcd[0]~feeder_combout\);

-- Location: FF_X66_Y51_N17
\binary_bcd_ins|bcd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|bcd[0]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(0));

-- Location: FF_X66_Y51_N5
\binary_bcd_ins|bcd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(15),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(2));

-- Location: LCCOMB_X66_Y51_N2
\binary_bcd_ins|bcd[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd[1]~feeder_combout\ = \binary_bcd_ins|bcd_signal\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \binary_bcd_ins|bcd_signal\(14),
	combout => \binary_bcd_ins|bcd[1]~feeder_combout\);

-- Location: FF_X66_Y51_N3
\binary_bcd_ins|bcd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|bcd[1]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(1));

-- Location: LCCOMB_X66_Y51_N8
\SevenSegment_ins|decoder0|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder0|Mux6~0_combout\ = (\binary_bcd_ins|bcd\(2) & (!\binary_bcd_ins|bcd\(1) & ((\binary_bcd_ins|bcd\(3)) # (!\binary_bcd_ins|bcd\(0))))) # (!\binary_bcd_ins|bcd\(2) & (\binary_bcd_ins|bcd\(0) & (\binary_bcd_ins|bcd\(3) $ 
-- (!\binary_bcd_ins|bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(3),
	datab => \binary_bcd_ins|bcd\(0),
	datac => \binary_bcd_ins|bcd\(2),
	datad => \binary_bcd_ins|bcd\(1),
	combout => \SevenSegment_ins|decoder0|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y51_N26
\SevenSegment_ins|decoder0|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder0|Mux5~0_combout\ = (\binary_bcd_ins|bcd\(3) & ((\binary_bcd_ins|bcd\(0) & ((\binary_bcd_ins|bcd\(1)))) # (!\binary_bcd_ins|bcd\(0) & (\binary_bcd_ins|bcd\(2))))) # (!\binary_bcd_ins|bcd\(3) & (\binary_bcd_ins|bcd\(2) & 
-- (\binary_bcd_ins|bcd\(0) $ (\binary_bcd_ins|bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(3),
	datab => \binary_bcd_ins|bcd\(0),
	datac => \binary_bcd_ins|bcd\(2),
	datad => \binary_bcd_ins|bcd\(1),
	combout => \SevenSegment_ins|decoder0|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y51_N28
\SevenSegment_ins|decoder0|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder0|Mux4~0_combout\ = (\binary_bcd_ins|bcd\(3) & (\binary_bcd_ins|bcd\(2) & ((\binary_bcd_ins|bcd\(1)) # (!\binary_bcd_ins|bcd\(0))))) # (!\binary_bcd_ins|bcd\(3) & (!\binary_bcd_ins|bcd\(0) & (!\binary_bcd_ins|bcd\(2) & 
-- \binary_bcd_ins|bcd\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(3),
	datab => \binary_bcd_ins|bcd\(0),
	datac => \binary_bcd_ins|bcd\(2),
	datad => \binary_bcd_ins|bcd\(1),
	combout => \SevenSegment_ins|decoder0|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y51_N30
\SevenSegment_ins|decoder0|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder0|Mux3~0_combout\ = (\binary_bcd_ins|bcd\(0) & ((\binary_bcd_ins|bcd\(2) $ (!\binary_bcd_ins|bcd\(1))))) # (!\binary_bcd_ins|bcd\(0) & ((\binary_bcd_ins|bcd\(3) & (!\binary_bcd_ins|bcd\(2) & \binary_bcd_ins|bcd\(1))) # 
-- (!\binary_bcd_ins|bcd\(3) & (\binary_bcd_ins|bcd\(2) & !\binary_bcd_ins|bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(3),
	datab => \binary_bcd_ins|bcd\(0),
	datac => \binary_bcd_ins|bcd\(2),
	datad => \binary_bcd_ins|bcd\(1),
	combout => \SevenSegment_ins|decoder0|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y51_N24
\SevenSegment_ins|decoder0|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder0|Mux2~0_combout\ = (\binary_bcd_ins|bcd\(1) & (!\binary_bcd_ins|bcd\(3) & (\binary_bcd_ins|bcd\(0)))) # (!\binary_bcd_ins|bcd\(1) & ((\binary_bcd_ins|bcd\(2) & (!\binary_bcd_ins|bcd\(3))) # (!\binary_bcd_ins|bcd\(2) & 
-- ((\binary_bcd_ins|bcd\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(3),
	datab => \binary_bcd_ins|bcd\(0),
	datac => \binary_bcd_ins|bcd\(2),
	datad => \binary_bcd_ins|bcd\(1),
	combout => \SevenSegment_ins|decoder0|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y51_N4
\SevenSegment_ins|decoder0|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder0|Mux1~0_combout\ = (\binary_bcd_ins|bcd\(3) & (((\binary_bcd_ins|bcd\(2) & !\binary_bcd_ins|bcd\(1))))) # (!\binary_bcd_ins|bcd\(3) & ((\binary_bcd_ins|bcd\(0) & ((\binary_bcd_ins|bcd\(1)) # (!\binary_bcd_ins|bcd\(2)))) # 
-- (!\binary_bcd_ins|bcd\(0) & (!\binary_bcd_ins|bcd\(2) & \binary_bcd_ins|bcd\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(3),
	datab => \binary_bcd_ins|bcd\(0),
	datac => \binary_bcd_ins|bcd\(2),
	datad => \binary_bcd_ins|bcd\(1),
	combout => \SevenSegment_ins|decoder0|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y51_N6
\SevenSegment_ins|decoder0|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder0|Mux0~0_combout\ = (\binary_bcd_ins|bcd\(0) & ((\binary_bcd_ins|bcd\(3)) # (\binary_bcd_ins|bcd\(1) $ (\binary_bcd_ins|bcd\(2))))) # (!\binary_bcd_ins|bcd\(0) & ((\binary_bcd_ins|bcd\(2)) # (\binary_bcd_ins|bcd\(1) $ 
-- (\binary_bcd_ins|bcd\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(1),
	datab => \binary_bcd_ins|bcd\(2),
	datac => \binary_bcd_ins|bcd\(3),
	datad => \binary_bcd_ins|bcd\(0),
	combout => \SevenSegment_ins|decoder0|Mux0~0_combout\);

-- Location: LCCOMB_X65_Y50_N8
\binary_bcd_ins|Add3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~8_combout\ = (\binary_bcd_ins|bcd_signal\(17) & (\binary_bcd_ins|Add3~7\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(17) & (!\binary_bcd_ins|Add3~7\ & VCC))
-- \binary_bcd_ins|Add3~9\ = CARRY((\binary_bcd_ins|bcd_signal\(17) & !\binary_bcd_ins|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(17),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~7\,
	combout => \binary_bcd_ins|Add3~8_combout\,
	cout => \binary_bcd_ins|Add3~9\);

-- Location: LCCOMB_X65_Y51_N4
\binary_bcd_ins|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~0_combout\ = \binary_bcd_ins|bcd_signal\(17) $ (VCC)
-- \binary_bcd_ins|Add2~1\ = CARRY(\binary_bcd_ins|bcd_signal\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(17),
	datad => VCC,
	combout => \binary_bcd_ins|Add2~0_combout\,
	cout => \binary_bcd_ins|Add2~1\);

-- Location: LCCOMB_X64_Y51_N8
\binary_bcd_ins|Selector11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector11~0_combout\ = (\binary_bcd_ins|CurentState.S4~q\ & (\binary_bcd_ins|Add3~8_combout\)) # (!\binary_bcd_ins|CurentState.S4~q\ & ((\binary_bcd_ins|Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S4~q\,
	datab => \binary_bcd_ins|Add3~8_combout\,
	datad => \binary_bcd_ins|Add2~0_combout\,
	combout => \binary_bcd_ins|Selector11~0_combout\);

-- Location: LCCOMB_X65_Y51_N6
\binary_bcd_ins|Add2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~2_combout\ = (\binary_bcd_ins|bcd_signal\(18) & (\binary_bcd_ins|Add2~1\ & VCC)) # (!\binary_bcd_ins|bcd_signal\(18) & (!\binary_bcd_ins|Add2~1\))
-- \binary_bcd_ins|Add2~3\ = CARRY((!\binary_bcd_ins|bcd_signal\(18) & !\binary_bcd_ins|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(18),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~1\,
	combout => \binary_bcd_ins|Add2~2_combout\,
	cout => \binary_bcd_ins|Add2~3\);

-- Location: LCCOMB_X65_Y50_N10
\binary_bcd_ins|Add3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~10_combout\ = (\binary_bcd_ins|bcd_signal\(18) & (!\binary_bcd_ins|Add3~9\)) # (!\binary_bcd_ins|bcd_signal\(18) & ((\binary_bcd_ins|Add3~9\) # (GND)))
-- \binary_bcd_ins|Add3~11\ = CARRY((!\binary_bcd_ins|Add3~9\) # (!\binary_bcd_ins|bcd_signal\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(18),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~9\,
	combout => \binary_bcd_ins|Add3~10_combout\,
	cout => \binary_bcd_ins|Add3~11\);

-- Location: LCCOMB_X64_Y51_N26
\binary_bcd_ins|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector10~0_combout\ = (\binary_bcd_ins|CurentState.S4~q\ & ((\binary_bcd_ins|Add3~10_combout\))) # (!\binary_bcd_ins|CurentState.S4~q\ & (\binary_bcd_ins|Add2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Add2~2_combout\,
	datab => \binary_bcd_ins|Add3~10_combout\,
	datad => \binary_bcd_ins|CurentState.S4~q\,
	combout => \binary_bcd_ins|Selector10~0_combout\);

-- Location: FF_X64_Y51_N27
\binary_bcd_ins|bcd_signal[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector10~0_combout\,
	asdata => \binary_bcd_ins|bcd_signal\(17),
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => \binary_bcd_ins|CurentState.S5~q\,
	ena => \binary_bcd_ins|bcd_signal[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(18));

-- Location: LCCOMB_X65_Y50_N12
\binary_bcd_ins|Add3~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~12_combout\ = (\binary_bcd_ins|bcd_signal\(19) & (\binary_bcd_ins|Add3~11\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(19) & (!\binary_bcd_ins|Add3~11\ & VCC))
-- \binary_bcd_ins|Add3~13\ = CARRY((\binary_bcd_ins|bcd_signal\(19) & !\binary_bcd_ins|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(19),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~11\,
	combout => \binary_bcd_ins|Add3~12_combout\,
	cout => \binary_bcd_ins|Add3~13\);

-- Location: LCCOMB_X65_Y51_N8
\binary_bcd_ins|Add2~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~4_combout\ = (\binary_bcd_ins|bcd_signal\(19) & (\binary_bcd_ins|Add2~3\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(19) & (!\binary_bcd_ins|Add2~3\ & VCC))
-- \binary_bcd_ins|Add2~5\ = CARRY((\binary_bcd_ins|bcd_signal\(19) & !\binary_bcd_ins|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(19),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~3\,
	combout => \binary_bcd_ins|Add2~4_combout\,
	cout => \binary_bcd_ins|Add2~5\);

-- Location: LCCOMB_X64_Y51_N4
\binary_bcd_ins|Selector9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector9~0_combout\ = (\binary_bcd_ins|CurentState.S4~q\ & (\binary_bcd_ins|Add3~12_combout\)) # (!\binary_bcd_ins|CurentState.S4~q\ & ((\binary_bcd_ins|Add2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Add3~12_combout\,
	datab => \binary_bcd_ins|Add2~4_combout\,
	datad => \binary_bcd_ins|CurentState.S4~q\,
	combout => \binary_bcd_ins|Selector9~0_combout\);

-- Location: FF_X64_Y51_N5
\binary_bcd_ins|bcd_signal[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector9~0_combout\,
	asdata => \binary_bcd_ins|bcd_signal\(18),
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => \binary_bcd_ins|CurentState.S5~q\,
	ena => \binary_bcd_ins|bcd_signal[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(19));

-- Location: LCCOMB_X65_Y51_N10
\binary_bcd_ins|Add2~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~6_combout\ = (\binary_bcd_ins|bcd_signal\(20) & (!\binary_bcd_ins|Add2~5\)) # (!\binary_bcd_ins|bcd_signal\(20) & ((\binary_bcd_ins|Add2~5\) # (GND)))
-- \binary_bcd_ins|Add2~7\ = CARRY((!\binary_bcd_ins|Add2~5\) # (!\binary_bcd_ins|bcd_signal\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(20),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~5\,
	combout => \binary_bcd_ins|Add2~6_combout\,
	cout => \binary_bcd_ins|Add2~7\);

-- Location: LCCOMB_X65_Y50_N14
\binary_bcd_ins|Add3~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~14_combout\ = (\binary_bcd_ins|bcd_signal\(20) & (!\binary_bcd_ins|Add3~13\)) # (!\binary_bcd_ins|bcd_signal\(20) & ((\binary_bcd_ins|Add3~13\) # (GND)))
-- \binary_bcd_ins|Add3~15\ = CARRY((!\binary_bcd_ins|Add3~13\) # (!\binary_bcd_ins|bcd_signal\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(20),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~13\,
	combout => \binary_bcd_ins|Add3~14_combout\,
	cout => \binary_bcd_ins|Add3~15\);

-- Location: LCCOMB_X64_Y51_N30
\binary_bcd_ins|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector8~0_combout\ = (\binary_bcd_ins|CurentState.S4~q\ & ((\binary_bcd_ins|Add3~14_combout\))) # (!\binary_bcd_ins|CurentState.S4~q\ & (\binary_bcd_ins|Add2~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S4~q\,
	datab => \binary_bcd_ins|Add2~6_combout\,
	datad => \binary_bcd_ins|Add3~14_combout\,
	combout => \binary_bcd_ins|Selector8~0_combout\);

-- Location: FF_X64_Y51_N31
\binary_bcd_ins|bcd_signal[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector8~0_combout\,
	asdata => \binary_bcd_ins|bcd_signal\(19),
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => \binary_bcd_ins|CurentState.S5~q\,
	ena => \binary_bcd_ins|bcd_signal[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(20));

-- Location: LCCOMB_X64_Y50_N18
\binary_bcd_ins|bcd_signal[19]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[19]~8_combout\ = (!\binary_bcd_ins|bcd_signal\(20) & (((!\binary_bcd_ins|bcd_signal\(17) & !\binary_bcd_ins|bcd_signal\(18))) # (!\binary_bcd_ins|bcd_signal\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(19),
	datab => \binary_bcd_ins|bcd_signal\(20),
	datac => \binary_bcd_ins|bcd_signal\(17),
	datad => \binary_bcd_ins|bcd_signal\(18),
	combout => \binary_bcd_ins|bcd_signal[19]~8_combout\);

-- Location: LCCOMB_X64_Y50_N30
\binary_bcd_ins|bcd_signal[19]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[19]~9_combout\ = (\binary_bcd_ins|CurentState.S0~q\ & ((!\binary_bcd_ins|bcd_signal[19]~8_combout\) # (!\binary_bcd_ins|CurentState.S3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S0~q\,
	datac => \binary_bcd_ins|CurentState.S3~q\,
	datad => \binary_bcd_ins|bcd_signal[19]~8_combout\,
	combout => \binary_bcd_ins|bcd_signal[19]~9_combout\);

-- Location: LCCOMB_X64_Y50_N0
\binary_bcd_ins|bcd_signal[19]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[19]~10_combout\ = (\binary_bcd_ins|bcd_signal[13]~7_combout\ & (!\binary_bcd_ins|CurentState.S2~q\ & (\binary_bcd_ins|bcd_signal[19]~9_combout\ & !\binary_bcd_ins|CurentState.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[13]~7_combout\,
	datab => \binary_bcd_ins|CurentState.S2~q\,
	datac => \binary_bcd_ins|bcd_signal[19]~9_combout\,
	datad => \binary_bcd_ins|CurentState.S1~q\,
	combout => \binary_bcd_ins|bcd_signal[19]~10_combout\);

-- Location: FF_X64_Y51_N9
\binary_bcd_ins|bcd_signal[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|Selector11~0_combout\,
	asdata => \binary_bcd_ins|bcd_signal\(16),
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => \binary_bcd_ins|CurentState.S5~q\,
	ena => \binary_bcd_ins|bcd_signal[19]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(17));

-- Location: FF_X66_Y51_N19
\binary_bcd_ins|bcd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(17),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(4));

-- Location: FF_X66_Y51_N1
\binary_bcd_ins|bcd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(20),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(7));

-- Location: FF_X66_Y51_N15
\binary_bcd_ins|bcd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(19),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(6));

-- Location: FF_X66_Y51_N21
\binary_bcd_ins|bcd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(18),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(5));

-- Location: LCCOMB_X66_Y51_N10
\SevenSegment_ins|decoder1|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder1|Mux6~0_combout\ = (\binary_bcd_ins|bcd\(6) & (!\binary_bcd_ins|bcd\(5) & ((\binary_bcd_ins|bcd\(7)) # (!\binary_bcd_ins|bcd\(4))))) # (!\binary_bcd_ins|bcd\(6) & (\binary_bcd_ins|bcd\(4) & (\binary_bcd_ins|bcd\(7) $ 
-- (!\binary_bcd_ins|bcd\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(4),
	datab => \binary_bcd_ins|bcd\(7),
	datac => \binary_bcd_ins|bcd\(6),
	datad => \binary_bcd_ins|bcd\(5),
	combout => \SevenSegment_ins|decoder1|Mux6~0_combout\);

-- Location: LCCOMB_X66_Y51_N12
\SevenSegment_ins|decoder1|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder1|Mux5~0_combout\ = (\binary_bcd_ins|bcd\(7) & ((\binary_bcd_ins|bcd\(4) & ((\binary_bcd_ins|bcd\(5)))) # (!\binary_bcd_ins|bcd\(4) & (\binary_bcd_ins|bcd\(6))))) # (!\binary_bcd_ins|bcd\(7) & (\binary_bcd_ins|bcd\(6) & 
-- (\binary_bcd_ins|bcd\(4) $ (\binary_bcd_ins|bcd\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(4),
	datab => \binary_bcd_ins|bcd\(7),
	datac => \binary_bcd_ins|bcd\(6),
	datad => \binary_bcd_ins|bcd\(5),
	combout => \SevenSegment_ins|decoder1|Mux5~0_combout\);

-- Location: LCCOMB_X66_Y51_N22
\SevenSegment_ins|decoder1|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder1|Mux4~0_combout\ = (\binary_bcd_ins|bcd\(7) & (\binary_bcd_ins|bcd\(6) & ((\binary_bcd_ins|bcd\(5)) # (!\binary_bcd_ins|bcd\(4))))) # (!\binary_bcd_ins|bcd\(7) & (!\binary_bcd_ins|bcd\(4) & (!\binary_bcd_ins|bcd\(6) & 
-- \binary_bcd_ins|bcd\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(4),
	datab => \binary_bcd_ins|bcd\(7),
	datac => \binary_bcd_ins|bcd\(6),
	datad => \binary_bcd_ins|bcd\(5),
	combout => \SevenSegment_ins|decoder1|Mux4~0_combout\);

-- Location: LCCOMB_X66_Y51_N18
\SevenSegment_ins|decoder1|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder1|Mux3~0_combout\ = (\binary_bcd_ins|bcd\(4) & (\binary_bcd_ins|bcd\(6) $ (((!\binary_bcd_ins|bcd\(5)))))) # (!\binary_bcd_ins|bcd\(4) & ((\binary_bcd_ins|bcd\(6) & (!\binary_bcd_ins|bcd\(7) & !\binary_bcd_ins|bcd\(5))) # 
-- (!\binary_bcd_ins|bcd\(6) & (\binary_bcd_ins|bcd\(7) & \binary_bcd_ins|bcd\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(6),
	datab => \binary_bcd_ins|bcd\(7),
	datac => \binary_bcd_ins|bcd\(4),
	datad => \binary_bcd_ins|bcd\(5),
	combout => \SevenSegment_ins|decoder1|Mux3~0_combout\);

-- Location: LCCOMB_X66_Y51_N20
\SevenSegment_ins|decoder1|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder1|Mux2~0_combout\ = (\binary_bcd_ins|bcd\(5) & (\binary_bcd_ins|bcd\(4) & ((!\binary_bcd_ins|bcd\(7))))) # (!\binary_bcd_ins|bcd\(5) & ((\binary_bcd_ins|bcd\(6) & ((!\binary_bcd_ins|bcd\(7)))) # (!\binary_bcd_ins|bcd\(6) & 
-- (\binary_bcd_ins|bcd\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(4),
	datab => \binary_bcd_ins|bcd\(6),
	datac => \binary_bcd_ins|bcd\(5),
	datad => \binary_bcd_ins|bcd\(7),
	combout => \SevenSegment_ins|decoder1|Mux2~0_combout\);

-- Location: LCCOMB_X66_Y51_N14
\SevenSegment_ins|decoder1|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder1|Mux1~0_combout\ = (\binary_bcd_ins|bcd\(7) & (((\binary_bcd_ins|bcd\(6) & !\binary_bcd_ins|bcd\(5))))) # (!\binary_bcd_ins|bcd\(7) & ((\binary_bcd_ins|bcd\(4) & ((\binary_bcd_ins|bcd\(5)) # (!\binary_bcd_ins|bcd\(6)))) # 
-- (!\binary_bcd_ins|bcd\(4) & (!\binary_bcd_ins|bcd\(6) & \binary_bcd_ins|bcd\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(4),
	datab => \binary_bcd_ins|bcd\(7),
	datac => \binary_bcd_ins|bcd\(6),
	datad => \binary_bcd_ins|bcd\(5),
	combout => \SevenSegment_ins|decoder1|Mux1~0_combout\);

-- Location: LCCOMB_X66_Y51_N0
\SevenSegment_ins|decoder1|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder1|Mux0~0_combout\ = (\binary_bcd_ins|bcd\(4) & ((\binary_bcd_ins|bcd\(7)) # (\binary_bcd_ins|bcd\(6) $ (\binary_bcd_ins|bcd\(5))))) # (!\binary_bcd_ins|bcd\(4) & ((\binary_bcd_ins|bcd\(6)) # (\binary_bcd_ins|bcd\(7) $ 
-- (\binary_bcd_ins|bcd\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(4),
	datab => \binary_bcd_ins|bcd\(6),
	datac => \binary_bcd_ins|bcd\(7),
	datad => \binary_bcd_ins|bcd\(5),
	combout => \SevenSegment_ins|decoder1|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y50_N22
\binary_bcd_ins|bcd_signal[24]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[24]~11_combout\ = (\binary_bcd_ins|CurentState.S5~q\) # ((!\binary_bcd_ins|CurentState.S4~q\ & \binary_bcd_ins|CurentState.S3~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S4~q\,
	datac => \binary_bcd_ins|CurentState.S3~q\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|bcd_signal[24]~11_combout\);

-- Location: LCCOMB_X64_Y50_N20
\binary_bcd_ins|WideOr1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|WideOr1~0_combout\ = (!\binary_bcd_ins|CurentState.S4~q\ & !\binary_bcd_ins|CurentState.S5~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_bcd_ins|CurentState.S4~q\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|WideOr1~0_combout\);

-- Location: LCCOMB_X67_Y50_N14
\binary_bcd_ins|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add1~0_combout\ = \binary_bcd_ins|bcd_signal\(21) $ (VCC)
-- \binary_bcd_ins|Add1~1\ = CARRY(\binary_bcd_ins|bcd_signal\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(21),
	datad => VCC,
	combout => \binary_bcd_ins|Add1~0_combout\,
	cout => \binary_bcd_ins|Add1~1\);

-- Location: LCCOMB_X65_Y50_N16
\binary_bcd_ins|Add3~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~16_combout\ = (\binary_bcd_ins|bcd_signal\(21) & (\binary_bcd_ins|Add3~15\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(21) & (!\binary_bcd_ins|Add3~15\ & VCC))
-- \binary_bcd_ins|Add3~17\ = CARRY((\binary_bcd_ins|bcd_signal\(21) & !\binary_bcd_ins|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(21),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~15\,
	combout => \binary_bcd_ins|Add3~16_combout\,
	cout => \binary_bcd_ins|Add3~17\);

-- Location: LCCOMB_X66_Y50_N18
\binary_bcd_ins|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector7~0_combout\ = (\binary_bcd_ins|bcd_signal[24]~11_combout\ & (((!\binary_bcd_ins|WideOr1~0_combout\)))) # (!\binary_bcd_ins|bcd_signal[24]~11_combout\ & ((\binary_bcd_ins|WideOr1~0_combout\ & (\binary_bcd_ins|Add1~0_combout\)) # 
-- (!\binary_bcd_ins|WideOr1~0_combout\ & ((\binary_bcd_ins|Add3~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[24]~11_combout\,
	datab => \binary_bcd_ins|Add1~0_combout\,
	datac => \binary_bcd_ins|Add3~16_combout\,
	datad => \binary_bcd_ins|WideOr1~0_combout\,
	combout => \binary_bcd_ins|Selector7~0_combout\);

-- Location: LCCOMB_X65_Y51_N12
\binary_bcd_ins|Add2~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~8_combout\ = (\binary_bcd_ins|bcd_signal\(21) & (\binary_bcd_ins|Add2~7\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(21) & (!\binary_bcd_ins|Add2~7\ & VCC))
-- \binary_bcd_ins|Add2~9\ = CARRY((\binary_bcd_ins|bcd_signal\(21) & !\binary_bcd_ins|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(21),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~7\,
	combout => \binary_bcd_ins|Add2~8_combout\,
	cout => \binary_bcd_ins|Add2~9\);

-- Location: LCCOMB_X66_Y50_N28
\binary_bcd_ins|Selector7~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector7~1_combout\ = (\binary_bcd_ins|bcd_signal[24]~11_combout\ & ((\binary_bcd_ins|Selector7~0_combout\ & ((\binary_bcd_ins|bcd_signal\(20)))) # (!\binary_bcd_ins|Selector7~0_combout\ & (\binary_bcd_ins|Add2~8_combout\)))) # 
-- (!\binary_bcd_ins|bcd_signal[24]~11_combout\ & (\binary_bcd_ins|Selector7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[24]~11_combout\,
	datab => \binary_bcd_ins|Selector7~0_combout\,
	datac => \binary_bcd_ins|Add2~8_combout\,
	datad => \binary_bcd_ins|bcd_signal\(20),
	combout => \binary_bcd_ins|Selector7~1_combout\);

-- Location: LCCOMB_X64_Y50_N12
\binary_bcd_ins|bcd_signal[19]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[19]~13_combout\ = (!\binary_bcd_ins|Selector28~0_combout\ & (!\binary_bcd_ins|bcd_signal[13]~6_combout\ & \binary_bcd_ins|bcd_signal[19]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Selector28~0_combout\,
	datab => \binary_bcd_ins|bcd_signal[13]~6_combout\,
	datac => \binary_bcd_ins|bcd_signal[19]~9_combout\,
	combout => \binary_bcd_ins|bcd_signal[19]~13_combout\);

-- Location: LCCOMB_X64_Y50_N10
\binary_bcd_ins|bcd_signal[24]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[24]~12_combout\ = (!\binary_bcd_ins|bcd_signal\(24) & (((!\binary_bcd_ins|bcd_signal\(21) & !\binary_bcd_ins|bcd_signal\(22))) # (!\binary_bcd_ins|bcd_signal\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(24),
	datab => \binary_bcd_ins|bcd_signal\(21),
	datac => \binary_bcd_ins|bcd_signal\(22),
	datad => \binary_bcd_ins|bcd_signal\(23),
	combout => \binary_bcd_ins|bcd_signal[24]~12_combout\);

-- Location: LCCOMB_X64_Y50_N14
\binary_bcd_ins|bcd_signal[24]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[24]~14_combout\ = (!\binary_bcd_ins|CurentState.S1~q\ & (\binary_bcd_ins|bcd_signal[19]~13_combout\ & ((!\binary_bcd_ins|bcd_signal[24]~12_combout\) # (!\binary_bcd_ins|CurentState.S2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S1~q\,
	datab => \binary_bcd_ins|bcd_signal[19]~13_combout\,
	datac => \binary_bcd_ins|CurentState.S2~q\,
	datad => \binary_bcd_ins|bcd_signal[24]~12_combout\,
	combout => \binary_bcd_ins|bcd_signal[24]~14_combout\);

-- Location: FF_X65_Y50_N9
\binary_bcd_ins|bcd_signal[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|Selector7~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd_signal[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(21));

-- Location: LCCOMB_X65_Y51_N14
\binary_bcd_ins|Add2~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~10_combout\ = (\binary_bcd_ins|bcd_signal\(22) & (!\binary_bcd_ins|Add2~9\)) # (!\binary_bcd_ins|bcd_signal\(22) & ((\binary_bcd_ins|Add2~9\) # (GND)))
-- \binary_bcd_ins|Add2~11\ = CARRY((!\binary_bcd_ins|Add2~9\) # (!\binary_bcd_ins|bcd_signal\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(22),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~9\,
	combout => \binary_bcd_ins|Add2~10_combout\,
	cout => \binary_bcd_ins|Add2~11\);

-- Location: LCCOMB_X67_Y50_N16
\binary_bcd_ins|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add1~2_combout\ = (\binary_bcd_ins|bcd_signal\(22) & (\binary_bcd_ins|Add1~1\ & VCC)) # (!\binary_bcd_ins|bcd_signal\(22) & (!\binary_bcd_ins|Add1~1\))
-- \binary_bcd_ins|Add1~3\ = CARRY((!\binary_bcd_ins|bcd_signal\(22) & !\binary_bcd_ins|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(22),
	datad => VCC,
	cin => \binary_bcd_ins|Add1~1\,
	combout => \binary_bcd_ins|Add1~2_combout\,
	cout => \binary_bcd_ins|Add1~3\);

-- Location: LCCOMB_X66_Y50_N6
\binary_bcd_ins|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector6~0_combout\ = (\binary_bcd_ins|bcd_signal[24]~11_combout\ & (((\binary_bcd_ins|Add2~10_combout\)) # (!\binary_bcd_ins|WideOr1~0_combout\))) # (!\binary_bcd_ins|bcd_signal[24]~11_combout\ & (\binary_bcd_ins|WideOr1~0_combout\ & 
-- ((\binary_bcd_ins|Add1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[24]~11_combout\,
	datab => \binary_bcd_ins|WideOr1~0_combout\,
	datac => \binary_bcd_ins|Add2~10_combout\,
	datad => \binary_bcd_ins|Add1~2_combout\,
	combout => \binary_bcd_ins|Selector6~0_combout\);

-- Location: LCCOMB_X65_Y50_N18
\binary_bcd_ins|Add3~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~18_combout\ = (\binary_bcd_ins|bcd_signal\(22) & (!\binary_bcd_ins|Add3~17\)) # (!\binary_bcd_ins|bcd_signal\(22) & ((\binary_bcd_ins|Add3~17\) # (GND)))
-- \binary_bcd_ins|Add3~19\ = CARRY((!\binary_bcd_ins|Add3~17\) # (!\binary_bcd_ins|bcd_signal\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(22),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~17\,
	combout => \binary_bcd_ins|Add3~18_combout\,
	cout => \binary_bcd_ins|Add3~19\);

-- Location: LCCOMB_X66_Y50_N8
\binary_bcd_ins|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector6~1_combout\ = (\binary_bcd_ins|Selector6~0_combout\ & ((\binary_bcd_ins|WideOr1~0_combout\) # ((\binary_bcd_ins|bcd_signal\(21))))) # (!\binary_bcd_ins|Selector6~0_combout\ & (!\binary_bcd_ins|WideOr1~0_combout\ & 
-- (\binary_bcd_ins|Add3~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Selector6~0_combout\,
	datab => \binary_bcd_ins|WideOr1~0_combout\,
	datac => \binary_bcd_ins|Add3~18_combout\,
	datad => \binary_bcd_ins|bcd_signal\(21),
	combout => \binary_bcd_ins|Selector6~1_combout\);

-- Location: FF_X65_Y50_N11
\binary_bcd_ins|bcd_signal[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|Selector6~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd_signal[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(22));

-- Location: LCCOMB_X65_Y51_N16
\binary_bcd_ins|Add2~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~12_combout\ = (\binary_bcd_ins|bcd_signal\(23) & (\binary_bcd_ins|Add2~11\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(23) & (!\binary_bcd_ins|Add2~11\ & VCC))
-- \binary_bcd_ins|Add2~13\ = CARRY((\binary_bcd_ins|bcd_signal\(23) & !\binary_bcd_ins|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(23),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~11\,
	combout => \binary_bcd_ins|Add2~12_combout\,
	cout => \binary_bcd_ins|Add2~13\);

-- Location: LCCOMB_X67_Y50_N18
\binary_bcd_ins|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add1~4_combout\ = (\binary_bcd_ins|bcd_signal\(23) & (\binary_bcd_ins|Add1~3\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(23) & (!\binary_bcd_ins|Add1~3\ & VCC))
-- \binary_bcd_ins|Add1~5\ = CARRY((\binary_bcd_ins|bcd_signal\(23) & !\binary_bcd_ins|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(23),
	datad => VCC,
	cin => \binary_bcd_ins|Add1~3\,
	combout => \binary_bcd_ins|Add1~4_combout\,
	cout => \binary_bcd_ins|Add1~5\);

-- Location: LCCOMB_X65_Y50_N20
\binary_bcd_ins|Add3~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~20_combout\ = (\binary_bcd_ins|bcd_signal\(23) & (\binary_bcd_ins|Add3~19\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(23) & (!\binary_bcd_ins|Add3~19\ & VCC))
-- \binary_bcd_ins|Add3~21\ = CARRY((\binary_bcd_ins|bcd_signal\(23) & !\binary_bcd_ins|Add3~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(23),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~19\,
	combout => \binary_bcd_ins|Add3~20_combout\,
	cout => \binary_bcd_ins|Add3~21\);

-- Location: LCCOMB_X66_Y50_N10
\binary_bcd_ins|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector5~0_combout\ = (\binary_bcd_ins|bcd_signal[24]~11_combout\ & (((!\binary_bcd_ins|WideOr1~0_combout\)))) # (!\binary_bcd_ins|bcd_signal[24]~11_combout\ & ((\binary_bcd_ins|WideOr1~0_combout\ & (\binary_bcd_ins|Add1~4_combout\)) # 
-- (!\binary_bcd_ins|WideOr1~0_combout\ & ((\binary_bcd_ins|Add3~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Add1~4_combout\,
	datab => \binary_bcd_ins|Add3~20_combout\,
	datac => \binary_bcd_ins|bcd_signal[24]~11_combout\,
	datad => \binary_bcd_ins|WideOr1~0_combout\,
	combout => \binary_bcd_ins|Selector5~0_combout\);

-- Location: LCCOMB_X66_Y50_N12
\binary_bcd_ins|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector5~1_combout\ = (\binary_bcd_ins|bcd_signal[24]~11_combout\ & ((\binary_bcd_ins|Selector5~0_combout\ & (\binary_bcd_ins|bcd_signal\(22))) # (!\binary_bcd_ins|Selector5~0_combout\ & ((\binary_bcd_ins|Add2~12_combout\))))) # 
-- (!\binary_bcd_ins|bcd_signal[24]~11_combout\ & (((\binary_bcd_ins|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[24]~11_combout\,
	datab => \binary_bcd_ins|bcd_signal\(22),
	datac => \binary_bcd_ins|Add2~12_combout\,
	datad => \binary_bcd_ins|Selector5~0_combout\,
	combout => \binary_bcd_ins|Selector5~1_combout\);

-- Location: FF_X65_Y50_N13
\binary_bcd_ins|bcd_signal[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|Selector5~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd_signal[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(23));

-- Location: LCCOMB_X67_Y50_N20
\binary_bcd_ins|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add1~6_combout\ = (\binary_bcd_ins|bcd_signal\(24) & (!\binary_bcd_ins|Add1~5\)) # (!\binary_bcd_ins|bcd_signal\(24) & ((\binary_bcd_ins|Add1~5\) # (GND)))
-- \binary_bcd_ins|Add1~7\ = CARRY((!\binary_bcd_ins|Add1~5\) # (!\binary_bcd_ins|bcd_signal\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(24),
	datad => VCC,
	cin => \binary_bcd_ins|Add1~5\,
	combout => \binary_bcd_ins|Add1~6_combout\,
	cout => \binary_bcd_ins|Add1~7\);

-- Location: LCCOMB_X65_Y51_N18
\binary_bcd_ins|Add2~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~14_combout\ = (\binary_bcd_ins|bcd_signal\(24) & (!\binary_bcd_ins|Add2~13\)) # (!\binary_bcd_ins|bcd_signal\(24) & ((\binary_bcd_ins|Add2~13\) # (GND)))
-- \binary_bcd_ins|Add2~15\ = CARRY((!\binary_bcd_ins|Add2~13\) # (!\binary_bcd_ins|bcd_signal\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(24),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~13\,
	combout => \binary_bcd_ins|Add2~14_combout\,
	cout => \binary_bcd_ins|Add2~15\);

-- Location: LCCOMB_X64_Y50_N16
\binary_bcd_ins|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector4~0_combout\ = (\binary_bcd_ins|WideOr1~0_combout\ & ((\binary_bcd_ins|bcd_signal[24]~11_combout\ & ((\binary_bcd_ins|Add2~14_combout\))) # (!\binary_bcd_ins|bcd_signal[24]~11_combout\ & (\binary_bcd_ins|Add1~6_combout\)))) # 
-- (!\binary_bcd_ins|WideOr1~0_combout\ & (((\binary_bcd_ins|bcd_signal[24]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Add1~6_combout\,
	datab => \binary_bcd_ins|WideOr1~0_combout\,
	datac => \binary_bcd_ins|Add2~14_combout\,
	datad => \binary_bcd_ins|bcd_signal[24]~11_combout\,
	combout => \binary_bcd_ins|Selector4~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\binary_bcd_ins|Add3~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~22_combout\ = (\binary_bcd_ins|bcd_signal\(24) & (!\binary_bcd_ins|Add3~21\)) # (!\binary_bcd_ins|bcd_signal\(24) & ((\binary_bcd_ins|Add3~21\) # (GND)))
-- \binary_bcd_ins|Add3~23\ = CARRY((!\binary_bcd_ins|Add3~21\) # (!\binary_bcd_ins|bcd_signal\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(24),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~21\,
	combout => \binary_bcd_ins|Add3~22_combout\,
	cout => \binary_bcd_ins|Add3~23\);

-- Location: LCCOMB_X66_Y50_N14
\binary_bcd_ins|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Selector4~1_combout\ = (\binary_bcd_ins|WideOr1~0_combout\ & (((\binary_bcd_ins|Selector4~0_combout\)))) # (!\binary_bcd_ins|WideOr1~0_combout\ & ((\binary_bcd_ins|Selector4~0_combout\ & (\binary_bcd_ins|bcd_signal\(23))) # 
-- (!\binary_bcd_ins|Selector4~0_combout\ & ((\binary_bcd_ins|Add3~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(23),
	datab => \binary_bcd_ins|WideOr1~0_combout\,
	datac => \binary_bcd_ins|Selector4~0_combout\,
	datad => \binary_bcd_ins|Add3~22_combout\,
	combout => \binary_bcd_ins|Selector4~1_combout\);

-- Location: FF_X65_Y50_N15
\binary_bcd_ins|bcd_signal[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|Selector4~1_combout\,
	clrn => \reset_n~input_o\,
	sclr => \binary_bcd_ins|CurentState.s6~q\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd_signal[24]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(24));

-- Location: FF_X71_Y46_N13
\binary_bcd_ins|bcd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(24),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(11));

-- Location: FF_X67_Y50_N25
\binary_bcd_ins|bcd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(22),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(9));

-- Location: FF_X71_Y46_N19
\binary_bcd_ins|bcd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(23),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(10));

-- Location: LCCOMB_X71_Y46_N16
\binary_bcd_ins|bcd[8]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd[8]~feeder_combout\ = \binary_bcd_ins|bcd_signal\(21)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \binary_bcd_ins|bcd_signal\(21),
	combout => \binary_bcd_ins|bcd[8]~feeder_combout\);

-- Location: FF_X71_Y46_N17
\binary_bcd_ins|bcd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|bcd[8]~feeder_combout\,
	clrn => \reset_n~input_o\,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(8));

-- Location: LCCOMB_X71_Y46_N6
\SevenSegment_ins|decoder2|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder2|Mux6~0_combout\ = (\binary_bcd_ins|bcd\(9) & (\binary_bcd_ins|bcd\(11) & (!\binary_bcd_ins|bcd\(10) & \binary_bcd_ins|bcd\(8)))) # (!\binary_bcd_ins|bcd\(9) & (\binary_bcd_ins|bcd\(10) $ (((!\binary_bcd_ins|bcd\(11) & 
-- \binary_bcd_ins|bcd\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(11),
	datab => \binary_bcd_ins|bcd\(9),
	datac => \binary_bcd_ins|bcd\(10),
	datad => \binary_bcd_ins|bcd\(8),
	combout => \SevenSegment_ins|decoder2|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y46_N0
\SevenSegment_ins|decoder2|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder2|Mux5~0_combout\ = (\binary_bcd_ins|bcd\(11) & ((\binary_bcd_ins|bcd\(8) & (\binary_bcd_ins|bcd\(9))) # (!\binary_bcd_ins|bcd\(8) & ((\binary_bcd_ins|bcd\(10)))))) # (!\binary_bcd_ins|bcd\(11) & (\binary_bcd_ins|bcd\(10) & 
-- (\binary_bcd_ins|bcd\(9) $ (\binary_bcd_ins|bcd\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(11),
	datab => \binary_bcd_ins|bcd\(9),
	datac => \binary_bcd_ins|bcd\(10),
	datad => \binary_bcd_ins|bcd\(8),
	combout => \SevenSegment_ins|decoder2|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y46_N2
\SevenSegment_ins|decoder2|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder2|Mux4~0_combout\ = (\binary_bcd_ins|bcd\(11) & (\binary_bcd_ins|bcd\(10) & ((\binary_bcd_ins|bcd\(9)) # (!\binary_bcd_ins|bcd\(8))))) # (!\binary_bcd_ins|bcd\(11) & (\binary_bcd_ins|bcd\(9) & (!\binary_bcd_ins|bcd\(10) & 
-- !\binary_bcd_ins|bcd\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(11),
	datab => \binary_bcd_ins|bcd\(9),
	datac => \binary_bcd_ins|bcd\(10),
	datad => \binary_bcd_ins|bcd\(8),
	combout => \SevenSegment_ins|decoder2|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y46_N20
\SevenSegment_ins|decoder2|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder2|Mux3~0_combout\ = (\binary_bcd_ins|bcd\(8) & ((\binary_bcd_ins|bcd\(9) $ (!\binary_bcd_ins|bcd\(10))))) # (!\binary_bcd_ins|bcd\(8) & ((\binary_bcd_ins|bcd\(11) & (\binary_bcd_ins|bcd\(9) & !\binary_bcd_ins|bcd\(10))) # 
-- (!\binary_bcd_ins|bcd\(11) & (!\binary_bcd_ins|bcd\(9) & \binary_bcd_ins|bcd\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(11),
	datab => \binary_bcd_ins|bcd\(9),
	datac => \binary_bcd_ins|bcd\(10),
	datad => \binary_bcd_ins|bcd\(8),
	combout => \SevenSegment_ins|decoder2|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y46_N14
\SevenSegment_ins|decoder2|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder2|Mux2~0_combout\ = (\binary_bcd_ins|bcd\(9) & (!\binary_bcd_ins|bcd\(11) & ((\binary_bcd_ins|bcd\(8))))) # (!\binary_bcd_ins|bcd\(9) & ((\binary_bcd_ins|bcd\(10) & (!\binary_bcd_ins|bcd\(11))) # (!\binary_bcd_ins|bcd\(10) & 
-- ((\binary_bcd_ins|bcd\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(11),
	datab => \binary_bcd_ins|bcd\(9),
	datac => \binary_bcd_ins|bcd\(10),
	datad => \binary_bcd_ins|bcd\(8),
	combout => \SevenSegment_ins|decoder2|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y46_N18
\SevenSegment_ins|decoder2|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder2|Mux1~0_combout\ = (\binary_bcd_ins|bcd\(11) & (!\binary_bcd_ins|bcd\(9) & (\binary_bcd_ins|bcd\(10)))) # (!\binary_bcd_ins|bcd\(11) & ((\binary_bcd_ins|bcd\(9) & ((\binary_bcd_ins|bcd\(8)) # (!\binary_bcd_ins|bcd\(10)))) # 
-- (!\binary_bcd_ins|bcd\(9) & (!\binary_bcd_ins|bcd\(10) & \binary_bcd_ins|bcd\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(11),
	datab => \binary_bcd_ins|bcd\(9),
	datac => \binary_bcd_ins|bcd\(10),
	datad => \binary_bcd_ins|bcd\(8),
	combout => \SevenSegment_ins|decoder2|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y46_N12
\SevenSegment_ins|decoder2|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder2|Mux0~0_combout\ = (\binary_bcd_ins|bcd\(8) & ((\binary_bcd_ins|bcd\(11)) # (\binary_bcd_ins|bcd\(10) $ (\binary_bcd_ins|bcd\(9))))) # (!\binary_bcd_ins|bcd\(8) & ((\binary_bcd_ins|bcd\(10)) # (\binary_bcd_ins|bcd\(9) $ 
-- (\binary_bcd_ins|bcd\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(10),
	datab => \binary_bcd_ins|bcd\(9),
	datac => \binary_bcd_ins|bcd\(11),
	datad => \binary_bcd_ins|bcd\(8),
	combout => \SevenSegment_ins|decoder2|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y49_N4
\binary_bcd_ins|bcd_signal[28]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[28]~34_combout\ = (\binary_bcd_ins|bcd_signal[28]~17_combout\) # ((\binary_bcd_ins|CurentState.S1~q\ & (!\binary_bcd_ins|bcd_signal\(25) & !\binary_bcd_ins|bcd_signal\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S1~q\,
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|bcd_signal\(25),
	datad => \binary_bcd_ins|bcd_signal\(26),
	combout => \binary_bcd_ins|bcd_signal[28]~34_combout\);

-- Location: LCCOMB_X64_Y49_N6
\binary_bcd_ins|bcd_signal[28]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[28]~35_combout\ = (\binary_bcd_ins|bcd_signal[28]~34_combout\ & (((\binary_bcd_ins|bcd_signal\(28))))) # (!\binary_bcd_ins|bcd_signal[28]~34_combout\ & (\binary_bcd_ins|CurentState.S1~q\ & (\binary_bcd_ins|bcd_signal\(28) $ 
-- (\binary_bcd_ins|bcd_signal\(27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S1~q\,
	datab => \binary_bcd_ins|bcd_signal\(28),
	datac => \binary_bcd_ins|bcd_signal[28]~34_combout\,
	datad => \binary_bcd_ins|bcd_signal\(27),
	combout => \binary_bcd_ins|bcd_signal[28]~35_combout\);

-- Location: LCCOMB_X65_Y51_N20
\binary_bcd_ins|Add2~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~16_combout\ = (\binary_bcd_ins|bcd_signal\(25) & (\binary_bcd_ins|Add2~15\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(25) & (!\binary_bcd_ins|Add2~15\ & VCC))
-- \binary_bcd_ins|Add2~17\ = CARRY((\binary_bcd_ins|bcd_signal\(25) & !\binary_bcd_ins|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(25),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~15\,
	combout => \binary_bcd_ins|Add2~16_combout\,
	cout => \binary_bcd_ins|Add2~17\);

-- Location: LCCOMB_X65_Y51_N22
\binary_bcd_ins|Add2~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~18_combout\ = (\binary_bcd_ins|bcd_signal\(26) & (!\binary_bcd_ins|Add2~17\)) # (!\binary_bcd_ins|bcd_signal\(26) & ((\binary_bcd_ins|Add2~17\) # (GND)))
-- \binary_bcd_ins|Add2~19\ = CARRY((!\binary_bcd_ins|Add2~17\) # (!\binary_bcd_ins|bcd_signal\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(26),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~17\,
	combout => \binary_bcd_ins|Add2~18_combout\,
	cout => \binary_bcd_ins|Add2~19\);

-- Location: LCCOMB_X65_Y51_N24
\binary_bcd_ins|Add2~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~20_combout\ = (\binary_bcd_ins|bcd_signal\(27) & (\binary_bcd_ins|Add2~19\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(27) & (!\binary_bcd_ins|Add2~19\ & VCC))
-- \binary_bcd_ins|Add2~21\ = CARRY((\binary_bcd_ins|bcd_signal\(27) & !\binary_bcd_ins|Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(27),
	datad => VCC,
	cin => \binary_bcd_ins|Add2~19\,
	combout => \binary_bcd_ins|Add2~20_combout\,
	cout => \binary_bcd_ins|Add2~21\);

-- Location: LCCOMB_X65_Y51_N26
\binary_bcd_ins|Add2~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add2~22_combout\ = \binary_bcd_ins|Add2~21\ $ (\binary_bcd_ins|bcd_signal\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \binary_bcd_ins|bcd_signal\(28),
	cin => \binary_bcd_ins|Add2~21\,
	combout => \binary_bcd_ins|Add2~22_combout\);

-- Location: LCCOMB_X64_Y49_N12
\binary_bcd_ins|bcd_signal[28]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[28]~40_combout\ = (\binary_bcd_ins|bcd_signal[28]~35_combout\) # ((!\binary_bcd_ins|bcd_signal[28]~17_combout\ & (\binary_bcd_ins|CurentState.S3~q\ & \binary_bcd_ins|Add2~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[28]~35_combout\,
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|CurentState.S3~q\,
	datad => \binary_bcd_ins|Add2~22_combout\,
	combout => \binary_bcd_ins|bcd_signal[28]~40_combout\);

-- Location: LCCOMB_X65_Y50_N28
\binary_bcd_ins|Add3~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~28_combout\ = (\binary_bcd_ins|bcd_signal\(27) & (\binary_bcd_ins|Add3~27\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(27) & (!\binary_bcd_ins|Add3~27\ & VCC))
-- \binary_bcd_ins|Add3~29\ = CARRY((\binary_bcd_ins|bcd_signal\(27) & !\binary_bcd_ins|Add3~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(27),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~27\,
	combout => \binary_bcd_ins|Add3~28_combout\,
	cout => \binary_bcd_ins|Add3~29\);

-- Location: LCCOMB_X65_Y50_N30
\binary_bcd_ins|Add3~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~30_combout\ = \binary_bcd_ins|bcd_signal\(28) $ (\binary_bcd_ins|Add3~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(28),
	cin => \binary_bcd_ins|Add3~29\,
	combout => \binary_bcd_ins|Add3~30_combout\);

-- Location: LCCOMB_X67_Y50_N10
\binary_bcd_ins|bcd_signal[27]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[27]~29_combout\ = (\binary_bcd_ins|CurentState.S2~q\ & !\binary_bcd_ins|bcd_signal[28]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \binary_bcd_ins|CurentState.S2~q\,
	datad => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	combout => \binary_bcd_ins|bcd_signal[27]~29_combout\);

-- Location: LCCOMB_X67_Y50_N0
\binary_bcd_ins|bcd_signal[27]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[27]~28_combout\ = (\binary_bcd_ins|CurentState.S5~q\ & !\binary_bcd_ins|bcd_signal[28]~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|CurentState.S5~q\,
	datad => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	combout => \binary_bcd_ins|bcd_signal[27]~28_combout\);

-- Location: LCCOMB_X67_Y50_N22
\binary_bcd_ins|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add1~8_combout\ = (\binary_bcd_ins|bcd_signal\(25) & (\binary_bcd_ins|Add1~7\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(25) & (!\binary_bcd_ins|Add1~7\ & VCC))
-- \binary_bcd_ins|Add1~9\ = CARRY((\binary_bcd_ins|bcd_signal\(25) & !\binary_bcd_ins|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal\(25),
	datad => VCC,
	cin => \binary_bcd_ins|Add1~7\,
	combout => \binary_bcd_ins|Add1~8_combout\,
	cout => \binary_bcd_ins|Add1~9\);

-- Location: LCCOMB_X67_Y50_N24
\binary_bcd_ins|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add1~10_combout\ = (\binary_bcd_ins|bcd_signal\(26) & (!\binary_bcd_ins|Add1~9\)) # (!\binary_bcd_ins|bcd_signal\(26) & ((\binary_bcd_ins|Add1~9\) # (GND)))
-- \binary_bcd_ins|Add1~11\ = CARRY((!\binary_bcd_ins|Add1~9\) # (!\binary_bcd_ins|bcd_signal\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(26),
	datad => VCC,
	cin => \binary_bcd_ins|Add1~9\,
	combout => \binary_bcd_ins|Add1~10_combout\,
	cout => \binary_bcd_ins|Add1~11\);

-- Location: LCCOMB_X67_Y50_N26
\binary_bcd_ins|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add1~12_combout\ = (\binary_bcd_ins|bcd_signal\(27) & (\binary_bcd_ins|Add1~11\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(27) & (!\binary_bcd_ins|Add1~11\ & VCC))
-- \binary_bcd_ins|Add1~13\ = CARRY((\binary_bcd_ins|bcd_signal\(27) & !\binary_bcd_ins|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(27),
	datad => VCC,
	cin => \binary_bcd_ins|Add1~11\,
	combout => \binary_bcd_ins|Add1~12_combout\,
	cout => \binary_bcd_ins|Add1~13\);

-- Location: LCCOMB_X67_Y50_N28
\binary_bcd_ins|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add1~14_combout\ = \binary_bcd_ins|Add1~13\ $ (\binary_bcd_ins|bcd_signal\(28))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \binary_bcd_ins|bcd_signal\(28),
	cin => \binary_bcd_ins|Add1~13\,
	combout => \binary_bcd_ins|Add1~14_combout\);

-- Location: LCCOMB_X67_Y50_N30
\binary_bcd_ins|bcd_signal[28]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[28]~33_combout\ = (\binary_bcd_ins|bcd_signal[27]~29_combout\ & ((\binary_bcd_ins|Add1~14_combout\) # ((\binary_bcd_ins|bcd_signal[27]~28_combout\ & \binary_bcd_ins|bcd_signal\(27))))) # 
-- (!\binary_bcd_ins|bcd_signal[27]~29_combout\ & (\binary_bcd_ins|bcd_signal[27]~28_combout\ & (\binary_bcd_ins|bcd_signal\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[27]~29_combout\,
	datab => \binary_bcd_ins|bcd_signal[27]~28_combout\,
	datac => \binary_bcd_ins|bcd_signal\(27),
	datad => \binary_bcd_ins|Add1~14_combout\,
	combout => \binary_bcd_ins|bcd_signal[28]~33_combout\);

-- Location: LCCOMB_X64_Y49_N18
\binary_bcd_ins|bcd_signal[27]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[27]~26_combout\ = (!\binary_bcd_ins|bcd_signal[28]~17_combout\ & \binary_bcd_ins|CurentState.S4~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|CurentState.S4~q\,
	combout => \binary_bcd_ins|bcd_signal[27]~26_combout\);

-- Location: LCCOMB_X64_Y49_N16
\binary_bcd_ins|bcd_signal[28]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[28]~36_combout\ = (\binary_bcd_ins|bcd_signal[28]~40_combout\) # ((\binary_bcd_ins|bcd_signal[28]~33_combout\) # ((\binary_bcd_ins|Add3~30_combout\ & \binary_bcd_ins|bcd_signal[27]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[28]~40_combout\,
	datab => \binary_bcd_ins|Add3~30_combout\,
	datac => \binary_bcd_ins|bcd_signal[28]~33_combout\,
	datad => \binary_bcd_ins|bcd_signal[27]~26_combout\,
	combout => \binary_bcd_ins|bcd_signal[28]~36_combout\);

-- Location: FF_X64_Y49_N17
\binary_bcd_ins|bcd_signal[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|bcd_signal[28]~36_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(28));

-- Location: LCCOMB_X64_Y49_N24
\binary_bcd_ins|bcd_signal[28]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[28]~15_combout\ = (!\binary_bcd_ins|bcd_signal\(28) & (((!\binary_bcd_ins|bcd_signal\(26) & !\binary_bcd_ins|bcd_signal\(25))) # (!\binary_bcd_ins|bcd_signal\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(28),
	datab => \binary_bcd_ins|bcd_signal\(26),
	datac => \binary_bcd_ins|bcd_signal\(25),
	datad => \binary_bcd_ins|bcd_signal\(27),
	combout => \binary_bcd_ins|bcd_signal[28]~15_combout\);

-- Location: LCCOMB_X64_Y50_N4
\binary_bcd_ins|bcd_signal[28]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[28]~16_combout\ = (\binary_bcd_ins|CurentState.S1~q\ & ((\binary_bcd_ins|bcd_signal[28]~15_combout\) # ((\binary_bcd_ins|CurentState.S2~q\ & \binary_bcd_ins|bcd_signal[24]~12_combout\)))) # (!\binary_bcd_ins|CurentState.S1~q\ & 
-- (((\binary_bcd_ins|CurentState.S2~q\ & \binary_bcd_ins|bcd_signal[24]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S1~q\,
	datab => \binary_bcd_ins|bcd_signal[28]~15_combout\,
	datac => \binary_bcd_ins|CurentState.S2~q\,
	datad => \binary_bcd_ins|bcd_signal[24]~12_combout\,
	combout => \binary_bcd_ins|bcd_signal[28]~16_combout\);

-- Location: LCCOMB_X64_Y49_N14
\binary_bcd_ins|bcd_signal[28]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[28]~17_combout\ = ((\binary_bcd_ins|Selector28~0_combout\) # ((\binary_bcd_ins|bcd_signal[13]~6_combout\) # (\binary_bcd_ins|bcd_signal[28]~16_combout\))) # (!\binary_bcd_ins|bcd_signal[19]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[19]~9_combout\,
	datab => \binary_bcd_ins|Selector28~0_combout\,
	datac => \binary_bcd_ins|bcd_signal[13]~6_combout\,
	datad => \binary_bcd_ins|bcd_signal[28]~16_combout\,
	combout => \binary_bcd_ins|bcd_signal[28]~17_combout\);

-- Location: LCCOMB_X64_Y50_N26
\binary_bcd_ins|bcd_signal[25]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[25]~18_combout\ = (\binary_bcd_ins|bcd_signal\(24) & ((\binary_bcd_ins|CurentState.S5~q\) # ((\binary_bcd_ins|CurentState.S2~q\ & \binary_bcd_ins|Add1~8_combout\)))) # (!\binary_bcd_ins|bcd_signal\(24) & 
-- (((\binary_bcd_ins|CurentState.S2~q\ & \binary_bcd_ins|Add1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(24),
	datab => \binary_bcd_ins|CurentState.S5~q\,
	datac => \binary_bcd_ins|CurentState.S2~q\,
	datad => \binary_bcd_ins|Add1~8_combout\,
	combout => \binary_bcd_ins|bcd_signal[25]~18_combout\);

-- Location: LCCOMB_X64_Y49_N10
\binary_bcd_ins|bcd_signal[25]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[25]~19_combout\ = (\binary_bcd_ins|bcd_signal[28]~17_combout\ & (((\binary_bcd_ins|bcd_signal\(25))))) # (!\binary_bcd_ins|bcd_signal[28]~17_combout\ & ((\binary_bcd_ins|bcd_signal[25]~18_combout\) # 
-- ((\binary_bcd_ins|CurentState.S1~q\ & !\binary_bcd_ins|bcd_signal\(25)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S1~q\,
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|bcd_signal\(25),
	datad => \binary_bcd_ins|bcd_signal[25]~18_combout\,
	combout => \binary_bcd_ins|bcd_signal[25]~19_combout\);

-- Location: LCCOMB_X64_Y49_N30
\binary_bcd_ins|bcd_signal[25]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[25]~20_combout\ = (\binary_bcd_ins|bcd_signal[25]~19_combout\) # ((!\binary_bcd_ins|bcd_signal[28]~17_combout\ & (\binary_bcd_ins|CurentState.S3~q\ & \binary_bcd_ins|Add2~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[25]~19_combout\,
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|CurentState.S3~q\,
	datad => \binary_bcd_ins|Add2~16_combout\,
	combout => \binary_bcd_ins|bcd_signal[25]~20_combout\);

-- Location: LCCOMB_X65_Y50_N24
\binary_bcd_ins|Add3~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~24_combout\ = (\binary_bcd_ins|bcd_signal\(25) & (\binary_bcd_ins|Add3~23\ $ (GND))) # (!\binary_bcd_ins|bcd_signal\(25) & (!\binary_bcd_ins|Add3~23\ & VCC))
-- \binary_bcd_ins|Add3~25\ = CARRY((\binary_bcd_ins|bcd_signal\(25) & !\binary_bcd_ins|Add3~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(25),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~23\,
	combout => \binary_bcd_ins|Add3~24_combout\,
	cout => \binary_bcd_ins|Add3~25\);

-- Location: LCCOMB_X64_Y49_N26
\binary_bcd_ins|bcd_signal[25]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[25]~21_combout\ = (\binary_bcd_ins|bcd_signal[25]~20_combout\) # ((!\binary_bcd_ins|bcd_signal[28]~17_combout\ & (\binary_bcd_ins|CurentState.S4~q\ & \binary_bcd_ins|Add3~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[25]~20_combout\,
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|CurentState.S4~q\,
	datad => \binary_bcd_ins|Add3~24_combout\,
	combout => \binary_bcd_ins|bcd_signal[25]~21_combout\);

-- Location: FF_X64_Y49_N27
\binary_bcd_ins|bcd_signal[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|bcd_signal[25]~21_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(25));

-- Location: LCCOMB_X66_Y49_N24
\binary_bcd_ins|bcd_signal[26]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[26]~23_combout\ = (\binary_bcd_ins|bcd_signal\(25) & ((\binary_bcd_ins|CurentState.S5~q\) # ((\binary_bcd_ins|bcd_signal\(26) & \binary_bcd_ins|CurentState.S1~q\)))) # (!\binary_bcd_ins|bcd_signal\(25) & 
-- (!\binary_bcd_ins|bcd_signal\(26) & (\binary_bcd_ins|CurentState.S1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(25),
	datab => \binary_bcd_ins|bcd_signal\(26),
	datac => \binary_bcd_ins|CurentState.S1~q\,
	datad => \binary_bcd_ins|CurentState.S5~q\,
	combout => \binary_bcd_ins|bcd_signal[26]~23_combout\);

-- Location: LCCOMB_X64_Y50_N24
\binary_bcd_ins|bcd_signal[26]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[26]~22_combout\ = (\binary_bcd_ins|Add2~18_combout\ & ((\binary_bcd_ins|CurentState.S3~q\) # ((\binary_bcd_ins|CurentState.S2~q\ & \binary_bcd_ins|Add1~10_combout\)))) # (!\binary_bcd_ins|Add2~18_combout\ & 
-- (((\binary_bcd_ins|CurentState.S2~q\ & \binary_bcd_ins|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Add2~18_combout\,
	datab => \binary_bcd_ins|CurentState.S3~q\,
	datac => \binary_bcd_ins|CurentState.S2~q\,
	datad => \binary_bcd_ins|Add1~10_combout\,
	combout => \binary_bcd_ins|bcd_signal[26]~22_combout\);

-- Location: LCCOMB_X64_Y49_N20
\binary_bcd_ins|bcd_signal[26]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[26]~24_combout\ = (\binary_bcd_ins|bcd_signal[28]~17_combout\ & (((\binary_bcd_ins|bcd_signal\(26))))) # (!\binary_bcd_ins|bcd_signal[28]~17_combout\ & ((\binary_bcd_ins|bcd_signal[26]~23_combout\) # 
-- ((\binary_bcd_ins|bcd_signal[26]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal[26]~23_combout\,
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|bcd_signal[26]~22_combout\,
	datad => \binary_bcd_ins|bcd_signal\(26),
	combout => \binary_bcd_ins|bcd_signal[26]~24_combout\);

-- Location: LCCOMB_X65_Y50_N26
\binary_bcd_ins|Add3~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|Add3~26_combout\ = (\binary_bcd_ins|bcd_signal\(26) & (!\binary_bcd_ins|Add3~25\)) # (!\binary_bcd_ins|bcd_signal\(26) & ((\binary_bcd_ins|Add3~25\) # (GND)))
-- \binary_bcd_ins|Add3~27\ = CARRY((!\binary_bcd_ins|Add3~25\) # (!\binary_bcd_ins|bcd_signal\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(26),
	datad => VCC,
	cin => \binary_bcd_ins|Add3~25\,
	combout => \binary_bcd_ins|Add3~26_combout\,
	cout => \binary_bcd_ins|Add3~27\);

-- Location: LCCOMB_X64_Y49_N28
\binary_bcd_ins|bcd_signal[26]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[26]~25_combout\ = (\binary_bcd_ins|bcd_signal[26]~24_combout\) # ((\binary_bcd_ins|CurentState.S4~q\ & (!\binary_bcd_ins|bcd_signal[28]~17_combout\ & \binary_bcd_ins|Add3~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S4~q\,
	datab => \binary_bcd_ins|bcd_signal[26]~24_combout\,
	datac => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datad => \binary_bcd_ins|Add3~26_combout\,
	combout => \binary_bcd_ins|bcd_signal[26]~25_combout\);

-- Location: FF_X64_Y49_N29
\binary_bcd_ins|bcd_signal[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|bcd_signal[26]~25_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(26));

-- Location: LCCOMB_X64_Y49_N8
\binary_bcd_ins|bcd_signal[27]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[27]~39_combout\ = (!\binary_bcd_ins|bcd_signal[28]~17_combout\ & (\binary_bcd_ins|CurentState.S3~q\ & \binary_bcd_ins|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|CurentState.S3~q\,
	datad => \binary_bcd_ins|Add2~20_combout\,
	combout => \binary_bcd_ins|bcd_signal[27]~39_combout\);

-- Location: LCCOMB_X64_Y49_N22
\binary_bcd_ins|bcd_signal[27]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[27]~27_combout\ = \binary_bcd_ins|bcd_signal\(27) $ (((!\binary_bcd_ins|bcd_signal[28]~17_combout\ & ((\binary_bcd_ins|bcd_signal\(25)) # (\binary_bcd_ins|bcd_signal\(26))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(25),
	datab => \binary_bcd_ins|bcd_signal\(26),
	datac => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datad => \binary_bcd_ins|bcd_signal\(27),
	combout => \binary_bcd_ins|bcd_signal[27]~27_combout\);

-- Location: LCCOMB_X67_Y50_N4
\binary_bcd_ins|bcd_signal[27]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[27]~30_combout\ = (\binary_bcd_ins|bcd_signal\(26) & ((\binary_bcd_ins|bcd_signal[27]~28_combout\) # ((\binary_bcd_ins|Add1~12_combout\ & \binary_bcd_ins|bcd_signal[27]~29_combout\)))) # (!\binary_bcd_ins|bcd_signal\(26) & 
-- (((\binary_bcd_ins|Add1~12_combout\ & \binary_bcd_ins|bcd_signal[27]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd_signal\(26),
	datab => \binary_bcd_ins|bcd_signal[27]~28_combout\,
	datac => \binary_bcd_ins|Add1~12_combout\,
	datad => \binary_bcd_ins|bcd_signal[27]~29_combout\,
	combout => \binary_bcd_ins|bcd_signal[27]~30_combout\);

-- Location: LCCOMB_X64_Y49_N2
\binary_bcd_ins|bcd_signal[27]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[27]~31_combout\ = (\binary_bcd_ins|bcd_signal[27]~30_combout\) # ((\binary_bcd_ins|bcd_signal[27]~27_combout\ & ((\binary_bcd_ins|CurentState.S1~q\) # (\binary_bcd_ins|bcd_signal[28]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|CurentState.S1~q\,
	datab => \binary_bcd_ins|bcd_signal[28]~17_combout\,
	datac => \binary_bcd_ins|bcd_signal[27]~27_combout\,
	datad => \binary_bcd_ins|bcd_signal[27]~30_combout\,
	combout => \binary_bcd_ins|bcd_signal[27]~31_combout\);

-- Location: LCCOMB_X64_Y49_N0
\binary_bcd_ins|bcd_signal[27]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \binary_bcd_ins|bcd_signal[27]~32_combout\ = (\binary_bcd_ins|bcd_signal[27]~39_combout\) # ((\binary_bcd_ins|bcd_signal[27]~31_combout\) # ((\binary_bcd_ins|Add3~28_combout\ & \binary_bcd_ins|bcd_signal[27]~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|Add3~28_combout\,
	datab => \binary_bcd_ins|bcd_signal[27]~26_combout\,
	datac => \binary_bcd_ins|bcd_signal[27]~39_combout\,
	datad => \binary_bcd_ins|bcd_signal[27]~31_combout\,
	combout => \binary_bcd_ins|bcd_signal[27]~32_combout\);

-- Location: FF_X64_Y49_N1
\binary_bcd_ins|bcd_signal[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \binary_bcd_ins|bcd_signal[27]~32_combout\,
	clrn => \reset_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd_signal\(27));

-- Location: FF_X71_Y46_N11
\binary_bcd_ins|bcd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(27),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(14));

-- Location: FF_X64_Y49_N25
\binary_bcd_ins|bcd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(25),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(12));

-- Location: FF_X71_Y46_N9
\binary_bcd_ins|bcd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(26),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(13));

-- Location: FF_X71_Y46_N29
\binary_bcd_ins|bcd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \binary_bcd_ins|bcd_signal\(28),
	clrn => \reset_n~input_o\,
	sload => VCC,
	ena => \binary_bcd_ins|bcd[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \binary_bcd_ins|bcd\(15));

-- Location: LCCOMB_X71_Y46_N30
\SevenSegment_ins|decoder3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder3|Mux6~0_combout\ = (\binary_bcd_ins|bcd\(14) & (!\binary_bcd_ins|bcd\(13) & ((\binary_bcd_ins|bcd\(15)) # (!\binary_bcd_ins|bcd\(12))))) # (!\binary_bcd_ins|bcd\(14) & (\binary_bcd_ins|bcd\(12) & (\binary_bcd_ins|bcd\(13) $ 
-- (!\binary_bcd_ins|bcd\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(14),
	datab => \binary_bcd_ins|bcd\(12),
	datac => \binary_bcd_ins|bcd\(13),
	datad => \binary_bcd_ins|bcd\(15),
	combout => \SevenSegment_ins|decoder3|Mux6~0_combout\);

-- Location: LCCOMB_X71_Y46_N24
\SevenSegment_ins|decoder3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder3|Mux5~0_combout\ = (\binary_bcd_ins|bcd\(13) & ((\binary_bcd_ins|bcd\(12) & ((\binary_bcd_ins|bcd\(15)))) # (!\binary_bcd_ins|bcd\(12) & (\binary_bcd_ins|bcd\(14))))) # (!\binary_bcd_ins|bcd\(13) & (\binary_bcd_ins|bcd\(14) & 
-- (\binary_bcd_ins|bcd\(12) $ (\binary_bcd_ins|bcd\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(14),
	datab => \binary_bcd_ins|bcd\(12),
	datac => \binary_bcd_ins|bcd\(13),
	datad => \binary_bcd_ins|bcd\(15),
	combout => \SevenSegment_ins|decoder3|Mux5~0_combout\);

-- Location: LCCOMB_X71_Y46_N26
\SevenSegment_ins|decoder3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder3|Mux4~0_combout\ = (\binary_bcd_ins|bcd\(14) & (\binary_bcd_ins|bcd\(15) & ((\binary_bcd_ins|bcd\(13)) # (!\binary_bcd_ins|bcd\(12))))) # (!\binary_bcd_ins|bcd\(14) & (!\binary_bcd_ins|bcd\(12) & (\binary_bcd_ins|bcd\(13) & 
-- !\binary_bcd_ins|bcd\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(14),
	datab => \binary_bcd_ins|bcd\(12),
	datac => \binary_bcd_ins|bcd\(13),
	datad => \binary_bcd_ins|bcd\(15),
	combout => \SevenSegment_ins|decoder3|Mux4~0_combout\);

-- Location: LCCOMB_X71_Y46_N4
\SevenSegment_ins|decoder3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder3|Mux3~0_combout\ = (\binary_bcd_ins|bcd\(12) & (\binary_bcd_ins|bcd\(14) $ ((!\binary_bcd_ins|bcd\(13))))) # (!\binary_bcd_ins|bcd\(12) & ((\binary_bcd_ins|bcd\(14) & (!\binary_bcd_ins|bcd\(13) & !\binary_bcd_ins|bcd\(15))) # 
-- (!\binary_bcd_ins|bcd\(14) & (\binary_bcd_ins|bcd\(13) & \binary_bcd_ins|bcd\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(14),
	datab => \binary_bcd_ins|bcd\(12),
	datac => \binary_bcd_ins|bcd\(13),
	datad => \binary_bcd_ins|bcd\(15),
	combout => \SevenSegment_ins|decoder3|Mux3~0_combout\);

-- Location: LCCOMB_X71_Y46_N8
\SevenSegment_ins|decoder3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder3|Mux2~0_combout\ = (\binary_bcd_ins|bcd\(13) & (((\binary_bcd_ins|bcd\(12) & !\binary_bcd_ins|bcd\(15))))) # (!\binary_bcd_ins|bcd\(13) & ((\binary_bcd_ins|bcd\(14) & ((!\binary_bcd_ins|bcd\(15)))) # (!\binary_bcd_ins|bcd\(14) & 
-- (\binary_bcd_ins|bcd\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(14),
	datab => \binary_bcd_ins|bcd\(12),
	datac => \binary_bcd_ins|bcd\(13),
	datad => \binary_bcd_ins|bcd\(15),
	combout => \SevenSegment_ins|decoder3|Mux2~0_combout\);

-- Location: LCCOMB_X71_Y46_N10
\SevenSegment_ins|decoder3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder3|Mux1~0_combout\ = (\binary_bcd_ins|bcd\(13) & (!\binary_bcd_ins|bcd\(15) & ((\binary_bcd_ins|bcd\(12)) # (!\binary_bcd_ins|bcd\(14))))) # (!\binary_bcd_ins|bcd\(13) & ((\binary_bcd_ins|bcd\(14) & ((\binary_bcd_ins|bcd\(15)))) # 
-- (!\binary_bcd_ins|bcd\(14) & (\binary_bcd_ins|bcd\(12) & !\binary_bcd_ins|bcd\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(12),
	datab => \binary_bcd_ins|bcd\(13),
	datac => \binary_bcd_ins|bcd\(14),
	datad => \binary_bcd_ins|bcd\(15),
	combout => \SevenSegment_ins|decoder3|Mux1~0_combout\);

-- Location: LCCOMB_X71_Y46_N28
\SevenSegment_ins|decoder3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \SevenSegment_ins|decoder3|Mux0~0_combout\ = (\binary_bcd_ins|bcd\(12) & ((\binary_bcd_ins|bcd\(15)) # (\binary_bcd_ins|bcd\(14) $ (\binary_bcd_ins|bcd\(13))))) # (!\binary_bcd_ins|bcd\(12) & ((\binary_bcd_ins|bcd\(14)) # (\binary_bcd_ins|bcd\(13) $ 
-- (\binary_bcd_ins|bcd\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \binary_bcd_ins|bcd\(14),
	datab => \binary_bcd_ins|bcd\(13),
	datac => \binary_bcd_ins|bcd\(15),
	datad => \binary_bcd_ins|bcd\(12),
	combout => \SevenSegment_ins|decoder3|Mux0~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX3(7) <= \HEX3[7]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX4(7) <= \HEX4[7]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX5(7) <= \HEX5[7]~output_o\;
END structure;


