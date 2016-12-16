-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "12/16/2016 09:33:17"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	projidea1 IS
    PORT (
	master_clk : IN std_logic;
	KB_clk : IN std_logic;
	data : IN std_logic;
	DAC_clk : OUT std_logic;
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_hSync : OUT std_logic;
	VGA_vSync : OUT std_logic;
	blank_n : OUT std_logic;
	sram_addr : OUT std_logic_vector(19 DOWNTO 0);
	sram_data : INOUT std_logic_vector(2 DOWNTO 0);
	sram_ce : OUT std_logic;
	sram_oe : OUT std_logic;
	sram_we : OUT std_logic;
	sram_lb : OUT std_logic;
	sram_ub : OUT std_logic;
	rst : IN std_logic
	);
END projidea1;

-- Design Ports Information
-- DAC_clk	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_hSync	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_vSync	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blank_n	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[0]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[1]	=>  Location: PIN_AD7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[2]	=>  Location: PIN_AE7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[3]	=>  Location: PIN_AC7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[4]	=>  Location: PIN_AB6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[5]	=>  Location: PIN_AE6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[6]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[7]	=>  Location: PIN_AC5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[8]	=>  Location: PIN_AF5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[9]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[10]	=>  Location: PIN_AF2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[11]	=>  Location: PIN_AD3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[12]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[13]	=>  Location: PIN_AC3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[14]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[15]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[16]	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[17]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[18]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_addr[19]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ce	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_oe	=>  Location: PIN_AD5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_we	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_lb	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_ub	=>  Location: PIN_AC4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[0]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[1]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sram_data[2]	=>  Location: PIN_AG4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- master_clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KB_clk	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF projidea1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_master_clk : std_logic;
SIGNAL ww_KB_clk : std_logic;
SIGNAL ww_data : std_logic;
SIGNAL ww_DAC_clk : std_logic;
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_hSync : std_logic;
SIGNAL ww_VGA_vSync : std_logic;
SIGNAL ww_blank_n : std_logic;
SIGNAL ww_sram_addr : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_sram_ce : std_logic;
SIGNAL ww_sram_oe : std_logic;
SIGNAL ww_sram_we : std_logic;
SIGNAL ww_sram_lb : std_logic;
SIGNAL ww_sram_ub : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL \master_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reduce1|VGA_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sram_data[0]~output_o\ : std_logic;
SIGNAL \sram_data[1]~output_o\ : std_logic;
SIGNAL \sram_data[2]~output_o\ : std_logic;
SIGNAL \DAC_clk~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \VGA_hSync~output_o\ : std_logic;
SIGNAL \VGA_vSync~output_o\ : std_logic;
SIGNAL \blank_n~output_o\ : std_logic;
SIGNAL \sram_addr[0]~output_o\ : std_logic;
SIGNAL \sram_addr[1]~output_o\ : std_logic;
SIGNAL \sram_addr[2]~output_o\ : std_logic;
SIGNAL \sram_addr[3]~output_o\ : std_logic;
SIGNAL \sram_addr[4]~output_o\ : std_logic;
SIGNAL \sram_addr[5]~output_o\ : std_logic;
SIGNAL \sram_addr[6]~output_o\ : std_logic;
SIGNAL \sram_addr[7]~output_o\ : std_logic;
SIGNAL \sram_addr[8]~output_o\ : std_logic;
SIGNAL \sram_addr[9]~output_o\ : std_logic;
SIGNAL \sram_addr[10]~output_o\ : std_logic;
SIGNAL \sram_addr[11]~output_o\ : std_logic;
SIGNAL \sram_addr[12]~output_o\ : std_logic;
SIGNAL \sram_addr[13]~output_o\ : std_logic;
SIGNAL \sram_addr[14]~output_o\ : std_logic;
SIGNAL \sram_addr[15]~output_o\ : std_logic;
SIGNAL \sram_addr[16]~output_o\ : std_logic;
SIGNAL \sram_addr[17]~output_o\ : std_logic;
SIGNAL \sram_addr[18]~output_o\ : std_logic;
SIGNAL \sram_addr[19]~output_o\ : std_logic;
SIGNAL \sram_ce~output_o\ : std_logic;
SIGNAL \sram_oe~output_o\ : std_logic;
SIGNAL \sram_we~output_o\ : std_logic;
SIGNAL \sram_lb~output_o\ : std_logic;
SIGNAL \sram_ub~output_o\ : std_logic;
SIGNAL \master_clk~input_o\ : std_logic;
SIGNAL \master_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \data~input_o\ : std_logic;
SIGNAL \kbIn|datasr[0]~0_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \kbIn|datasr[1]~feeder_combout\ : std_logic;
SIGNAL \kbIn|rxregister~7_combout\ : std_logic;
SIGNAL \KB_clk~input_o\ : std_logic;
SIGNAL \kbIn|clksr[0]~0_combout\ : std_logic;
SIGNAL \kbIn|rxregister[10]~1_combout\ : std_logic;
SIGNAL \kbIn|rxregister~2_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[0]~16_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[0]~17\ : std_logic;
SIGNAL \kbIn|rxtimeout[1]~18_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[1]~19\ : std_logic;
SIGNAL \kbIn|rxtimeout[2]~20_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[2]~21\ : std_logic;
SIGNAL \kbIn|rxtimeout[3]~22_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[3]~23\ : std_logic;
SIGNAL \kbIn|rxtimeout[4]~24_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[4]~25\ : std_logic;
SIGNAL \kbIn|rxtimeout[5]~26_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[5]~27\ : std_logic;
SIGNAL \kbIn|rxtimeout[6]~28_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[6]~29\ : std_logic;
SIGNAL \kbIn|rxtimeout[7]~30_combout\ : std_logic;
SIGNAL \kbIn|Equal1~1_combout\ : std_logic;
SIGNAL \kbIn|Equal1~0_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[7]~31\ : std_logic;
SIGNAL \kbIn|rxtimeout[8]~32_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[8]~33\ : std_logic;
SIGNAL \kbIn|rxtimeout[9]~34_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[9]~35\ : std_logic;
SIGNAL \kbIn|rxtimeout[10]~36_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[10]~37\ : std_logic;
SIGNAL \kbIn|rxtimeout[11]~38_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[11]~39\ : std_logic;
SIGNAL \kbIn|rxtimeout[12]~40_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[12]~41\ : std_logic;
SIGNAL \kbIn|rxtimeout[13]~42_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[13]~43\ : std_logic;
SIGNAL \kbIn|rxtimeout[14]~44_combout\ : std_logic;
SIGNAL \kbIn|rxtimeout[14]~45\ : std_logic;
SIGNAL \kbIn|rxtimeout[15]~46_combout\ : std_logic;
SIGNAL \kbIn|Equal1~3_combout\ : std_logic;
SIGNAL \kbIn|Equal1~2_combout\ : std_logic;
SIGNAL \kbIn|Equal1~4_combout\ : std_logic;
SIGNAL \kbIn|Selector2~0_combout\ : std_logic;
SIGNAL \kbIn|Selector2~1_combout\ : std_logic;
SIGNAL \kbIn|state.receive~q\ : std_logic;
SIGNAL \kbIn|Selector0~0_combout\ : std_logic;
SIGNAL \kbIn|datafetched~q\ : std_logic;
SIGNAL \kbIn|Selector1~0_combout\ : std_logic;
SIGNAL \kbIn|Selector1~1_combout\ : std_logic;
SIGNAL \kbIn|state.idle~q\ : std_logic;
SIGNAL \kbIn|rxregister~11_combout\ : std_logic;
SIGNAL \kbIn|rxregister~10_combout\ : std_logic;
SIGNAL \kbIn|rxregister~4_combout\ : std_logic;
SIGNAL \kbIn|rxregister~5_combout\ : std_logic;
SIGNAL \kbIn|rxregister~3_combout\ : std_logic;
SIGNAL \kbIn|rxregister~8_combout\ : std_logic;
SIGNAL \kbIn|rxregister~0_combout\ : std_logic;
SIGNAL \kbIn|rxregister~6_combout\ : std_logic;
SIGNAL \kbIn|rxregister~9_combout\ : std_logic;
SIGNAL \kbIn|rxdata[1]~8_combout\ : std_logic;
SIGNAL \kbIn|rxdata[7]~0_combout\ : std_logic;
SIGNAL \kbIn|rxdata[4]~7_combout\ : std_logic;
SIGNAL \kbIn|rxdata[0]~6_combout\ : std_logic;
SIGNAL \kbIn|rxdata[2]~5_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \kbIn|rxdata[3]~1_combout\ : std_logic;
SIGNAL \kbIn|rxdata[7]~3_combout\ : std_logic;
SIGNAL \previous_keycode[4]~feeder_combout\ : std_logic;
SIGNAL \kbIn|rxdata[5]~2_combout\ : std_logic;
SIGNAL \kbIn|rxdata[6]~4_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \previous_keycode[0]~feeder_combout\ : std_logic;
SIGNAL \previous_keycode[1]~feeder_combout\ : std_logic;
SIGNAL \previous_keycode[2]~feeder_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \writeR[0]~0_combout\ : std_logic;
SIGNAL \reduce1|q~0_combout\ : std_logic;
SIGNAL \reduce1|q~q\ : std_logic;
SIGNAL \reduce1|VGA_clk~feeder_combout\ : std_logic;
SIGNAL \reduce1|VGA_clk~q\ : std_logic;
SIGNAL \reduce1|VGA_clk~clkctrl_outclk\ : std_logic;
SIGNAL \backgroundR[0]~1_combout\ : std_logic;
SIGNAL \keycode[0]~0_combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \WideOr0~2_combout\ : std_logic;
SIGNAL \counter[0]~64_combout\ : std_logic;
SIGNAL \WideOr0~3_combout\ : std_logic;
SIGNAL \prev_writey[7]~3_combout\ : std_logic;
SIGNAL \prev_writey[9]~feeder_combout\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~18_combout\ : std_logic;
SIGNAL \writey[9]~19_combout\ : std_logic;
SIGNAL \prev_writey[1]~feeder_combout\ : std_logic;
SIGNAL \prev_writey[0]~feeder_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \writey[0]~10_combout\ : std_logic;
SIGNAL \always2~11_combout\ : std_logic;
SIGNAL \always2~12_combout\ : std_logic;
SIGNAL \always2~13_combout\ : std_logic;
SIGNAL \always2~14_combout\ : std_logic;
SIGNAL \always2~16_combout\ : std_logic;
SIGNAL \always2~15_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \writex~52_combout\ : std_logic;
SIGNAL \writex~47_combout\ : std_logic;
SIGNAL \writex~32_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \writex~20_combout\ : std_logic;
SIGNAL \writex[0]~10_combout\ : std_logic;
SIGNAL \always2~4_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \always2~3_combout\ : std_logic;
SIGNAL \always2~5_combout\ : std_logic;
SIGNAL \always2~18_combout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \always2~19_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \LessThan6~2_combout\ : std_logic;
SIGNAL \always2~7_combout\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \always2~20_combout\ : std_logic;
SIGNAL \always2~6_combout\ : std_logic;
SIGNAL \always2~8_combout\ : std_logic;
SIGNAL \always2~9_combout\ : std_logic;
SIGNAL \writex~27_combout\ : std_logic;
SIGNAL \writex~28_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \always2~1_combout\ : std_logic;
SIGNAL \always2~2_combout\ : std_logic;
SIGNAL \writex~25_combout\ : std_logic;
SIGNAL \writex~26_combout\ : std_logic;
SIGNAL \writex~21_combout\ : std_logic;
SIGNAL \writex~23_combout\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \always2~10_combout\ : std_logic;
SIGNAL \writex~22_combout\ : std_logic;
SIGNAL \writex~24_combout\ : std_logic;
SIGNAL \writex~29_combout\ : std_logic;
SIGNAL \always2~22_combout\ : std_logic;
SIGNAL \always2~21_combout\ : std_logic;
SIGNAL \writex~31_combout\ : std_logic;
SIGNAL \Add3~1\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \writex[1]~11_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \writex~35_combout\ : std_logic;
SIGNAL \writex~33_combout\ : std_logic;
SIGNAL \writex~34_combout\ : std_logic;
SIGNAL \writex~36_combout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \writex~37_combout\ : std_logic;
SIGNAL \writex[2]~12_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \writex~38_combout\ : std_logic;
SIGNAL \writex~39_combout\ : std_logic;
SIGNAL \writex~40_combout\ : std_logic;
SIGNAL \writex~41_combout\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \writex~42_combout\ : std_logic;
SIGNAL \writex[3]~13_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \writex~43_combout\ : std_logic;
SIGNAL \writex~44_combout\ : std_logic;
SIGNAL \writex~45_combout\ : std_logic;
SIGNAL \writex~46_combout\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \writex[4]~14_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \writex~48_combout\ : std_logic;
SIGNAL \writex~49_combout\ : std_logic;
SIGNAL \writex~50_combout\ : std_logic;
SIGNAL \writex~51_combout\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \writex[5]~15_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \writex~53_combout\ : std_logic;
SIGNAL \writex~54_combout\ : std_logic;
SIGNAL \writex~55_combout\ : std_logic;
SIGNAL \writex~56_combout\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \prev_writex[6]~0_combout\ : std_logic;
SIGNAL \writex~57_combout\ : std_logic;
SIGNAL \writex[6]~16_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \writex~58_combout\ : std_logic;
SIGNAL \writex~59_combout\ : std_logic;
SIGNAL \writex~60_combout\ : std_logic;
SIGNAL \writex~61_combout\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \writex~62_combout\ : std_logic;
SIGNAL \writex[7]~17_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \writex~63_combout\ : std_logic;
SIGNAL \writex~64_combout\ : std_logic;
SIGNAL \writex~65_combout\ : std_logic;
SIGNAL \writex~66_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \prev_writex[8]~1_combout\ : std_logic;
SIGNAL \writex~67_combout\ : std_logic;
SIGNAL \writex[8]~18_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \writex~68_combout\ : std_logic;
SIGNAL \writex~69_combout\ : std_logic;
SIGNAL \writex~70_combout\ : std_logic;
SIGNAL \writex~71_combout\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \writex~72_combout\ : std_logic;
SIGNAL \writex[9]~19_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \writex~75_combout\ : std_logic;
SIGNAL \writex~73_combout\ : std_logic;
SIGNAL \writex~74_combout\ : std_logic;
SIGNAL \writex~76_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \always2~17_combout\ : std_logic;
SIGNAL \writey~28_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \writey~20_combout\ : std_logic;
SIGNAL \writey~21_combout\ : std_logic;
SIGNAL \writey~23_combout\ : std_logic;
SIGNAL \writey~22_combout\ : std_logic;
SIGNAL \writey~24_combout\ : std_logic;
SIGNAL \writey~25_combout\ : std_logic;
SIGNAL \writey~26_combout\ : std_logic;
SIGNAL \writey~27_combout\ : std_logic;
SIGNAL \writey~29_combout\ : std_logic;
SIGNAL \writey~30_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \writey[1]~11_combout\ : std_logic;
SIGNAL \writey~34_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \writey~32_combout\ : std_logic;
SIGNAL \writey~33_combout\ : std_logic;
SIGNAL \writey~31_combout\ : std_logic;
SIGNAL \writey~35_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \writey[2]~12_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \writey~37_combout\ : std_logic;
SIGNAL \writey~38_combout\ : std_logic;
SIGNAL \writey~36_combout\ : std_logic;
SIGNAL \writey~39_combout\ : std_logic;
SIGNAL \writey~40_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \writey[3]~13_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \writey~42_combout\ : std_logic;
SIGNAL \writey~43_combout\ : std_logic;
SIGNAL \writey~44_combout\ : std_logic;
SIGNAL \writey~41_combout\ : std_logic;
SIGNAL \writey~45_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \prev_writey[4]~0_combout\ : std_logic;
SIGNAL \writey[4]~14_combout\ : std_logic;
SIGNAL \writey~49_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \writey~47_combout\ : std_logic;
SIGNAL \writey~48_combout\ : std_logic;
SIGNAL \writey~46_combout\ : std_logic;
SIGNAL \writey~50_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \prev_writey[5]~1_combout\ : std_logic;
SIGNAL \writey[5]~15_combout\ : std_logic;
SIGNAL \writey~54_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \writey~51_combout\ : std_logic;
SIGNAL \writey~52_combout\ : std_logic;
SIGNAL \writey~53_combout\ : std_logic;
SIGNAL \writey~55_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \writey~71_combout\ : std_logic;
SIGNAL \writey~72_combout\ : std_logic;
SIGNAL \writex~77_combout\ : std_logic;
SIGNAL \writey~73_combout\ : std_logic;
SIGNAL \writey~74_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \prev_writey[6]~2_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \writey[6]~16_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \writey~56_combout\ : std_logic;
SIGNAL \writey~57_combout\ : std_logic;
SIGNAL \writey~58_combout\ : std_logic;
SIGNAL \writey~59_combout\ : std_logic;
SIGNAL \writey~60_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \writey[7]~17_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \writey~62_combout\ : std_logic;
SIGNAL \writey~63_combout\ : std_logic;
SIGNAL \writey~64_combout\ : std_logic;
SIGNAL \writey~61_combout\ : std_logic;
SIGNAL \writey~65_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~16_combout\ : std_logic;
SIGNAL \writey[8]~18_combout\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \writey~66_combout\ : std_logic;
SIGNAL \writey~67_combout\ : std_logic;
SIGNAL \writey~68_combout\ : std_logic;
SIGNAL \writey~69_combout\ : std_logic;
SIGNAL \writey~70_combout\ : std_logic;
SIGNAL \gen1|Add0~0_combout\ : std_logic;
SIGNAL \gen1|Add1~0_combout\ : std_logic;
SIGNAL \gen1|Add1~1\ : std_logic;
SIGNAL \gen1|Add1~2_combout\ : std_logic;
SIGNAL \gen1|xCount~0_combout\ : std_logic;
SIGNAL \gen1|Add1~3\ : std_logic;
SIGNAL \gen1|Add1~4_combout\ : std_logic;
SIGNAL \gen1|Add1~5\ : std_logic;
SIGNAL \gen1|Add1~6_combout\ : std_logic;
SIGNAL \gen1|xCount~1_combout\ : std_logic;
SIGNAL \gen1|Add1~7\ : std_logic;
SIGNAL \gen1|Add1~8_combout\ : std_logic;
SIGNAL \gen1|xCount~2_combout\ : std_logic;
SIGNAL \gen1|Add1~9\ : std_logic;
SIGNAL \gen1|Add1~10_combout\ : std_logic;
SIGNAL \gen1|Add1~11\ : std_logic;
SIGNAL \gen1|Add1~12_combout\ : std_logic;
SIGNAL \gen1|Add1~13\ : std_logic;
SIGNAL \gen1|Add1~14_combout\ : std_logic;
SIGNAL \gen1|Add1~15\ : std_logic;
SIGNAL \gen1|Add1~16_combout\ : std_logic;
SIGNAL \gen1|xCount~3_combout\ : std_logic;
SIGNAL \gen1|Add1~17\ : std_logic;
SIGNAL \gen1|Add1~18_combout\ : std_logic;
SIGNAL \gen1|xCount~4_combout\ : std_logic;
SIGNAL \gen1|Equal0~1_combout\ : std_logic;
SIGNAL \gen1|Equal0~0_combout\ : std_logic;
SIGNAL \gen1|Equal0~2_combout\ : std_logic;
SIGNAL \gen1|Add0~1\ : std_logic;
SIGNAL \gen1|Add0~2_combout\ : std_logic;
SIGNAL \gen1|yCount~0_combout\ : std_logic;
SIGNAL \gen1|Equal1~1_combout\ : std_logic;
SIGNAL \gen1|Equal1~0_combout\ : std_logic;
SIGNAL \gen1|Equal1~2_combout\ : std_logic;
SIGNAL \gen1|Add0~3\ : std_logic;
SIGNAL \gen1|Add0~4_combout\ : std_logic;
SIGNAL \gen1|yCount~1_combout\ : std_logic;
SIGNAL \gen1|Add0~5\ : std_logic;
SIGNAL \gen1|Add0~6_combout\ : std_logic;
SIGNAL \gen1|yCount~2_combout\ : std_logic;
SIGNAL \gen1|Add0~7\ : std_logic;
SIGNAL \gen1|Add0~8_combout\ : std_logic;
SIGNAL \gen1|Add0~9\ : std_logic;
SIGNAL \gen1|Add0~10_combout\ : std_logic;
SIGNAL \gen1|Add0~11\ : std_logic;
SIGNAL \gen1|Add0~12_combout\ : std_logic;
SIGNAL \gen1|Add0~13\ : std_logic;
SIGNAL \gen1|Add0~14_combout\ : std_logic;
SIGNAL \gen1|Add0~15\ : std_logic;
SIGNAL \gen1|Add0~16_combout\ : std_logic;
SIGNAL \gen1|Add0~17\ : std_logic;
SIGNAL \gen1|Add0~18_combout\ : std_logic;
SIGNAL \gen1|yCount~3_combout\ : std_logic;
SIGNAL \always3~11_combout\ : std_logic;
SIGNAL \always3~10_combout\ : std_logic;
SIGNAL \always3~2_combout\ : std_logic;
SIGNAL \always3~3_combout\ : std_logic;
SIGNAL \always3~1_combout\ : std_logic;
SIGNAL \always3~0_combout\ : std_logic;
SIGNAL \always3~4_combout\ : std_logic;
SIGNAL \always3~6_combout\ : std_logic;
SIGNAL \always3~5_combout\ : std_logic;
SIGNAL \always3~7_combout\ : std_logic;
SIGNAL \always3~8_combout\ : std_logic;
SIGNAL \always3~9_combout\ : std_logic;
SIGNAL \always3~12_combout\ : std_logic;
SIGNAL \writex~30_combout\ : std_logic;
SIGNAL \resetram~0_combout\ : std_logic;
SIGNAL \resetram~1_combout\ : std_logic;
SIGNAL \resetram~q\ : std_logic;
SIGNAL \counter[13]~88_combout\ : std_logic;
SIGNAL \counter[0]~65\ : std_logic;
SIGNAL \counter[1]~66_combout\ : std_logic;
SIGNAL \counter[1]~67\ : std_logic;
SIGNAL \counter[2]~68_combout\ : std_logic;
SIGNAL \counter[2]~69\ : std_logic;
SIGNAL \counter[3]~70_combout\ : std_logic;
SIGNAL \counter[3]~71\ : std_logic;
SIGNAL \counter[4]~72_combout\ : std_logic;
SIGNAL \counter[4]~73\ : std_logic;
SIGNAL \counter[5]~74_combout\ : std_logic;
SIGNAL \counter[5]~75\ : std_logic;
SIGNAL \counter[6]~76_combout\ : std_logic;
SIGNAL \counter[6]~77\ : std_logic;
SIGNAL \counter[7]~78_combout\ : std_logic;
SIGNAL \counter[7]~79\ : std_logic;
SIGNAL \counter[8]~80_combout\ : std_logic;
SIGNAL \counter[8]~81\ : std_logic;
SIGNAL \counter[9]~82_combout\ : std_logic;
SIGNAL \counter[9]~83\ : std_logic;
SIGNAL \counter[10]~84_combout\ : std_logic;
SIGNAL \counter[10]~85\ : std_logic;
SIGNAL \counter[11]~86_combout\ : std_logic;
SIGNAL \counter[11]~87\ : std_logic;
SIGNAL \counter[12]~89_combout\ : std_logic;
SIGNAL \counter[12]~90\ : std_logic;
SIGNAL \counter[13]~91_combout\ : std_logic;
SIGNAL \counter[13]~92\ : std_logic;
SIGNAL \counter[14]~93_combout\ : std_logic;
SIGNAL \counter[14]~94\ : std_logic;
SIGNAL \counter[15]~95_combout\ : std_logic;
SIGNAL \counter[15]~96\ : std_logic;
SIGNAL \counter[16]~97_combout\ : std_logic;
SIGNAL \counter[16]~98\ : std_logic;
SIGNAL \counter[17]~99_combout\ : std_logic;
SIGNAL \counter[17]~100\ : std_logic;
SIGNAL \counter[18]~101_combout\ : std_logic;
SIGNAL \write_wait~2_combout\ : std_logic;
SIGNAL \write_wait~1_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \write_wait~3_combout\ : std_logic;
SIGNAL \counter[18]~102\ : std_logic;
SIGNAL \counter[19]~103_combout\ : std_logic;
SIGNAL \counter[19]~104\ : std_logic;
SIGNAL \counter[20]~105_combout\ : std_logic;
SIGNAL \counter[20]~106\ : std_logic;
SIGNAL \counter[21]~107_combout\ : std_logic;
SIGNAL \counter[21]~108\ : std_logic;
SIGNAL \counter[22]~109_combout\ : std_logic;
SIGNAL \write_wait~4_combout\ : std_logic;
SIGNAL \counter[22]~110\ : std_logic;
SIGNAL \counter[23]~111_combout\ : std_logic;
SIGNAL \counter[23]~112\ : std_logic;
SIGNAL \counter[24]~113_combout\ : std_logic;
SIGNAL \counter[24]~114\ : std_logic;
SIGNAL \counter[25]~115_combout\ : std_logic;
SIGNAL \counter[25]~116\ : std_logic;
SIGNAL \counter[26]~117_combout\ : std_logic;
SIGNAL \counter[26]~118\ : std_logic;
SIGNAL \counter[27]~119_combout\ : std_logic;
SIGNAL \counter[27]~120\ : std_logic;
SIGNAL \counter[28]~121_combout\ : std_logic;
SIGNAL \counter[28]~122\ : std_logic;
SIGNAL \counter[29]~123_combout\ : std_logic;
SIGNAL \counter[29]~124\ : std_logic;
SIGNAL \counter[30]~125_combout\ : std_logic;
SIGNAL \counter[30]~126\ : std_logic;
SIGNAL \counter[31]~127_combout\ : std_logic;
SIGNAL \write_wait~5_combout\ : std_logic;
SIGNAL \write_wait~6_combout\ : std_logic;
SIGNAL \write_wait~7_combout\ : std_logic;
SIGNAL \write_wait~8_combout\ : std_logic;
SIGNAL \write_wait~9_combout\ : std_logic;
SIGNAL \write_wait~0_combout\ : std_logic;
SIGNAL \write_wait~q\ : std_logic;
SIGNAL \always2~0_combout\ : std_logic;
SIGNAL \backgroundR[0]~0_combout\ : std_logic;
SIGNAL \Rout[0]~0_combout\ : std_logic;
SIGNAL \sram_addr~20_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \writeG[0]~0_combout\ : std_logic;
SIGNAL \backgroundG[0]~0_combout\ : std_logic;
SIGNAL \Gout[0]~0_combout\ : std_logic;
SIGNAL \writeB[0]~0_combout\ : std_logic;
SIGNAL \backgroundB[0]~0_combout\ : std_logic;
SIGNAL \Bout[0]~0_combout\ : std_logic;
SIGNAL \sram_data[0]~input_o\ : std_logic;
SIGNAL \blink[0]~12_combout\ : std_logic;
SIGNAL \WideOr0~4_combout\ : std_logic;
SIGNAL \blink[2]~20_combout\ : std_logic;
SIGNAL \blink[0]~13\ : std_logic;
SIGNAL \blink[1]~14_combout\ : std_logic;
SIGNAL \blink[1]~15\ : std_logic;
SIGNAL \blink[2]~16_combout\ : std_logic;
SIGNAL \blink[2]~17\ : std_logic;
SIGNAL \blink[3]~18_combout\ : std_logic;
SIGNAL \blink[3]~19\ : std_logic;
SIGNAL \blink[4]~21_combout\ : std_logic;
SIGNAL \blink[4]~22\ : std_logic;
SIGNAL \blink[5]~23_combout\ : std_logic;
SIGNAL \VGA_G~1_combout\ : std_logic;
SIGNAL \VGA_G~0_combout\ : std_logic;
SIGNAL \VGA_G~2_combout\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \VGA_R~1_combout\ : std_logic;
SIGNAL \VGA_R~2_combout\ : std_logic;
SIGNAL \VGA_R~3_combout\ : std_logic;
SIGNAL \VGA_R~4_combout\ : std_logic;
SIGNAL \sram_data[1]~input_o\ : std_logic;
SIGNAL \VGA_G~3_combout\ : std_logic;
SIGNAL \VGA_G~4_combout\ : std_logic;
SIGNAL \VGA_G~5_combout\ : std_logic;
SIGNAL \sram_data[2]~input_o\ : std_logic;
SIGNAL \VGA_B~0_combout\ : std_logic;
SIGNAL \VGA_B~1_combout\ : std_logic;
SIGNAL \VGA_B~2_combout\ : std_logic;
SIGNAL \gen1|p_hSync~0_combout\ : std_logic;
SIGNAL \gen1|p_hSync~1_combout\ : std_logic;
SIGNAL \gen1|p_hSync~2_combout\ : std_logic;
SIGNAL \gen1|p_hSync~3_combout\ : std_logic;
SIGNAL \gen1|LessThan1~0_combout\ : std_logic;
SIGNAL \gen1|p_vSync~0_combout\ : std_logic;
SIGNAL \gen1|p_vSync~1_combout\ : std_logic;
SIGNAL \gen1|displayArea~0_combout\ : std_logic;
SIGNAL \gen1|displayArea~1_combout\ : std_logic;
SIGNAL \sram_addr~0_combout\ : std_logic;
SIGNAL \sram_addr~1_combout\ : std_logic;
SIGNAL \sram_addr~2_combout\ : std_logic;
SIGNAL \sram_addr~3_combout\ : std_logic;
SIGNAL \sram_addr~4_combout\ : std_logic;
SIGNAL \sram_addr~5_combout\ : std_logic;
SIGNAL \sram_addr~6_combout\ : std_logic;
SIGNAL \sram_addr~7_combout\ : std_logic;
SIGNAL \sram_addr~8_combout\ : std_logic;
SIGNAL \sram_addr~9_combout\ : std_logic;
SIGNAL \sram_addr~10_combout\ : std_logic;
SIGNAL \sram_addr~11_combout\ : std_logic;
SIGNAL \sram_addr~12_combout\ : std_logic;
SIGNAL \sram_addr~13_combout\ : std_logic;
SIGNAL \sram_addr~14_combout\ : std_logic;
SIGNAL \sram_addr~15_combout\ : std_logic;
SIGNAL \sram_addr~16_combout\ : std_logic;
SIGNAL \sram_addr~17_combout\ : std_logic;
SIGNAL \sram_addr~18_combout\ : std_logic;
SIGNAL \sram_addr~19_combout\ : std_logic;
SIGNAL backgroundG : std_logic_vector(7 DOWNTO 0);
SIGNAL \kbIn|clksr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \kbIn|rxtimeout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \kbIn|datasr\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \kbIn|rxdata\ : std_logic_vector(7 DOWNTO 0);
SIGNAL writeR : std_logic_vector(7 DOWNTO 0);
SIGNAL keycode : std_logic_vector(7 DOWNTO 0);
SIGNAL \kbIn|rxregister\ : std_logic_vector(10 DOWNTO 0);
SIGNAL writey : std_logic_vector(9 DOWNTO 0);
SIGNAL \gen1|yCount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL blink : std_logic_vector(5 DOWNTO 0);
SIGNAL \gen1|xCount\ : std_logic_vector(9 DOWNTO 0);
SIGNAL backgroundB : std_logic_vector(7 DOWNTO 0);
SIGNAL writeB : std_logic_vector(7 DOWNTO 0);
SIGNAL writeG : std_logic_vector(7 DOWNTO 0);
SIGNAL prev_writex : std_logic_vector(9 DOWNTO 0);
SIGNAL backgroundR : std_logic_vector(7 DOWNTO 0);
SIGNAL prev_writey : std_logic_vector(9 DOWNTO 0);
SIGNAL counter : std_logic_vector(31 DOWNTO 0);
SIGNAL writex : std_logic_vector(9 DOWNTO 0);
SIGNAL previous_keycode : std_logic_vector(7 DOWNTO 0);
SIGNAL \kbIn|ALT_INV_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_sram_addr~20_combout\ : std_logic;
SIGNAL \ALT_INV_resetram~q\ : std_logic;
SIGNAL \ALT_INV_write_wait~q\ : std_logic;

BEGIN

ww_master_clk <= master_clk;
ww_KB_clk <= KB_clk;
ww_data <= data;
DAC_clk <= ww_DAC_clk;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_hSync <= ww_VGA_hSync;
VGA_vSync <= ww_VGA_vSync;
blank_n <= ww_blank_n;
sram_addr <= ww_sram_addr;
sram_ce <= ww_sram_ce;
sram_oe <= ww_sram_oe;
sram_we <= ww_sram_we;
sram_lb <= ww_sram_lb;
sram_ub <= ww_sram_ub;
ww_rst <= rst;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\master_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \master_clk~input_o\);

\reduce1|VGA_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reduce1|VGA_clk~q\);
\kbIn|ALT_INV_state.idle~q\ <= NOT \kbIn|state.idle~q\;
\ALT_INV_sram_addr~20_combout\ <= NOT \sram_addr~20_combout\;
\ALT_INV_resetram~q\ <= NOT \resetram~q\;
\ALT_INV_write_wait~q\ <= NOT \write_wait~q\;

-- Location: IOOBUF_X5_Y0_N9
\sram_data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Rout[0]~0_combout\,
	oe => \sram_addr~20_combout\,
	devoe => ww_devoe,
	o => \sram_data[0]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\sram_data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Gout[0]~0_combout\,
	oe => \sram_addr~20_combout\,
	devoe => ww_devoe,
	o => \sram_data[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\sram_data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Bout[0]~0_combout\,
	oe => \sram_addr~20_combout\,
	devoe => ww_devoe,
	o => \sram_data[2]~output_o\);

-- Location: IOOBUF_X47_Y73_N2
\DAC_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reduce1|VGA_clk~q\,
	devoe => ww_devoe,
	o => \DAC_clk~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~2_combout\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~3_combout\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~3_combout\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~3_combout\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~3_combout\,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~3_combout\,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~3_combout\,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R~4_combout\,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~3_combout\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~4_combout\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~4_combout\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~4_combout\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~4_combout\,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~4_combout\,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~4_combout\,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_G~5_combout\,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~0_combout\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~1_combout\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~1_combout\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~1_combout\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~1_combout\,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~1_combout\,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~1_combout\,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_B~2_combout\,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\VGA_hSync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1|p_hSync~3_combout\,
	devoe => ww_devoe,
	o => \VGA_hSync~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\VGA_vSync~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1|p_vSync~1_combout\,
	devoe => ww_devoe,
	o => \VGA_vSync~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\blank_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \gen1|displayArea~1_combout\,
	devoe => ww_devoe,
	o => \blank_n~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\sram_addr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~0_combout\,
	devoe => ww_devoe,
	o => \sram_addr[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\sram_addr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~1_combout\,
	devoe => ww_devoe,
	o => \sram_addr[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\sram_addr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~2_combout\,
	devoe => ww_devoe,
	o => \sram_addr[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\sram_addr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~3_combout\,
	devoe => ww_devoe,
	o => \sram_addr[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\sram_addr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~4_combout\,
	devoe => ww_devoe,
	o => \sram_addr[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\sram_addr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~5_combout\,
	devoe => ww_devoe,
	o => \sram_addr[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\sram_addr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~6_combout\,
	devoe => ww_devoe,
	o => \sram_addr[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\sram_addr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~7_combout\,
	devoe => ww_devoe,
	o => \sram_addr[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\sram_addr[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~8_combout\,
	devoe => ww_devoe,
	o => \sram_addr[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\sram_addr[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~9_combout\,
	devoe => ww_devoe,
	o => \sram_addr[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\sram_addr[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~10_combout\,
	devoe => ww_devoe,
	o => \sram_addr[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\sram_addr[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~11_combout\,
	devoe => ww_devoe,
	o => \sram_addr[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\sram_addr[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~12_combout\,
	devoe => ww_devoe,
	o => \sram_addr[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\sram_addr[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~13_combout\,
	devoe => ww_devoe,
	o => \sram_addr[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\sram_addr[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~14_combout\,
	devoe => ww_devoe,
	o => \sram_addr[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\sram_addr[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~15_combout\,
	devoe => ww_devoe,
	o => \sram_addr[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\sram_addr[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~16_combout\,
	devoe => ww_devoe,
	o => \sram_addr[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\sram_addr[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~17_combout\,
	devoe => ww_devoe,
	o => \sram_addr[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\sram_addr[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~18_combout\,
	devoe => ww_devoe,
	o => \sram_addr[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\sram_addr[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sram_addr~19_combout\,
	devoe => ww_devoe,
	o => \sram_addr[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\sram_ce~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_ce~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\sram_oe~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_oe~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\sram_we~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_sram_addr~20_combout\,
	devoe => ww_devoe,
	o => \sram_we~output_o\);

-- Location: IOOBUF_X1_Y0_N9
\sram_lb~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_lb~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\sram_ub~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \sram_ub~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\master_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_master_clk,
	o => \master_clk~input_o\);

-- Location: CLKCTRL_G4
\master_clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \master_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \master_clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y59_N22
\data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data,
	o => \data~input_o\);

-- Location: LCCOMB_X32_Y43_N14
\kbIn|datasr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|datasr[0]~0_combout\ = !\data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data~input_o\,
	combout => \kbIn|datasr[0]~0_combout\);

-- Location: IOIBUF_X115_Y14_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X32_Y43_N15
\kbIn|datasr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|datasr[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|datasr\(0));

-- Location: LCCOMB_X33_Y43_N30
\kbIn|datasr[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|datasr[1]~feeder_combout\ = \kbIn|datasr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kbIn|datasr\(0),
	combout => \kbIn|datasr[1]~feeder_combout\);

-- Location: FF_X33_Y43_N31
\kbIn|datasr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|datasr[1]~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|datasr\(1));

-- Location: LCCOMB_X33_Y43_N20
\kbIn|rxregister~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~7_combout\ = (\kbIn|rxregister\(2) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxregister\(2),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~7_combout\);

-- Location: IOIBUF_X0_Y67_N15
\KB_clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KB_clk,
	o => \KB_clk~input_o\);

-- Location: LCCOMB_X32_Y43_N16
\kbIn|clksr[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|clksr[0]~0_combout\ = !\KB_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \KB_clk~input_o\,
	combout => \kbIn|clksr[0]~0_combout\);

-- Location: FF_X32_Y43_N17
\kbIn|clksr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|clksr[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|clksr\(0));

-- Location: FF_X33_Y43_N23
\kbIn|clksr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|clksr\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|clksr\(1));

-- Location: LCCOMB_X33_Y43_N28
\kbIn|rxregister[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister[10]~1_combout\ = ((!\kbIn|clksr\(1) & \kbIn|clksr\(0))) # (!\kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|clksr\(1),
	datac => \kbIn|clksr\(0),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister[10]~1_combout\);

-- Location: FF_X33_Y43_N21
\kbIn|rxregister[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~7_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(1));

-- Location: LCCOMB_X33_Y43_N14
\kbIn|rxregister~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~2_combout\ = (\kbIn|rxregister\(1) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxregister\(1),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~2_combout\);

-- Location: FF_X33_Y43_N15
\kbIn|rxregister[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~2_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(0));

-- Location: LCCOMB_X35_Y43_N0
\kbIn|rxtimeout[0]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[0]~16_combout\ = \kbIn|rxtimeout\(0) $ (VCC)
-- \kbIn|rxtimeout[0]~17\ = CARRY(\kbIn|rxtimeout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(0),
	datad => VCC,
	combout => \kbIn|rxtimeout[0]~16_combout\,
	cout => \kbIn|rxtimeout[0]~17\);

-- Location: FF_X35_Y43_N1
\kbIn|rxtimeout[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[0]~16_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(0));

-- Location: LCCOMB_X35_Y43_N2
\kbIn|rxtimeout[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[1]~18_combout\ = (\kbIn|rxtimeout\(1) & (!\kbIn|rxtimeout[0]~17\)) # (!\kbIn|rxtimeout\(1) & ((\kbIn|rxtimeout[0]~17\) # (GND)))
-- \kbIn|rxtimeout[1]~19\ = CARRY((!\kbIn|rxtimeout[0]~17\) # (!\kbIn|rxtimeout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(1),
	datad => VCC,
	cin => \kbIn|rxtimeout[0]~17\,
	combout => \kbIn|rxtimeout[1]~18_combout\,
	cout => \kbIn|rxtimeout[1]~19\);

-- Location: FF_X35_Y43_N3
\kbIn|rxtimeout[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[1]~18_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(1));

-- Location: LCCOMB_X35_Y43_N4
\kbIn|rxtimeout[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[2]~20_combout\ = (\kbIn|rxtimeout\(2) & (\kbIn|rxtimeout[1]~19\ $ (GND))) # (!\kbIn|rxtimeout\(2) & (!\kbIn|rxtimeout[1]~19\ & VCC))
-- \kbIn|rxtimeout[2]~21\ = CARRY((\kbIn|rxtimeout\(2) & !\kbIn|rxtimeout[1]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(2),
	datad => VCC,
	cin => \kbIn|rxtimeout[1]~19\,
	combout => \kbIn|rxtimeout[2]~20_combout\,
	cout => \kbIn|rxtimeout[2]~21\);

-- Location: FF_X35_Y43_N5
\kbIn|rxtimeout[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[2]~20_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(2));

-- Location: LCCOMB_X35_Y43_N6
\kbIn|rxtimeout[3]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[3]~22_combout\ = (\kbIn|rxtimeout\(3) & (!\kbIn|rxtimeout[2]~21\)) # (!\kbIn|rxtimeout\(3) & ((\kbIn|rxtimeout[2]~21\) # (GND)))
-- \kbIn|rxtimeout[3]~23\ = CARRY((!\kbIn|rxtimeout[2]~21\) # (!\kbIn|rxtimeout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(3),
	datad => VCC,
	cin => \kbIn|rxtimeout[2]~21\,
	combout => \kbIn|rxtimeout[3]~22_combout\,
	cout => \kbIn|rxtimeout[3]~23\);

-- Location: FF_X35_Y43_N7
\kbIn|rxtimeout[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[3]~22_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(3));

-- Location: LCCOMB_X35_Y43_N8
\kbIn|rxtimeout[4]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[4]~24_combout\ = (\kbIn|rxtimeout\(4) & (\kbIn|rxtimeout[3]~23\ $ (GND))) # (!\kbIn|rxtimeout\(4) & (!\kbIn|rxtimeout[3]~23\ & VCC))
-- \kbIn|rxtimeout[4]~25\ = CARRY((\kbIn|rxtimeout\(4) & !\kbIn|rxtimeout[3]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(4),
	datad => VCC,
	cin => \kbIn|rxtimeout[3]~23\,
	combout => \kbIn|rxtimeout[4]~24_combout\,
	cout => \kbIn|rxtimeout[4]~25\);

-- Location: FF_X35_Y43_N9
\kbIn|rxtimeout[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[4]~24_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(4));

-- Location: LCCOMB_X35_Y43_N10
\kbIn|rxtimeout[5]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[5]~26_combout\ = (\kbIn|rxtimeout\(5) & (!\kbIn|rxtimeout[4]~25\)) # (!\kbIn|rxtimeout\(5) & ((\kbIn|rxtimeout[4]~25\) # (GND)))
-- \kbIn|rxtimeout[5]~27\ = CARRY((!\kbIn|rxtimeout[4]~25\) # (!\kbIn|rxtimeout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(5),
	datad => VCC,
	cin => \kbIn|rxtimeout[4]~25\,
	combout => \kbIn|rxtimeout[5]~26_combout\,
	cout => \kbIn|rxtimeout[5]~27\);

-- Location: FF_X35_Y43_N11
\kbIn|rxtimeout[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[5]~26_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(5));

-- Location: LCCOMB_X35_Y43_N12
\kbIn|rxtimeout[6]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[6]~28_combout\ = (\kbIn|rxtimeout\(6) & (\kbIn|rxtimeout[5]~27\ $ (GND))) # (!\kbIn|rxtimeout\(6) & (!\kbIn|rxtimeout[5]~27\ & VCC))
-- \kbIn|rxtimeout[6]~29\ = CARRY((\kbIn|rxtimeout\(6) & !\kbIn|rxtimeout[5]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(6),
	datad => VCC,
	cin => \kbIn|rxtimeout[5]~27\,
	combout => \kbIn|rxtimeout[6]~28_combout\,
	cout => \kbIn|rxtimeout[6]~29\);

-- Location: FF_X35_Y43_N13
\kbIn|rxtimeout[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[6]~28_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(6));

-- Location: LCCOMB_X35_Y43_N14
\kbIn|rxtimeout[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[7]~30_combout\ = (\kbIn|rxtimeout\(7) & (!\kbIn|rxtimeout[6]~29\)) # (!\kbIn|rxtimeout\(7) & ((\kbIn|rxtimeout[6]~29\) # (GND)))
-- \kbIn|rxtimeout[7]~31\ = CARRY((!\kbIn|rxtimeout[6]~29\) # (!\kbIn|rxtimeout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(7),
	datad => VCC,
	cin => \kbIn|rxtimeout[6]~29\,
	combout => \kbIn|rxtimeout[7]~30_combout\,
	cout => \kbIn|rxtimeout[7]~31\);

-- Location: FF_X35_Y43_N15
\kbIn|rxtimeout[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[7]~30_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(7));

-- Location: LCCOMB_X34_Y43_N12
\kbIn|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Equal1~1_combout\ = (\kbIn|rxtimeout\(6) & (!\kbIn|rxtimeout\(5) & (!\kbIn|rxtimeout\(7) & \kbIn|rxtimeout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(6),
	datab => \kbIn|rxtimeout\(5),
	datac => \kbIn|rxtimeout\(7),
	datad => \kbIn|rxtimeout\(4),
	combout => \kbIn|Equal1~1_combout\);

-- Location: LCCOMB_X34_Y43_N14
\kbIn|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Equal1~0_combout\ = (!\kbIn|rxtimeout\(1) & (!\kbIn|rxtimeout\(0) & (!\kbIn|rxtimeout\(2) & !\kbIn|rxtimeout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(1),
	datab => \kbIn|rxtimeout\(0),
	datac => \kbIn|rxtimeout\(2),
	datad => \kbIn|rxtimeout\(3),
	combout => \kbIn|Equal1~0_combout\);

-- Location: LCCOMB_X35_Y43_N16
\kbIn|rxtimeout[8]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[8]~32_combout\ = (\kbIn|rxtimeout\(8) & (\kbIn|rxtimeout[7]~31\ $ (GND))) # (!\kbIn|rxtimeout\(8) & (!\kbIn|rxtimeout[7]~31\ & VCC))
-- \kbIn|rxtimeout[8]~33\ = CARRY((\kbIn|rxtimeout\(8) & !\kbIn|rxtimeout[7]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(8),
	datad => VCC,
	cin => \kbIn|rxtimeout[7]~31\,
	combout => \kbIn|rxtimeout[8]~32_combout\,
	cout => \kbIn|rxtimeout[8]~33\);

-- Location: FF_X35_Y43_N17
\kbIn|rxtimeout[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[8]~32_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(8));

-- Location: LCCOMB_X35_Y43_N18
\kbIn|rxtimeout[9]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[9]~34_combout\ = (\kbIn|rxtimeout\(9) & (!\kbIn|rxtimeout[8]~33\)) # (!\kbIn|rxtimeout\(9) & ((\kbIn|rxtimeout[8]~33\) # (GND)))
-- \kbIn|rxtimeout[9]~35\ = CARRY((!\kbIn|rxtimeout[8]~33\) # (!\kbIn|rxtimeout\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(9),
	datad => VCC,
	cin => \kbIn|rxtimeout[8]~33\,
	combout => \kbIn|rxtimeout[9]~34_combout\,
	cout => \kbIn|rxtimeout[9]~35\);

-- Location: FF_X35_Y43_N19
\kbIn|rxtimeout[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[9]~34_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(9));

-- Location: LCCOMB_X35_Y43_N20
\kbIn|rxtimeout[10]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[10]~36_combout\ = (\kbIn|rxtimeout\(10) & (\kbIn|rxtimeout[9]~35\ $ (GND))) # (!\kbIn|rxtimeout\(10) & (!\kbIn|rxtimeout[9]~35\ & VCC))
-- \kbIn|rxtimeout[10]~37\ = CARRY((\kbIn|rxtimeout\(10) & !\kbIn|rxtimeout[9]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(10),
	datad => VCC,
	cin => \kbIn|rxtimeout[9]~35\,
	combout => \kbIn|rxtimeout[10]~36_combout\,
	cout => \kbIn|rxtimeout[10]~37\);

-- Location: FF_X35_Y43_N21
\kbIn|rxtimeout[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[10]~36_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(10));

-- Location: LCCOMB_X35_Y43_N22
\kbIn|rxtimeout[11]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[11]~38_combout\ = (\kbIn|rxtimeout\(11) & (!\kbIn|rxtimeout[10]~37\)) # (!\kbIn|rxtimeout\(11) & ((\kbIn|rxtimeout[10]~37\) # (GND)))
-- \kbIn|rxtimeout[11]~39\ = CARRY((!\kbIn|rxtimeout[10]~37\) # (!\kbIn|rxtimeout\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(11),
	datad => VCC,
	cin => \kbIn|rxtimeout[10]~37\,
	combout => \kbIn|rxtimeout[11]~38_combout\,
	cout => \kbIn|rxtimeout[11]~39\);

-- Location: FF_X35_Y43_N23
\kbIn|rxtimeout[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[11]~38_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(11));

-- Location: LCCOMB_X35_Y43_N24
\kbIn|rxtimeout[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[12]~40_combout\ = (\kbIn|rxtimeout\(12) & (\kbIn|rxtimeout[11]~39\ $ (GND))) # (!\kbIn|rxtimeout\(12) & (!\kbIn|rxtimeout[11]~39\ & VCC))
-- \kbIn|rxtimeout[12]~41\ = CARRY((\kbIn|rxtimeout\(12) & !\kbIn|rxtimeout[11]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(12),
	datad => VCC,
	cin => \kbIn|rxtimeout[11]~39\,
	combout => \kbIn|rxtimeout[12]~40_combout\,
	cout => \kbIn|rxtimeout[12]~41\);

-- Location: FF_X35_Y43_N25
\kbIn|rxtimeout[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[12]~40_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(12));

-- Location: LCCOMB_X35_Y43_N26
\kbIn|rxtimeout[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[13]~42_combout\ = (\kbIn|rxtimeout\(13) & (!\kbIn|rxtimeout[12]~41\)) # (!\kbIn|rxtimeout\(13) & ((\kbIn|rxtimeout[12]~41\) # (GND)))
-- \kbIn|rxtimeout[13]~43\ = CARRY((!\kbIn|rxtimeout[12]~41\) # (!\kbIn|rxtimeout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(13),
	datad => VCC,
	cin => \kbIn|rxtimeout[12]~41\,
	combout => \kbIn|rxtimeout[13]~42_combout\,
	cout => \kbIn|rxtimeout[13]~43\);

-- Location: FF_X35_Y43_N27
\kbIn|rxtimeout[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[13]~42_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(13));

-- Location: LCCOMB_X35_Y43_N28
\kbIn|rxtimeout[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[14]~44_combout\ = (\kbIn|rxtimeout\(14) & (\kbIn|rxtimeout[13]~43\ $ (GND))) # (!\kbIn|rxtimeout\(14) & (!\kbIn|rxtimeout[13]~43\ & VCC))
-- \kbIn|rxtimeout[14]~45\ = CARRY((\kbIn|rxtimeout\(14) & !\kbIn|rxtimeout[13]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxtimeout\(14),
	datad => VCC,
	cin => \kbIn|rxtimeout[13]~43\,
	combout => \kbIn|rxtimeout[14]~44_combout\,
	cout => \kbIn|rxtimeout[14]~45\);

-- Location: FF_X35_Y43_N29
\kbIn|rxtimeout[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[14]~44_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(14));

-- Location: LCCOMB_X35_Y43_N30
\kbIn|rxtimeout[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxtimeout[15]~46_combout\ = \kbIn|rxtimeout\(15) $ (\kbIn|rxtimeout[14]~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(15),
	cin => \kbIn|rxtimeout[14]~45\,
	combout => \kbIn|rxtimeout[15]~46_combout\);

-- Location: FF_X35_Y43_N31
\kbIn|rxtimeout[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxtimeout[15]~46_combout\,
	clrn => \rst~input_o\,
	sclr => \kbIn|ALT_INV_state.idle~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxtimeout\(15));

-- Location: LCCOMB_X34_Y43_N8
\kbIn|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Equal1~3_combout\ = (!\kbIn|rxtimeout\(12) & (\kbIn|rxtimeout\(14) & (\kbIn|rxtimeout\(15) & !\kbIn|rxtimeout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(12),
	datab => \kbIn|rxtimeout\(14),
	datac => \kbIn|rxtimeout\(15),
	datad => \kbIn|rxtimeout\(13),
	combout => \kbIn|Equal1~3_combout\);

-- Location: LCCOMB_X34_Y43_N18
\kbIn|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Equal1~2_combout\ = (\kbIn|rxtimeout\(9) & (\kbIn|rxtimeout\(8) & (!\kbIn|rxtimeout\(10) & !\kbIn|rxtimeout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxtimeout\(9),
	datab => \kbIn|rxtimeout\(8),
	datac => \kbIn|rxtimeout\(10),
	datad => \kbIn|rxtimeout\(11),
	combout => \kbIn|Equal1~2_combout\);

-- Location: LCCOMB_X34_Y43_N2
\kbIn|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Equal1~4_combout\ = (\kbIn|Equal1~1_combout\ & (\kbIn|Equal1~0_combout\ & (\kbIn|Equal1~3_combout\ & \kbIn|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|Equal1~1_combout\,
	datab => \kbIn|Equal1~0_combout\,
	datac => \kbIn|Equal1~3_combout\,
	datad => \kbIn|Equal1~2_combout\,
	combout => \kbIn|Equal1~4_combout\);

-- Location: LCCOMB_X34_Y43_N24
\kbIn|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Selector2~0_combout\ = (!\kbIn|state.idle~q\ & (!\kbIn|clksr\(1) & \kbIn|datasr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|state.idle~q\,
	datab => \kbIn|clksr\(1),
	datad => \kbIn|datasr\(1),
	combout => \kbIn|Selector2~0_combout\);

-- Location: LCCOMB_X34_Y43_N16
\kbIn|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Selector2~1_combout\ = (\kbIn|Selector2~0_combout\) # ((!\kbIn|rxregister\(0) & (!\kbIn|Equal1~4_combout\ & \kbIn|state.receive~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxregister\(0),
	datab => \kbIn|Equal1~4_combout\,
	datac => \kbIn|state.receive~q\,
	datad => \kbIn|Selector2~0_combout\,
	combout => \kbIn|Selector2~1_combout\);

-- Location: FF_X34_Y43_N17
\kbIn|state.receive\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|Selector2~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|state.receive~q\);

-- Location: LCCOMB_X34_Y43_N20
\kbIn|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Selector0~0_combout\ = (\kbIn|state.receive~q\ & ((\kbIn|datafetched~q\) # ((\kbIn|rxregister\(0) & !\kbIn|Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxregister\(0),
	datab => \kbIn|state.receive~q\,
	datac => \kbIn|datafetched~q\,
	datad => \kbIn|Equal1~4_combout\,
	combout => \kbIn|Selector0~0_combout\);

-- Location: FF_X39_Y43_N17
\kbIn|datafetched\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|Selector0~0_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|datafetched~q\);

-- Location: LCCOMB_X34_Y43_N6
\kbIn|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Selector1~0_combout\ = (\kbIn|state.receive~q\ & ((!\kbIn|Equal1~4_combout\))) # (!\kbIn|state.receive~q\ & (!\kbIn|datafetched~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|state.receive~q\,
	datab => \kbIn|datafetched~q\,
	datad => \kbIn|Equal1~4_combout\,
	combout => \kbIn|Selector1~0_combout\);

-- Location: LCCOMB_X34_Y43_N30
\kbIn|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|Selector1~1_combout\ = (\kbIn|state.idle~q\ & (\kbIn|Selector1~0_combout\)) # (!\kbIn|state.idle~q\ & (((\kbIn|datasr\(1) & !\kbIn|clksr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|Selector1~0_combout\,
	datab => \kbIn|datasr\(1),
	datac => \kbIn|state.idle~q\,
	datad => \kbIn|clksr\(1),
	combout => \kbIn|Selector1~1_combout\);

-- Location: FF_X34_Y43_N31
\kbIn|state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|Selector1~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|state.idle~q\);

-- Location: LCCOMB_X33_Y43_N26
\kbIn|rxregister~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~11_combout\ = (\kbIn|datasr\(1) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|datasr\(1),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~11_combout\);

-- Location: FF_X33_Y43_N27
\kbIn|rxregister[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~11_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(10));

-- Location: LCCOMB_X33_Y43_N8
\kbIn|rxregister~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~10_combout\ = (\kbIn|rxregister\(10) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxregister\(10),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~10_combout\);

-- Location: FF_X33_Y43_N9
\kbIn|rxregister[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~10_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(9));

-- Location: LCCOMB_X33_Y43_N18
\kbIn|rxregister~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~4_combout\ = (\kbIn|rxregister\(9) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxregister\(9),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~4_combout\);

-- Location: FF_X33_Y43_N19
\kbIn|rxregister[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~4_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(8));

-- Location: LCCOMB_X33_Y43_N4
\kbIn|rxregister~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~5_combout\ = (\kbIn|rxregister\(8) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxregister\(8),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~5_combout\);

-- Location: FF_X33_Y43_N5
\kbIn|rxregister[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~5_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(7));

-- Location: LCCOMB_X33_Y43_N12
\kbIn|rxregister~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~3_combout\ = (\kbIn|rxregister\(7) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxregister\(7),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~3_combout\);

-- Location: FF_X33_Y43_N13
\kbIn|rxregister[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~3_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(6));

-- Location: LCCOMB_X33_Y43_N2
\kbIn|rxregister~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~8_combout\ = (\kbIn|rxregister\(6) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxregister\(6),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~8_combout\);

-- Location: FF_X33_Y43_N3
\kbIn|rxregister[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~8_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(5));

-- Location: LCCOMB_X33_Y43_N0
\kbIn|rxregister~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~0_combout\ = (\kbIn|rxregister\(5) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxregister\(5),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~0_combout\);

-- Location: FF_X33_Y43_N1
\kbIn|rxregister[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~0_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(4));

-- Location: LCCOMB_X33_Y43_N10
\kbIn|rxregister~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~6_combout\ = (\kbIn|rxregister\(4) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|rxregister\(4),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~6_combout\);

-- Location: FF_X33_Y43_N11
\kbIn|rxregister[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~6_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(3));

-- Location: LCCOMB_X33_Y43_N24
\kbIn|rxregister~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxregister~9_combout\ = (\kbIn|rxregister\(3) & \kbIn|state.idle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxregister\(3),
	datad => \kbIn|state.idle~q\,
	combout => \kbIn|rxregister~9_combout\);

-- Location: FF_X33_Y43_N25
\kbIn|rxregister[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxregister~9_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxregister[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxregister\(2));

-- Location: LCCOMB_X34_Y43_N10
\kbIn|rxdata[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[1]~8_combout\ = !\kbIn|rxregister\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxregister\(2),
	combout => \kbIn|rxdata[1]~8_combout\);

-- Location: LCCOMB_X34_Y43_N0
\kbIn|rxdata[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[7]~0_combout\ = (\kbIn|rxregister\(0) & (\kbIn|state.receive~q\ & !\kbIn|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxregister\(0),
	datab => \kbIn|state.receive~q\,
	datad => \kbIn|Equal1~4_combout\,
	combout => \kbIn|rxdata[7]~0_combout\);

-- Location: FF_X34_Y43_N11
\kbIn|rxdata[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxdata[1]~8_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxdata[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxdata\(1));

-- Location: LCCOMB_X33_Y43_N22
\kbIn|rxdata[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[4]~7_combout\ = !\kbIn|rxregister\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kbIn|rxregister\(5),
	combout => \kbIn|rxdata[4]~7_combout\);

-- Location: FF_X34_Y43_N1
\kbIn|rxdata[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata[4]~7_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \kbIn|rxdata[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxdata\(4));

-- Location: LCCOMB_X33_Y43_N6
\kbIn|rxdata[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[0]~6_combout\ = !\kbIn|rxregister\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kbIn|rxregister\(1),
	combout => \kbIn|rxdata[0]~6_combout\);

-- Location: FF_X34_Y43_N7
\kbIn|rxdata[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata[0]~6_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \kbIn|rxdata[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxdata\(0));

-- Location: LCCOMB_X34_Y43_N28
\kbIn|rxdata[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[2]~5_combout\ = !\kbIn|rxregister\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kbIn|rxregister\(3),
	combout => \kbIn|rxdata[2]~5_combout\);

-- Location: FF_X34_Y43_N29
\kbIn|rxdata[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxdata[2]~5_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxdata[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxdata\(2));

-- Location: LCCOMB_X38_Y43_N8
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\kbIn|rxdata\(1) & (!\kbIn|rxdata\(4) & (\kbIn|rxdata\(0) & \kbIn|rxdata\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxdata\(1),
	datab => \kbIn|rxdata\(4),
	datac => \kbIn|rxdata\(0),
	datad => \kbIn|rxdata\(2),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X34_Y43_N4
\kbIn|rxdata[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[3]~1_combout\ = !\kbIn|rxregister\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxregister\(4),
	combout => \kbIn|rxdata[3]~1_combout\);

-- Location: FF_X34_Y43_N5
\kbIn|rxdata[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxdata[3]~1_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxdata[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxdata\(3));

-- Location: LCCOMB_X33_Y43_N16
\kbIn|rxdata[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[7]~3_combout\ = !\kbIn|rxregister\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kbIn|rxregister\(8),
	combout => \kbIn|rxdata[7]~3_combout\);

-- Location: FF_X34_Y43_N25
\kbIn|rxdata[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata[7]~3_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \kbIn|rxdata[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxdata\(7));

-- Location: FF_X41_Y43_N11
\previous_keycode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(7),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \kbIn|datafetched~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => previous_keycode(7));

-- Location: LCCOMB_X41_Y43_N20
\previous_keycode[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \previous_keycode[4]~feeder_combout\ = \kbIn|rxdata\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxdata\(4),
	combout => \previous_keycode[4]~feeder_combout\);

-- Location: FF_X41_Y43_N21
\previous_keycode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \previous_keycode[4]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|datafetched~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => previous_keycode(4));

-- Location: LCCOMB_X34_Y43_N22
\kbIn|rxdata[5]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[5]~2_combout\ = !\kbIn|rxregister\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kbIn|rxregister\(6),
	combout => \kbIn|rxdata[5]~2_combout\);

-- Location: FF_X34_Y43_N23
\kbIn|rxdata[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxdata[5]~2_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxdata[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxdata\(5));

-- Location: FF_X41_Y43_N23
\previous_keycode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(5),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \kbIn|datafetched~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => previous_keycode(5));

-- Location: LCCOMB_X34_Y43_N26
\kbIn|rxdata[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \kbIn|rxdata[6]~4_combout\ = !\kbIn|rxregister\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxregister\(7),
	combout => \kbIn|rxdata[6]~4_combout\);

-- Location: FF_X34_Y43_N27
\kbIn|rxdata[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \kbIn|rxdata[6]~4_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|rxdata[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \kbIn|rxdata\(6));

-- Location: FF_X41_Y43_N17
\previous_keycode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(6),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \kbIn|datafetched~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => previous_keycode(6));

-- Location: LCCOMB_X41_Y43_N22
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (previous_keycode(7) & (previous_keycode(4) & (previous_keycode(5) & previous_keycode(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => previous_keycode(7),
	datab => previous_keycode(4),
	datac => previous_keycode(5),
	datad => previous_keycode(6),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X42_Y43_N30
\previous_keycode[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \previous_keycode[0]~feeder_combout\ = \kbIn|rxdata\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kbIn|rxdata\(0),
	combout => \previous_keycode[0]~feeder_combout\);

-- Location: FF_X42_Y43_N31
\previous_keycode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \previous_keycode[0]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|datafetched~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => previous_keycode(0));

-- Location: LCCOMB_X42_Y43_N28
\previous_keycode[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \previous_keycode[1]~feeder_combout\ = \kbIn|rxdata\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \kbIn|rxdata\(1),
	combout => \previous_keycode[1]~feeder_combout\);

-- Location: FF_X42_Y43_N29
\previous_keycode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \previous_keycode[1]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|datafetched~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => previous_keycode(1));

-- Location: FF_X42_Y43_N25
\previous_keycode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \kbIn|datafetched~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => previous_keycode(3));

-- Location: LCCOMB_X42_Y43_N26
\previous_keycode[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \previous_keycode[2]~feeder_combout\ = \kbIn|rxdata\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \kbIn|rxdata\(2),
	combout => \previous_keycode[2]~feeder_combout\);

-- Location: FF_X42_Y43_N27
\previous_keycode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \previous_keycode[2]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \kbIn|datafetched~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => previous_keycode(2));

-- Location: LCCOMB_X42_Y43_N24
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!previous_keycode(0) & (!previous_keycode(1) & (!previous_keycode(3) & !previous_keycode(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => previous_keycode(0),
	datab => previous_keycode(1),
	datac => previous_keycode(3),
	datad => previous_keycode(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X41_Y43_N10
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\kbIn|rxdata\(6) & (\kbIn|datafetched~q\ & (!\kbIn|rxdata\(7) & \kbIn|rxdata\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxdata\(6),
	datab => \kbIn|datafetched~q\,
	datac => \kbIn|rxdata\(7),
	datad => \kbIn|rxdata\(5),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X41_Y43_N16
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~1_combout\,
	datad => \Decoder0~0_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X41_Y43_N24
\writeR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeR[0]~0_combout\ = writeR(0) $ (((\Decoder0~2_combout\ & (\kbIn|rxdata\(3) & \Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \kbIn|rxdata\(3),
	datac => writeR(0),
	datad => \Decoder0~1_combout\,
	combout => \writeR[0]~0_combout\);

-- Location: FF_X41_Y43_N25
\writeR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \writeR[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeR(0));

-- Location: LCCOMB_X36_Y42_N12
\reduce1|q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \reduce1|q~0_combout\ = !\reduce1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reduce1|q~q\,
	combout => \reduce1|q~0_combout\);

-- Location: FF_X36_Y42_N13
\reduce1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \reduce1|q~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reduce1|q~q\);

-- Location: LCCOMB_X36_Y42_N4
\reduce1|VGA_clk~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \reduce1|VGA_clk~feeder_combout\ = \reduce1|q~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reduce1|q~q\,
	combout => \reduce1|VGA_clk~feeder_combout\);

-- Location: FF_X36_Y42_N5
\reduce1|VGA_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \reduce1|VGA_clk~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reduce1|VGA_clk~q\);

-- Location: CLKCTRL_G13
\reduce1|VGA_clk~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reduce1|VGA_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reduce1|VGA_clk~clkctrl_outclk\);

-- Location: LCCOMB_X39_Y43_N0
\backgroundR[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundR[0]~1_combout\ = !writeR(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writeR(0),
	combout => \backgroundR[0]~1_combout\);

-- Location: LCCOMB_X41_Y43_N14
\keycode[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keycode[0]~0_combout\ = (\kbIn|datafetched~q\ & ((!\Equal0~1_combout\) # (!\Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \kbIn|datafetched~q\,
	datac => \Equal0~0_combout\,
	datad => \Equal0~1_combout\,
	combout => \keycode[0]~0_combout\);

-- Location: FF_X42_Y41_N5
\keycode[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(5),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \keycode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => keycode(5));

-- Location: FF_X41_Y41_N29
\keycode[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(4),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \keycode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => keycode(4));

-- Location: FF_X40_Y41_N13
\keycode[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(2),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \keycode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => keycode(2));

-- Location: FF_X41_Y41_N9
\keycode[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \keycode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => keycode(3));

-- Location: FF_X41_Y41_N31
\keycode[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(0),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \keycode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => keycode(0));

-- Location: FF_X41_Y41_N23
\keycode[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(1),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \keycode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => keycode(1));

-- Location: LCCOMB_X40_Y41_N30
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (keycode(2) & (!keycode(1) & ((keycode(3)) # (keycode(0))))) # (!keycode(2) & (keycode(3) & ((keycode(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(2),
	datab => keycode(3),
	datac => keycode(0),
	datad => keycode(1),
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X40_Y41_N28
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (keycode(2) & (!keycode(3) & (!keycode(0) & !keycode(1)))) # (!keycode(2) & (keycode(0) & ((!keycode(1)) # (!keycode(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(2),
	datab => keycode(3),
	datac => keycode(0),
	datad => keycode(1),
	combout => \WideOr0~1_combout\);

-- Location: LCCOMB_X39_Y41_N8
\WideOr0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~2_combout\ = (keycode(5) & (!keycode(4) & (!\WideOr0~0_combout\ & \WideOr0~1_combout\))) # (!keycode(5) & (keycode(4) & (\WideOr0~0_combout\ & !\WideOr0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(5),
	datab => keycode(4),
	datac => \WideOr0~0_combout\,
	datad => \WideOr0~1_combout\,
	combout => \WideOr0~2_combout\);

-- Location: FF_X41_Y41_N13
\keycode[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(7),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \keycode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => keycode(7));

-- Location: FF_X41_Y41_N27
\keycode[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	asdata => \kbIn|rxdata\(6),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \keycode[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => keycode(6));

-- Location: LCCOMB_X38_Y45_N0
\counter[0]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~64_combout\ = counter(0) $ (VCC)
-- \counter[0]~65\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => counter(0),
	datad => VCC,
	combout => \counter[0]~64_combout\,
	cout => \counter[0]~65\);

-- Location: LCCOMB_X41_Y41_N24
\WideOr0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~3_combout\ = (!keycode(6) & !keycode(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => keycode(6),
	datad => keycode(7),
	combout => \WideOr0~3_combout\);

-- Location: LCCOMB_X39_Y41_N10
\prev_writey[7]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writey[7]~3_combout\ = !writey(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writey(7),
	combout => \prev_writey[7]~3_combout\);

-- Location: FF_X39_Y41_N11
\prev_writey[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writey[7]~3_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(7));

-- Location: LCCOMB_X43_Y41_N28
\prev_writey[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writey[9]~feeder_combout\ = writey(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writey(9),
	combout => \prev_writey[9]~feeder_combout\);

-- Location: FF_X43_Y41_N29
\prev_writey[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writey[9]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(9));

-- Location: LCCOMB_X39_Y42_N26
\Add4~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~16_combout\ = (writey(8) & (\Add4~15\ $ (GND))) # (!writey(8) & (!\Add4~15\ & VCC))
-- \Add4~17\ = CARRY((writey(8) & !\Add4~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(8),
	datad => VCC,
	cin => \Add4~15\,
	combout => \Add4~16_combout\,
	cout => \Add4~17\);

-- Location: LCCOMB_X39_Y42_N28
\Add4~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~18_combout\ = \Add4~17\ $ (writey(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => writey(9),
	cin => \Add4~17\,
	combout => \Add4~18_combout\);

-- Location: LCCOMB_X43_Y41_N6
\writey[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[9]~19_combout\ = (\LessThan1~0_combout\ & ((\Add4~18_combout\))) # (!\LessThan1~0_combout\ & (prev_writey(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_writey(9),
	datab => \Add4~18_combout\,
	datad => \LessThan1~0_combout\,
	combout => \writey[9]~19_combout\);

-- Location: FF_X42_Y41_N31
\prev_writey[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writey(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(3));

-- Location: FF_X42_Y41_N7
\prev_writey[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writey(2),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(2));

-- Location: LCCOMB_X39_Y41_N18
\prev_writey[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writey[1]~feeder_combout\ = writey(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writey(1),
	combout => \prev_writey[1]~feeder_combout\);

-- Location: FF_X39_Y41_N19
\prev_writey[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writey[1]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(1));

-- Location: LCCOMB_X39_Y41_N16
\prev_writey[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writey[0]~feeder_combout\ = writey(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writey(0),
	combout => \prev_writey[0]~feeder_combout\);

-- Location: FF_X39_Y41_N17
\prev_writey[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writey[0]~feeder_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(0));

-- Location: LCCOMB_X39_Y42_N10
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = writey(0) $ (VCC)
-- \Add4~1\ = CARRY(writey(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(0),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X38_Y41_N12
\writey[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[0]~10_combout\ = (\LessThan1~0_combout\ & ((\Add4~0_combout\))) # (!\LessThan1~0_combout\ & (prev_writey(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_writey(0),
	datab => \LessThan1~0_combout\,
	datad => \Add4~0_combout\,
	combout => \writey[0]~10_combout\);

-- Location: LCCOMB_X40_Y41_N4
\always2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~11_combout\ = (writey(1)) # ((writey(7)) # ((writey(0)) # (writey(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(1),
	datab => writey(7),
	datac => writey(0),
	datad => writey(6),
	combout => \always2~11_combout\);

-- Location: LCCOMB_X40_Y41_N18
\always2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~12_combout\ = (writey(5)) # ((writey(8)) # ((writey(9)) # (writey(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => writey(8),
	datac => writey(9),
	datad => writey(2),
	combout => \always2~12_combout\);

-- Location: LCCOMB_X40_Y41_N24
\always2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~13_combout\ = (writey(4)) # ((writey(3)) # (\always2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(4),
	datac => writey(3),
	datad => \always2~12_combout\,
	combout => \always2~13_combout\);

-- Location: LCCOMB_X40_Y41_N6
\always2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~14_combout\ = (keycode(2) & (!keycode(1) & ((\always2~11_combout\) # (\always2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(2),
	datab => keycode(1),
	datac => \always2~11_combout\,
	datad => \always2~13_combout\,
	combout => \always2~14_combout\);

-- Location: LCCOMB_X40_Y41_N0
\always2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~16_combout\ = (keycode(0) & (!keycode(5) & keycode(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(0),
	datac => keycode(5),
	datad => keycode(4),
	combout => \always2~16_combout\);

-- Location: LCCOMB_X41_Y41_N12
\always2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~15_combout\ = (!keycode(6) & (!keycode(7) & !keycode(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(6),
	datac => keycode(7),
	datad => keycode(3),
	combout => \always2~15_combout\);

-- Location: LCCOMB_X42_Y42_N4
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (writex(9) & ((writex(7)) # (writex(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(7),
	datac => writex(8),
	datad => writex(9),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X40_Y42_N30
\LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = (writey(7) & (writey(6) & writey(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(7),
	datab => writey(6),
	datad => writey(8),
	combout => \LessThan6~0_combout\);

-- Location: FF_X39_Y43_N15
\prev_writex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writex(5),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(5));

-- Location: LCCOMB_X39_Y43_N14
\writex~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~52_combout\ = (prev_writex(5) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => \LessThan6~0_combout\,
	datac => prev_writex(5),
	datad => writey(9),
	combout => \writex~52_combout\);

-- Location: FF_X39_Y43_N13
\prev_writex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writex(4),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(4));

-- Location: LCCOMB_X39_Y43_N12
\writex~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~47_combout\ = (prev_writex(4) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => \LessThan6~0_combout\,
	datac => prev_writex(4),
	datad => writey(9),
	combout => \writex~47_combout\);

-- Location: FF_X38_Y42_N1
\prev_writex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writex(1),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(1));

-- Location: LCCOMB_X38_Y42_N0
\writex~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~32_combout\ = (prev_writex(1) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => writey(9),
	datac => prev_writex(1),
	datad => \LessThan6~0_combout\,
	combout => \writex~32_combout\);

-- Location: LCCOMB_X42_Y43_N0
\Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~0_combout\ = writex(0) $ (VCC)
-- \Add3~1\ = CARRY(writex(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(0),
	datad => VCC,
	combout => \Add3~0_combout\,
	cout => \Add3~1\);

-- Location: FF_X38_Y42_N23
\prev_writex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writex(0),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(0));

-- Location: LCCOMB_X38_Y42_N22
\writex~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~20_combout\ = (prev_writex(0) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => writey(9),
	datac => prev_writex(0),
	datad => \LessThan6~0_combout\,
	combout => \writex~20_combout\);

-- Location: LCCOMB_X41_Y42_N24
\writex[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[0]~10_combout\ = (\LessThan0~0_combout\ & ((\writex~20_combout\))) # (!\LessThan0~0_combout\ & (\Add3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add3~0_combout\,
	datad => \writex~20_combout\,
	combout => \writex[0]~10_combout\);

-- Location: LCCOMB_X41_Y41_N10
\always2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~4_combout\ = (keycode(3) & (!keycode(5) & (keycode(4) & \WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(3),
	datab => keycode(5),
	datac => keycode(4),
	datad => \WideOr0~3_combout\,
	combout => \always2~4_combout\);

-- Location: LCCOMB_X40_Y43_N20
\LessThan4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~1_combout\ = (writex(4)) # ((writex(6)) # ((writex(3)) # (writex(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(4),
	datab => writex(6),
	datac => writex(3),
	datad => writex(5),
	combout => \LessThan4~1_combout\);

-- Location: LCCOMB_X41_Y40_N6
\LessThan4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~0_combout\ = (writex(8)) # ((writex(7)) # ((writex(2)) # (writex(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(8),
	datab => writex(7),
	datac => writex(2),
	datad => writex(1),
	combout => \LessThan4~0_combout\);

-- Location: LCCOMB_X41_Y40_N0
\always2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~3_combout\ = (!keycode(0) & ((\LessThan4~1_combout\) # ((writex(9)) # (\LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~1_combout\,
	datab => writex(9),
	datac => keycode(0),
	datad => \LessThan4~0_combout\,
	combout => \always2~3_combout\);

-- Location: LCCOMB_X40_Y41_N14
\always2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~5_combout\ = (keycode(2) & (!keycode(1) & (\always2~4_combout\ & \always2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(2),
	datab => keycode(1),
	datac => \always2~4_combout\,
	datad => \always2~3_combout\,
	combout => \always2~5_combout\);

-- Location: LCCOMB_X41_Y41_N30
\always2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~18_combout\ = (!keycode(4) & (!keycode(0) & keycode(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(4),
	datac => keycode(0),
	datad => keycode(5),
	combout => \always2~18_combout\);

-- Location: LCCOMB_X41_Y43_N2
\LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = (((!writex(1)) # (!writex(4))) # (!writex(2))) # (!writex(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(3),
	datab => writex(2),
	datac => writex(4),
	datad => writex(1),
	combout => \LessThan5~0_combout\);

-- Location: LCCOMB_X41_Y43_N28
\LessThan5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = (writex(5) & (writex(6) & !\LessThan5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(5),
	datac => writex(6),
	datad => \LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LCCOMB_X41_Y41_N18
\LessThan5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan5~2_combout\ = ((!writex(7) & (!writex(8) & !\LessThan5~1_combout\))) # (!writex(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(9),
	datab => writex(7),
	datac => writex(8),
	datad => \LessThan5~1_combout\,
	combout => \LessThan5~2_combout\);

-- Location: LCCOMB_X41_Y41_N16
\always2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~19_combout\ = (\always2~18_combout\ & (\always2~15_combout\ & (\always2~14_combout\ & \LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~18_combout\,
	datab => \always2~15_combout\,
	datac => \always2~14_combout\,
	datad => \LessThan5~2_combout\,
	combout => \always2~19_combout\);

-- Location: LCCOMB_X42_Y41_N30
\LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~1_combout\ = (!writey(5) & (((!writey(1)) # (!writey(3))) # (!writey(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => writey(2),
	datac => writey(3),
	datad => writey(1),
	combout => \LessThan6~1_combout\);

-- Location: LCCOMB_X43_Y41_N16
\LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan6~2_combout\ = (!writey(5) & ((!writey(0)) # (!writey(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => writey(4),
	datac => writey(5),
	datad => writey(0),
	combout => \LessThan6~2_combout\);

-- Location: LCCOMB_X42_Y41_N28
\always2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~7_combout\ = (!writey(9) & (((\LessThan6~1_combout\) # (\LessThan6~2_combout\)) # (!\LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(9),
	datab => \LessThan6~0_combout\,
	datac => \LessThan6~1_combout\,
	datad => \LessThan6~2_combout\,
	combout => \always2~7_combout\);

-- Location: LCCOMB_X41_Y41_N28
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (!keycode(2) & (keycode(0) & (!keycode(4) & keycode(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(2),
	datab => keycode(0),
	datac => keycode(4),
	datad => keycode(5),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X41_Y41_N6
\always2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~20_combout\ = (!keycode(3) & (\Decoder1~0_combout\ & (\WideOr0~3_combout\ & \LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(3),
	datab => \Decoder1~0_combout\,
	datac => \WideOr0~3_combout\,
	datad => \LessThan5~2_combout\,
	combout => \always2~20_combout\);

-- Location: LCCOMB_X41_Y41_N26
\always2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~6_combout\ = (keycode(1) & !keycode(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(1),
	datad => keycode(2),
	combout => \always2~6_combout\);

-- Location: LCCOMB_X42_Y41_N4
\always2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~8_combout\ = (keycode(3) & (keycode(4) & (!keycode(5) & \always2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(3),
	datab => keycode(4),
	datac => keycode(5),
	datad => \always2~7_combout\,
	combout => \always2~8_combout\);

-- Location: LCCOMB_X42_Y41_N26
\always2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~9_combout\ = (\always2~6_combout\ & (\WideOr0~3_combout\ & (\always2~8_combout\ & \always2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~6_combout\,
	datab => \WideOr0~3_combout\,
	datac => \always2~8_combout\,
	datad => \always2~3_combout\,
	combout => \always2~9_combout\);

-- Location: LCCOMB_X41_Y43_N0
\writex~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~27_combout\ = (!keycode(1) & (\always2~7_combout\ & (\always2~20_combout\ & !\always2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(1),
	datab => \always2~7_combout\,
	datac => \always2~20_combout\,
	datad => \always2~9_combout\,
	combout => \writex~27_combout\);

-- Location: LCCOMB_X41_Y43_N30
\writex~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~28_combout\ = (!\always2~5_combout\ & (!\always2~17_combout\ & ((\always2~19_combout\) # (\writex~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~5_combout\,
	datab => \always2~19_combout\,
	datac => \always2~17_combout\,
	datad => \writex~27_combout\,
	combout => \writex~28_combout\);

-- Location: LCCOMB_X42_Y42_N12
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = writex(0) $ (VCC)
-- \Add2~1\ = CARRY(writex(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => writex(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X41_Y41_N8
\always2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~1_combout\ = (!keycode(6) & (!keycode(7) & (!keycode(3) & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(6),
	datab => keycode(7),
	datac => keycode(3),
	datad => \Decoder1~0_combout\,
	combout => \always2~1_combout\);

-- Location: LCCOMB_X41_Y41_N20
\always2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~2_combout\ = (keycode(1) & (\always2~1_combout\ & \LessThan5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(1),
	datac => \always2~1_combout\,
	datad => \LessThan5~2_combout\,
	combout => \always2~2_combout\);

-- Location: LCCOMB_X40_Y41_N10
\writex~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~25_combout\ = (!\always2~2_combout\ & ((\always2~17_combout\) # ((!\always2~19_combout\ & \always2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~17_combout\,
	datab => \always2~19_combout\,
	datac => \always2~2_combout\,
	datad => \always2~9_combout\,
	combout => \writex~25_combout\);

-- Location: LCCOMB_X41_Y42_N14
\writex~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~26_combout\ = (\Add2~0_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \writex~25_combout\,
	combout => \writex~26_combout\);

-- Location: LCCOMB_X41_Y42_N6
\writex~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~21_combout\ = (\always2~5_combout\ & (\Add2~0_combout\)) # (!\always2~5_combout\ & (((\Add3~0_combout\ & \always2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add3~0_combout\,
	datac => \always2~2_combout\,
	datad => \always2~5_combout\,
	combout => \writex~21_combout\);

-- Location: LCCOMB_X40_Y41_N16
\writex~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~23_combout\ = (!\always2~17_combout\ & (!\always2~5_combout\ & !\always2~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~17_combout\,
	datab => \always2~5_combout\,
	datad => \always2~19_combout\,
	combout => \writex~23_combout\);

-- Location: LCCOMB_X41_Y41_N22
\Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (\WideOr0~3_combout\ & (\Decoder1~0_combout\ & (!keycode(1) & keycode(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~3_combout\,
	datab => \Decoder1~0_combout\,
	datac => keycode(1),
	datad => keycode(3),
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X41_Y41_N4
\always2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~10_combout\ = (!keycode(1) & (\always2~7_combout\ & (\always2~1_combout\ & \LessThan5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(1),
	datab => \always2~7_combout\,
	datac => \always2~1_combout\,
	datad => \LessThan5~2_combout\,
	combout => \always2~10_combout\);

-- Location: LCCOMB_X41_Y41_N14
\writex~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~22_combout\ = (!\Decoder1~1_combout\ & (!\always2~2_combout\ & (!\always2~10_combout\ & !\always2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~1_combout\,
	datab => \always2~2_combout\,
	datac => \always2~10_combout\,
	datad => \always2~9_combout\,
	combout => \writex~22_combout\);

-- Location: LCCOMB_X41_Y42_N12
\writex~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~24_combout\ = (\writex~21_combout\) # ((writex(0) & (\writex~23_combout\ & \writex~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~21_combout\,
	datab => writex(0),
	datac => \writex~23_combout\,
	datad => \writex~22_combout\,
	combout => \writex~24_combout\);

-- Location: LCCOMB_X41_Y42_N8
\writex~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~29_combout\ = (\writex~26_combout\) # ((\writex~24_combout\) # ((\writex~28_combout\ & \Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~28_combout\,
	datab => \Add3~0_combout\,
	datac => \writex~26_combout\,
	datad => \writex~24_combout\,
	combout => \writex~29_combout\);

-- Location: LCCOMB_X40_Y41_N20
\always2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~22_combout\ = (keycode(0) & (\always2~4_combout\ & \always2~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(0),
	datac => \always2~4_combout\,
	datad => \always2~14_combout\,
	combout => \always2~22_combout\);

-- Location: LCCOMB_X41_Y41_N0
\always2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~21_combout\ = (\always2~4_combout\ & (\always2~7_combout\ & (\always2~6_combout\ & keycode(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => \always2~7_combout\,
	datac => \always2~6_combout\,
	datad => keycode(0),
	combout => \always2~21_combout\);

-- Location: LCCOMB_X39_Y41_N30
\writex~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~31_combout\ = ((!\always2~22_combout\ & (!\always2~21_combout\ & \writex~30_combout\))) # (!\resetram~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~22_combout\,
	datab => \resetram~q\,
	datac => \always2~21_combout\,
	datad => \writex~30_combout\,
	combout => \writex~31_combout\);

-- Location: FF_X41_Y42_N25
\writex[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[0]~10_combout\,
	asdata => \writex~29_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(0));

-- Location: LCCOMB_X42_Y43_N2
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (writex(1) & (!\Add3~1\)) # (!writex(1) & ((\Add3~1\) # (GND)))
-- \Add3~3\ = CARRY((!\Add3~1\) # (!writex(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writex(1),
	datad => VCC,
	cin => \Add3~1\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X41_Y42_N2
\writex[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[1]~11_combout\ = (\LessThan0~0_combout\ & (\writex~32_combout\)) # (!\LessThan0~0_combout\ & ((\Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~32_combout\,
	datab => \LessThan0~0_combout\,
	datad => \Add3~2_combout\,
	combout => \writex[1]~11_combout\);

-- Location: LCCOMB_X42_Y42_N14
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (writex(1) & (\Add2~1\ & VCC)) # (!writex(1) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!writex(1) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writex(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X41_Y42_N22
\writex~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~35_combout\ = (\Add2~2_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	datad => \writex~25_combout\,
	combout => \writex~35_combout\);

-- Location: LCCOMB_X41_Y42_N30
\writex~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~33_combout\ = (\always2~5_combout\ & (((\Add2~2_combout\)))) # (!\always2~5_combout\ & (\Add3~2_combout\ & ((\always2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~5_combout\,
	datab => \Add3~2_combout\,
	datac => \Add2~2_combout\,
	datad => \always2~2_combout\,
	combout => \writex~33_combout\);

-- Location: LCCOMB_X41_Y42_N28
\writex~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~34_combout\ = (\writex~33_combout\) # ((\writex~23_combout\ & (writex(1) & \writex~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~23_combout\,
	datab => writex(1),
	datac => \writex~33_combout\,
	datad => \writex~22_combout\,
	combout => \writex~34_combout\);

-- Location: LCCOMB_X41_Y42_N20
\writex~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~36_combout\ = (\writex~35_combout\) # ((\writex~34_combout\) # ((\writex~28_combout\ & \Add3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~28_combout\,
	datab => \Add3~2_combout\,
	datac => \writex~35_combout\,
	datad => \writex~34_combout\,
	combout => \writex~36_combout\);

-- Location: FF_X41_Y42_N3
\writex[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[1]~11_combout\,
	asdata => \writex~36_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(1));

-- Location: LCCOMB_X42_Y43_N4
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (writex(2) & (\Add3~3\ $ (GND))) # (!writex(2) & (!\Add3~3\ & VCC))
-- \Add3~5\ = CARRY((writex(2) & !\Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writex(2),
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: FF_X42_Y43_N15
\prev_writex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writex(2),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(2));

-- Location: LCCOMB_X43_Y43_N4
\writex~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~37_combout\ = (prev_writex(2) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => writey(9),
	datac => \LessThan6~0_combout\,
	datad => prev_writex(2),
	combout => \writex~37_combout\);

-- Location: LCCOMB_X41_Y42_N0
\writex[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[2]~12_combout\ = (\LessThan0~0_combout\ & ((\writex~37_combout\))) # (!\LessThan0~0_combout\ & (\Add3~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \LessThan0~0_combout\,
	datad => \writex~37_combout\,
	combout => \writex[2]~12_combout\);

-- Location: LCCOMB_X42_Y42_N16
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (writex(2) & ((GND) # (!\Add2~3\))) # (!writex(2) & (\Add2~3\ $ (GND)))
-- \Add2~5\ = CARRY((writex(2)) # (!\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writex(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X41_Y42_N26
\writex~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~38_combout\ = (\always2~5_combout\ & (((\Add2~4_combout\)))) # (!\always2~5_combout\ & (\Add3~4_combout\ & ((\always2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \Add2~4_combout\,
	datac => \always2~2_combout\,
	datad => \always2~5_combout\,
	combout => \writex~38_combout\);

-- Location: LCCOMB_X41_Y42_N16
\writex~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~39_combout\ = (\writex~38_combout\) # ((\writex~23_combout\ & (writex(2) & \writex~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~23_combout\,
	datab => writex(2),
	datac => \writex~38_combout\,
	datad => \writex~22_combout\,
	combout => \writex~39_combout\);

-- Location: LCCOMB_X41_Y42_N18
\writex~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~40_combout\ = (\Add2~4_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~4_combout\,
	datad => \writex~25_combout\,
	combout => \writex~40_combout\);

-- Location: LCCOMB_X41_Y42_N4
\writex~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~41_combout\ = (\writex~39_combout\) # ((\writex~40_combout\) # ((\Add3~4_combout\ & \writex~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~4_combout\,
	datab => \writex~39_combout\,
	datac => \writex~28_combout\,
	datad => \writex~40_combout\,
	combout => \writex~41_combout\);

-- Location: FF_X41_Y42_N1
\writex[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[2]~12_combout\,
	asdata => \writex~41_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(2));

-- Location: LCCOMB_X42_Y43_N6
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (writex(3) & (!\Add3~5\)) # (!writex(3) & ((\Add3~5\) # (GND)))
-- \Add3~7\ = CARRY((!\Add3~5\) # (!writex(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writex(3),
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: FF_X39_Y43_N3
\prev_writex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writex(3),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(3));

-- Location: LCCOMB_X43_Y43_N18
\writex~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~42_combout\ = (prev_writex(3) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => writey(9),
	datac => prev_writex(3),
	datad => \LessThan6~0_combout\,
	combout => \writex~42_combout\);

-- Location: LCCOMB_X40_Y43_N0
\writex[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[3]~13_combout\ = (\LessThan0~0_combout\ & ((\writex~42_combout\))) # (!\LessThan0~0_combout\ & (\Add3~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add3~6_combout\,
	datad => \writex~42_combout\,
	combout => \writex[3]~13_combout\);

-- Location: LCCOMB_X42_Y42_N18
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (writex(3) & (\Add2~5\ & VCC)) # (!writex(3) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!writex(3) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writex(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X40_Y43_N18
\writex~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~43_combout\ = (\always2~5_combout\ & (((\Add2~6_combout\)))) # (!\always2~5_combout\ & (\always2~2_combout\ & ((\Add3~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~5_combout\,
	datab => \always2~2_combout\,
	datac => \Add2~6_combout\,
	datad => \Add3~6_combout\,
	combout => \writex~43_combout\);

-- Location: LCCOMB_X40_Y43_N4
\writex~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~44_combout\ = (\writex~43_combout\) # ((writex(3) & (\writex~22_combout\ & \writex~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(3),
	datab => \writex~43_combout\,
	datac => \writex~22_combout\,
	datad => \writex~23_combout\,
	combout => \writex~44_combout\);

-- Location: LCCOMB_X40_Y43_N10
\writex~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~45_combout\ = (\Add2~6_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~6_combout\,
	datad => \writex~25_combout\,
	combout => \writex~45_combout\);

-- Location: LCCOMB_X40_Y43_N8
\writex~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~46_combout\ = (\writex~44_combout\) # ((\writex~45_combout\) # ((\writex~28_combout\ & \Add3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~28_combout\,
	datab => \Add3~6_combout\,
	datac => \writex~44_combout\,
	datad => \writex~45_combout\,
	combout => \writex~46_combout\);

-- Location: FF_X40_Y43_N1
\writex[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[3]~13_combout\,
	asdata => \writex~46_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(3));

-- Location: LCCOMB_X42_Y43_N8
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (writex(4) & (\Add3~7\ $ (GND))) # (!writex(4) & (!\Add3~7\ & VCC))
-- \Add3~9\ = CARRY((writex(4) & !\Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writex(4),
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X40_Y43_N6
\writex[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[4]~14_combout\ = (\LessThan0~0_combout\ & (\writex~47_combout\)) # (!\LessThan0~0_combout\ & ((\Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~47_combout\,
	datab => \LessThan0~0_combout\,
	datad => \Add3~8_combout\,
	combout => \writex[4]~14_combout\);

-- Location: LCCOMB_X42_Y42_N20
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (writex(4) & ((GND) # (!\Add2~7\))) # (!writex(4) & (\Add2~7\ $ (GND)))
-- \Add2~9\ = CARRY((writex(4)) # (!\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writex(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X41_Y43_N12
\writex~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~48_combout\ = (\always2~5_combout\ & (((\Add2~8_combout\)))) # (!\always2~5_combout\ & (\Add3~8_combout\ & ((\always2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datab => \Add2~8_combout\,
	datac => \always2~2_combout\,
	datad => \always2~5_combout\,
	combout => \writex~48_combout\);

-- Location: LCCOMB_X40_Y43_N30
\writex~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~49_combout\ = (\writex~48_combout\) # ((writex(4) & (\writex~22_combout\ & \writex~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(4),
	datab => \writex~48_combout\,
	datac => \writex~22_combout\,
	datad => \writex~23_combout\,
	combout => \writex~49_combout\);

-- Location: LCCOMB_X40_Y43_N16
\writex~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~50_combout\ = (\Add2~8_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datad => \writex~25_combout\,
	combout => \writex~50_combout\);

-- Location: LCCOMB_X40_Y43_N14
\writex~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~51_combout\ = (\writex~49_combout\) # ((\writex~50_combout\) # ((\writex~28_combout\ & \Add3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~28_combout\,
	datab => \Add3~8_combout\,
	datac => \writex~49_combout\,
	datad => \writex~50_combout\,
	combout => \writex~51_combout\);

-- Location: FF_X40_Y43_N7
\writex[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[4]~14_combout\,
	asdata => \writex~51_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(4));

-- Location: LCCOMB_X42_Y43_N10
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (writex(5) & (!\Add3~9\)) # (!writex(5) & ((\Add3~9\) # (GND)))
-- \Add3~11\ = CARRY((!\Add3~9\) # (!writex(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writex(5),
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X40_Y43_N12
\writex[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[5]~15_combout\ = (\LessThan0~0_combout\ & (\writex~52_combout\)) # (!\LessThan0~0_combout\ & ((\Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~52_combout\,
	datab => \LessThan0~0_combout\,
	datad => \Add3~10_combout\,
	combout => \writex[5]~15_combout\);

-- Location: LCCOMB_X42_Y42_N22
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (writex(5) & (\Add2~9\ & VCC)) # (!writex(5) & (!\Add2~9\))
-- \Add2~11\ = CARRY((!writex(5) & !\Add2~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writex(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X40_Y43_N28
\writex~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~53_combout\ = (\always2~5_combout\ & (\Add2~10_combout\)) # (!\always2~5_combout\ & (((\always2~2_combout\ & \Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~5_combout\,
	datab => \Add2~10_combout\,
	datac => \always2~2_combout\,
	datad => \Add3~10_combout\,
	combout => \writex~53_combout\);

-- Location: LCCOMB_X40_Y43_N26
\writex~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~54_combout\ = (\writex~53_combout\) # ((\writex~23_combout\ & (writex(5) & \writex~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~23_combout\,
	datab => \writex~53_combout\,
	datac => writex(5),
	datad => \writex~22_combout\,
	combout => \writex~54_combout\);

-- Location: LCCOMB_X40_Y43_N24
\writex~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~55_combout\ = (\Add2~10_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~10_combout\,
	datad => \writex~25_combout\,
	combout => \writex~55_combout\);

-- Location: LCCOMB_X40_Y43_N22
\writex~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~56_combout\ = (\writex~54_combout\) # ((\writex~55_combout\) # ((\writex~28_combout\ & \Add3~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~28_combout\,
	datab => \Add3~10_combout\,
	datac => \writex~54_combout\,
	datad => \writex~55_combout\,
	combout => \writex~56_combout\);

-- Location: FF_X40_Y43_N13
\writex[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[5]~15_combout\,
	asdata => \writex~56_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(5));

-- Location: LCCOMB_X42_Y43_N12
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (writex(6) & (\Add3~11\ $ (GND))) # (!writex(6) & (!\Add3~11\ & VCC))
-- \Add3~13\ = CARRY((writex(6) & !\Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writex(6),
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X42_Y43_N20
\prev_writex[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writex[6]~0_combout\ = !writex(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writex(6),
	combout => \prev_writex[6]~0_combout\);

-- Location: FF_X42_Y43_N21
\prev_writex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writex[6]~0_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(6));

-- Location: LCCOMB_X43_Y43_N16
\writex~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~57_combout\ = (!prev_writex(6) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => writey(9),
	datac => prev_writex(6),
	datad => \LessThan6~0_combout\,
	combout => \writex~57_combout\);

-- Location: LCCOMB_X40_Y43_N2
\writex[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[6]~16_combout\ = (\LessThan0~0_combout\ & ((\writex~57_combout\))) # (!\LessThan0~0_combout\ & (\Add3~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => \LessThan0~0_combout\,
	datad => \writex~57_combout\,
	combout => \writex[6]~16_combout\);

-- Location: LCCOMB_X42_Y42_N24
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (writex(6) & ((GND) # (!\Add2~11\))) # (!writex(6) & (\Add2~11\ $ (GND)))
-- \Add2~13\ = CARRY((writex(6)) # (!\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writex(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X41_Y43_N26
\writex~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~58_combout\ = (\always2~5_combout\ & (\Add2~12_combout\)) # (!\always2~5_combout\ & (((\Add3~12_combout\ & \always2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \Add3~12_combout\,
	datac => \always2~2_combout\,
	datad => \always2~5_combout\,
	combout => \writex~58_combout\);

-- Location: LCCOMB_X41_Y43_N4
\writex~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~59_combout\ = (\writex~58_combout\) # ((writex(6) & (\writex~22_combout\ & \writex~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~58_combout\,
	datab => writex(6),
	datac => \writex~22_combout\,
	datad => \writex~23_combout\,
	combout => \writex~59_combout\);

-- Location: LCCOMB_X41_Y43_N6
\writex~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~60_combout\ = (\Add2~12_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~12_combout\,
	datad => \writex~25_combout\,
	combout => \writex~60_combout\);

-- Location: LCCOMB_X41_Y43_N8
\writex~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~61_combout\ = (\writex~59_combout\) # ((\writex~60_combout\) # ((\writex~28_combout\ & \Add3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~28_combout\,
	datab => \Add3~12_combout\,
	datac => \writex~59_combout\,
	datad => \writex~60_combout\,
	combout => \writex~61_combout\);

-- Location: FF_X40_Y43_N3
\writex[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[6]~16_combout\,
	asdata => \writex~61_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(6));

-- Location: LCCOMB_X42_Y43_N14
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (writex(7) & (!\Add3~13\)) # (!writex(7) & ((\Add3~13\) # (GND)))
-- \Add3~15\ = CARRY((!\Add3~13\) # (!writex(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writex(7),
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: FF_X39_Y43_N25
\prev_writex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writex(7),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(7));

-- Location: LCCOMB_X39_Y43_N24
\writex~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~62_combout\ = (prev_writex(7) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => \LessThan6~0_combout\,
	datac => prev_writex(7),
	datad => writey(9),
	combout => \writex~62_combout\);

-- Location: LCCOMB_X41_Y40_N16
\writex[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[7]~17_combout\ = (\LessThan0~0_combout\ & ((\writex~62_combout\))) # (!\LessThan0~0_combout\ & (\Add3~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Add3~14_combout\,
	datad => \writex~62_combout\,
	combout => \writex[7]~17_combout\);

-- Location: LCCOMB_X42_Y42_N26
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (writex(7) & (\Add2~13\ & VCC)) # (!writex(7) & (!\Add2~13\))
-- \Add2~15\ = CARRY((!writex(7) & !\Add2~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writex(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X41_Y40_N10
\writex~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~63_combout\ = (\always2~5_combout\ & (((\Add2~14_combout\)))) # (!\always2~5_combout\ & (\always2~2_combout\ & ((\Add3~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~2_combout\,
	datab => \Add2~14_combout\,
	datac => \Add3~14_combout\,
	datad => \always2~5_combout\,
	combout => \writex~63_combout\);

-- Location: LCCOMB_X41_Y40_N12
\writex~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~64_combout\ = (\writex~63_combout\) # ((writex(7) & (\writex~23_combout\ & \writex~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~63_combout\,
	datab => writex(7),
	datac => \writex~23_combout\,
	datad => \writex~22_combout\,
	combout => \writex~64_combout\);

-- Location: LCCOMB_X41_Y40_N30
\writex~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~65_combout\ = (\Add2~14_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~14_combout\,
	datad => \writex~25_combout\,
	combout => \writex~65_combout\);

-- Location: LCCOMB_X41_Y40_N4
\writex~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~66_combout\ = (\writex~64_combout\) # ((\writex~65_combout\) # ((\Add3~14_combout\ & \writex~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~64_combout\,
	datab => \Add3~14_combout\,
	datac => \writex~65_combout\,
	datad => \writex~28_combout\,
	combout => \writex~66_combout\);

-- Location: FF_X41_Y40_N17
\writex[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[7]~17_combout\,
	asdata => \writex~66_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(7));

-- Location: LCCOMB_X42_Y43_N16
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (writex(8) & (\Add3~15\ $ (GND))) # (!writex(8) & (!\Add3~15\ & VCC))
-- \Add3~17\ = CARRY((writex(8) & !\Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writex(8),
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X42_Y43_N22
\prev_writex[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writex[8]~1_combout\ = !writex(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writex(8),
	combout => \prev_writex[8]~1_combout\);

-- Location: FF_X42_Y43_N23
\prev_writex[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writex[8]~1_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(8));

-- Location: LCCOMB_X43_Y43_N6
\writex~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~67_combout\ = (!prev_writex(8) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => prev_writex(8),
	datac => \LessThan6~0_combout\,
	datad => writey(9),
	combout => \writex~67_combout\);

-- Location: LCCOMB_X41_Y40_N18
\writex[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[8]~18_combout\ = (\LessThan0~0_combout\ & ((\writex~67_combout\))) # (!\LessThan0~0_combout\ & (\Add3~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \writex~67_combout\,
	datad => \LessThan0~0_combout\,
	combout => \writex[8]~18_combout\);

-- Location: LCCOMB_X42_Y42_N28
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (writex(8) & ((GND) # (!\Add2~15\))) # (!writex(8) & (\Add2~15\ $ (GND)))
-- \Add2~17\ = CARRY((writex(8)) # (!\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writex(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X41_Y40_N2
\writex~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~68_combout\ = (\always2~5_combout\ & (((\Add2~16_combout\)))) # (!\always2~5_combout\ & (\always2~2_combout\ & ((\Add3~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~2_combout\,
	datab => \always2~5_combout\,
	datac => \Add2~16_combout\,
	datad => \Add3~16_combout\,
	combout => \writex~68_combout\);

-- Location: LCCOMB_X41_Y40_N24
\writex~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~69_combout\ = (\writex~68_combout\) # ((writex(8) & (\writex~23_combout\ & \writex~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(8),
	datab => \writex~68_combout\,
	datac => \writex~23_combout\,
	datad => \writex~22_combout\,
	combout => \writex~69_combout\);

-- Location: LCCOMB_X41_Y40_N26
\writex~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~70_combout\ = (\Add2~16_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datad => \writex~25_combout\,
	combout => \writex~70_combout\);

-- Location: LCCOMB_X41_Y40_N8
\writex~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~71_combout\ = (\writex~69_combout\) # ((\writex~70_combout\) # ((\Add3~16_combout\ & \writex~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~16_combout\,
	datab => \writex~69_combout\,
	datac => \writex~70_combout\,
	datad => \writex~28_combout\,
	combout => \writex~71_combout\);

-- Location: FF_X41_Y40_N19
\writex[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[8]~18_combout\,
	asdata => \writex~71_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(8));

-- Location: LCCOMB_X42_Y43_N18
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = \Add3~17\ $ (writex(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => writex(9),
	cin => \Add3~17\,
	combout => \Add3~18_combout\);

-- Location: FF_X39_Y43_N31
\prev_writex[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writex(9),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writex(9));

-- Location: LCCOMB_X43_Y43_N8
\writex~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~72_combout\ = (prev_writex(9) & ((writey(9)) # ((writey(5) & \LessThan6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => writey(9),
	datac => \LessThan6~0_combout\,
	datad => prev_writex(9),
	combout => \writex~72_combout\);

-- Location: LCCOMB_X41_Y40_N20
\writex[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex[9]~19_combout\ = (\LessThan0~0_combout\ & ((\writex~72_combout\))) # (!\LessThan0~0_combout\ & (\Add3~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => \writex~72_combout\,
	datad => \LessThan0~0_combout\,
	combout => \writex[9]~19_combout\);

-- Location: LCCOMB_X42_Y42_N30
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = \Add2~17\ $ (!writex(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => writex(9),
	cin => \Add2~17\,
	combout => \Add2~18_combout\);

-- Location: LCCOMB_X41_Y40_N28
\writex~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~75_combout\ = (\Add2~18_combout\ & \writex~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datad => \writex~25_combout\,
	combout => \writex~75_combout\);

-- Location: LCCOMB_X41_Y42_N10
\writex~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~73_combout\ = (\always2~5_combout\ & (\Add2~18_combout\)) # (!\always2~5_combout\ & (((\Add3~18_combout\ & \always2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add3~18_combout\,
	datac => \always2~2_combout\,
	datad => \always2~5_combout\,
	combout => \writex~73_combout\);

-- Location: LCCOMB_X41_Y40_N14
\writex~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~74_combout\ = (\writex~73_combout\) # ((writex(9) & (\writex~22_combout\ & \writex~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(9),
	datab => \writex~22_combout\,
	datac => \writex~23_combout\,
	datad => \writex~73_combout\,
	combout => \writex~74_combout\);

-- Location: LCCOMB_X41_Y40_N22
\writex~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~76_combout\ = (\writex~75_combout\) # ((\writex~74_combout\) # ((\Add3~18_combout\ & \writex~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~18_combout\,
	datab => \writex~75_combout\,
	datac => \writex~74_combout\,
	datad => \writex~28_combout\,
	combout => \writex~76_combout\);

-- Location: FF_X41_Y40_N21
\writex[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writex[9]~19_combout\,
	asdata => \writex~76_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writex~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writex(9));

-- Location: LCCOMB_X41_Y43_N18
\LessThan4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan4~2_combout\ = (writex(9)) # ((\LessThan4~1_combout\) # (\LessThan4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => writex(9),
	datac => \LessThan4~1_combout\,
	datad => \LessThan4~0_combout\,
	combout => \LessThan4~2_combout\);

-- Location: LCCOMB_X40_Y41_N22
\always2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~17_combout\ = (\always2~14_combout\ & (\always2~16_combout\ & (\always2~15_combout\ & \LessThan4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~14_combout\,
	datab => \always2~16_combout\,
	datac => \always2~15_combout\,
	datad => \LessThan4~2_combout\,
	combout => \always2~17_combout\);

-- Location: LCCOMB_X40_Y41_N12
\writey~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~28_combout\ = (!\always2~17_combout\ & (!\always2~22_combout\ & !\always2~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~17_combout\,
	datab => \always2~22_combout\,
	datad => \always2~19_combout\,
	combout => \writey~28_combout\);

-- Location: LCCOMB_X42_Y41_N6
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = writey(0) $ (VCC)
-- \Add1~1\ = CARRY(writey(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => writey(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X40_Y41_N2
\writey~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~20_combout\ = (!\always2~21_combout\ & (!\always2~2_combout\ & ((\always2~17_combout\) # (\always2~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~17_combout\,
	datab => \always2~21_combout\,
	datac => \always2~2_combout\,
	datad => \always2~19_combout\,
	combout => \writey~20_combout\);

-- Location: LCCOMB_X40_Y41_N8
\writey~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~21_combout\ = (\Add1~0_combout\ & \writey~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \writey~20_combout\,
	combout => \writey~21_combout\);

-- Location: LCCOMB_X41_Y41_N2
\writey~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~23_combout\ = (\always2~2_combout\ & (((!\always2~14_combout\) # (!keycode(0))) # (!\always2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~4_combout\,
	datab => keycode(0),
	datac => \always2~14_combout\,
	datad => \always2~2_combout\,
	combout => \writey~23_combout\);

-- Location: LCCOMB_X40_Y41_N26
\writey~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~22_combout\ = (\always2~22_combout\ & (((\Add1~0_combout\)))) # (!\always2~22_combout\ & (\Add4~0_combout\ & ((\always2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \Add1~0_combout\,
	datac => \always2~21_combout\,
	datad => \always2~22_combout\,
	combout => \writey~22_combout\);

-- Location: LCCOMB_X38_Y41_N8
\writey~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~24_combout\ = (\writey~22_combout\) # ((\writey~23_combout\ & (!\always2~21_combout\ & writey(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~23_combout\,
	datab => \always2~21_combout\,
	datac => writey(0),
	datad => \writey~22_combout\,
	combout => \writey~24_combout\);

-- Location: LCCOMB_X42_Y41_N0
\writey~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~25_combout\ = (\always2~20_combout\ & (!keycode(1) & ((\always2~9_combout\) # (\always2~7_combout\)))) # (!\always2~20_combout\ & (\always2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~9_combout\,
	datab => \always2~7_combout\,
	datac => \always2~20_combout\,
	datad => keycode(1),
	combout => \writey~25_combout\);

-- Location: LCCOMB_X42_Y41_N2
\writey~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~26_combout\ = (!\always2~9_combout\ & (!\always2~10_combout\ & (!\always2~21_combout\ & !\Decoder1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~9_combout\,
	datab => \always2~10_combout\,
	datac => \always2~21_combout\,
	datad => \Decoder1~1_combout\,
	combout => \writey~26_combout\);

-- Location: LCCOMB_X38_Y41_N2
\writey~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~27_combout\ = (writey(0) & ((\writey~26_combout\) # ((\Add4~0_combout\ & \writey~25_combout\)))) # (!writey(0) & (\Add4~0_combout\ & (\writey~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(0),
	datab => \Add4~0_combout\,
	datac => \writey~25_combout\,
	datad => \writey~26_combout\,
	combout => \writey~27_combout\);

-- Location: LCCOMB_X38_Y41_N4
\writey~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~29_combout\ = (\writey~21_combout\) # ((\writey~24_combout\) # ((\writey~28_combout\ & \writey~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~28_combout\,
	datab => \writey~21_combout\,
	datac => \writey~24_combout\,
	datad => \writey~27_combout\,
	combout => \writey~29_combout\);

-- Location: LCCOMB_X38_Y41_N6
\writey~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~30_combout\ = (\resetram~q\ & (((\writex~30_combout\ & !\always2~5_combout\)))) # (!\resetram~q\ & (\LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \resetram~q\,
	datac => \writex~30_combout\,
	datad => \always2~5_combout\,
	combout => \writey~30_combout\);

-- Location: FF_X38_Y41_N13
\writey[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[0]~10_combout\,
	asdata => \writey~29_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(0));

-- Location: LCCOMB_X39_Y42_N12
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (writey(1) & (!\Add4~1\)) # (!writey(1) & ((\Add4~1\) # (GND)))
-- \Add4~3\ = CARRY((!\Add4~1\) # (!writey(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(1),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X38_Y41_N18
\writey[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[1]~11_combout\ = (\LessThan1~0_combout\ & ((\Add4~2_combout\))) # (!\LessThan1~0_combout\ & (prev_writey(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_writey(1),
	datab => \LessThan1~0_combout\,
	datad => \Add4~2_combout\,
	combout => \writey[1]~11_combout\);

-- Location: LCCOMB_X38_Y41_N0
\writey~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~34_combout\ = (writey(1) & ((\writey~26_combout\) # ((\Add4~2_combout\ & \writey~25_combout\)))) # (!writey(1) & (\Add4~2_combout\ & (\writey~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(1),
	datab => \Add4~2_combout\,
	datac => \writey~25_combout\,
	datad => \writey~26_combout\,
	combout => \writey~34_combout\);

-- Location: LCCOMB_X42_Y41_N8
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (writey(1) & (\Add1~1\ & VCC)) # (!writey(1) & (!\Add1~1\))
-- \Add1~3\ = CARRY((!writey(1) & !\Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writey(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X39_Y42_N0
\writey~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~32_combout\ = (\always2~22_combout\ & (((\Add1~2_combout\)))) # (!\always2~22_combout\ & (\Add4~2_combout\ & ((\always2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add1~2_combout\,
	datac => \always2~21_combout\,
	datad => \always2~22_combout\,
	combout => \writey~32_combout\);

-- Location: LCCOMB_X38_Y41_N30
\writey~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~33_combout\ = (\writey~32_combout\) # ((\writey~23_combout\ & (!\always2~21_combout\ & writey(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~23_combout\,
	datab => \always2~21_combout\,
	datac => \writey~32_combout\,
	datad => writey(1),
	combout => \writey~33_combout\);

-- Location: LCCOMB_X38_Y41_N20
\writey~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~31_combout\ = (\Add1~2_combout\ & \writey~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datac => \writey~20_combout\,
	combout => \writey~31_combout\);

-- Location: LCCOMB_X38_Y41_N22
\writey~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~35_combout\ = (\writey~33_combout\) # ((\writey~31_combout\) # ((\writey~28_combout\ & \writey~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~28_combout\,
	datab => \writey~34_combout\,
	datac => \writey~33_combout\,
	datad => \writey~31_combout\,
	combout => \writey~35_combout\);

-- Location: FF_X38_Y41_N19
\writey[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[1]~11_combout\,
	asdata => \writey~35_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(1));

-- Location: LCCOMB_X39_Y42_N14
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (writey(2) & (\Add4~3\ $ (GND))) # (!writey(2) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((writey(2) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(2),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X45_Y41_N0
\writey[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[2]~12_combout\ = (\LessThan1~0_combout\ & ((\Add4~4_combout\))) # (!\LessThan1~0_combout\ & (prev_writey(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_writey(2),
	datab => \LessThan1~0_combout\,
	datad => \Add4~4_combout\,
	combout => \writey[2]~12_combout\);

-- Location: LCCOMB_X42_Y41_N10
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (writey(2) & ((GND) # (!\Add1~3\))) # (!writey(2) & (\Add1~3\ $ (GND)))
-- \Add1~5\ = CARRY((writey(2)) # (!\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X45_Y41_N24
\writey~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~37_combout\ = (\always2~22_combout\ & (\Add1~4_combout\)) # (!\always2~22_combout\ & (((\always2~21_combout\ & \Add4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \always2~21_combout\,
	datac => \always2~22_combout\,
	datad => \Add4~4_combout\,
	combout => \writey~37_combout\);

-- Location: LCCOMB_X45_Y41_N26
\writey~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~38_combout\ = (\writey~37_combout\) # ((\writey~23_combout\ & (writey(2) & !\always2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~23_combout\,
	datab => writey(2),
	datac => \always2~21_combout\,
	datad => \writey~37_combout\,
	combout => \writey~38_combout\);

-- Location: LCCOMB_X45_Y41_N22
\writey~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~36_combout\ = (\Add1~4_combout\ & \writey~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~4_combout\,
	datad => \writey~20_combout\,
	combout => \writey~36_combout\);

-- Location: LCCOMB_X45_Y41_N28
\writey~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~39_combout\ = (writey(2) & ((\writey~26_combout\) # ((\Add4~4_combout\ & \writey~25_combout\)))) # (!writey(2) & (\Add4~4_combout\ & ((\writey~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(2),
	datab => \Add4~4_combout\,
	datac => \writey~26_combout\,
	datad => \writey~25_combout\,
	combout => \writey~39_combout\);

-- Location: LCCOMB_X45_Y41_N30
\writey~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~40_combout\ = (\writey~38_combout\) # ((\writey~36_combout\) # ((\writey~28_combout\ & \writey~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~38_combout\,
	datab => \writey~28_combout\,
	datac => \writey~36_combout\,
	datad => \writey~39_combout\,
	combout => \writey~40_combout\);

-- Location: FF_X45_Y41_N1
\writey[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[2]~12_combout\,
	asdata => \writey~40_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(2));

-- Location: LCCOMB_X39_Y42_N16
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (writey(3) & (!\Add4~5\)) # (!writey(3) & ((\Add4~5\) # (GND)))
-- \Add4~7\ = CARRY((!\Add4~5\) # (!writey(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writey(3),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X43_Y42_N0
\writey[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[3]~13_combout\ = (\LessThan1~0_combout\ & ((\Add4~6_combout\))) # (!\LessThan1~0_combout\ & (prev_writey(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_writey(3),
	datab => \LessThan1~0_combout\,
	datad => \Add4~6_combout\,
	combout => \writey[3]~13_combout\);

-- Location: LCCOMB_X42_Y41_N12
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (writey(3) & (\Add1~5\ & VCC)) # (!writey(3) & (!\Add1~5\))
-- \Add1~7\ = CARRY((!writey(3) & !\Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writey(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X43_Y42_N28
\writey~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~42_combout\ = (\always2~22_combout\ & (((\Add1~6_combout\)))) # (!\always2~22_combout\ & (\always2~21_combout\ & (\Add4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~21_combout\,
	datab => \Add4~6_combout\,
	datac => \Add1~6_combout\,
	datad => \always2~22_combout\,
	combout => \writey~42_combout\);

-- Location: LCCOMB_X43_Y42_N30
\writey~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~43_combout\ = (\writey~42_combout\) # ((!\always2~21_combout\ & (writey(3) & \writey~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~21_combout\,
	datab => writey(3),
	datac => \writey~23_combout\,
	datad => \writey~42_combout\,
	combout => \writey~43_combout\);

-- Location: LCCOMB_X43_Y42_N4
\writey~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~44_combout\ = (writey(3) & ((\writey~26_combout\) # ((\Add4~6_combout\ & \writey~25_combout\)))) # (!writey(3) & (\Add4~6_combout\ & (\writey~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(3),
	datab => \Add4~6_combout\,
	datac => \writey~25_combout\,
	datad => \writey~26_combout\,
	combout => \writey~44_combout\);

-- Location: LCCOMB_X43_Y42_N6
\writey~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~41_combout\ = (\Add1~6_combout\ & \writey~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \writey~20_combout\,
	combout => \writey~41_combout\);

-- Location: LCCOMB_X43_Y42_N22
\writey~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~45_combout\ = (\writey~43_combout\) # ((\writey~41_combout\) # ((\writey~28_combout\ & \writey~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~43_combout\,
	datab => \writey~28_combout\,
	datac => \writey~44_combout\,
	datad => \writey~41_combout\,
	combout => \writey~45_combout\);

-- Location: FF_X43_Y42_N1
\writey[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[3]~13_combout\,
	asdata => \writey~45_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(3));

-- Location: LCCOMB_X39_Y42_N18
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (writey(4) & (\Add4~7\ $ (GND))) # (!writey(4) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((writey(4) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(4),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X43_Y41_N20
\prev_writey[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writey[4]~0_combout\ = !writey(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => writey(4),
	combout => \prev_writey[4]~0_combout\);

-- Location: FF_X43_Y41_N21
\prev_writey[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writey[4]~0_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(4));

-- Location: LCCOMB_X43_Y41_N4
\writey[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[4]~14_combout\ = (\LessThan1~0_combout\ & (\Add4~8_combout\)) # (!\LessThan1~0_combout\ & ((!prev_writey(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~8_combout\,
	datab => prev_writey(4),
	datad => \LessThan1~0_combout\,
	combout => \writey[4]~14_combout\);

-- Location: LCCOMB_X43_Y41_N12
\writey~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~49_combout\ = (\writey~25_combout\ & ((\Add4~8_combout\) # ((writey(4) & \writey~26_combout\)))) # (!\writey~25_combout\ & (writey(4) & ((\writey~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~25_combout\,
	datab => writey(4),
	datac => \Add4~8_combout\,
	datad => \writey~26_combout\,
	combout => \writey~49_combout\);

-- Location: LCCOMB_X42_Y41_N14
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (writey(4) & ((GND) # (!\Add1~7\))) # (!writey(4) & (\Add1~7\ $ (GND)))
-- \Add1~9\ = CARRY((writey(4)) # (!\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writey(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X43_Y41_N0
\writey~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~47_combout\ = (\always2~22_combout\ & (((\Add1~8_combout\)))) # (!\always2~22_combout\ & (\always2~21_combout\ & (\Add4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~22_combout\,
	datab => \always2~21_combout\,
	datac => \Add4~8_combout\,
	datad => \Add1~8_combout\,
	combout => \writey~47_combout\);

-- Location: LCCOMB_X43_Y41_N26
\writey~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~48_combout\ = (\writey~47_combout\) # ((writey(4) & (\writey~23_combout\ & !\always2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(4),
	datab => \writey~23_combout\,
	datac => \always2~21_combout\,
	datad => \writey~47_combout\,
	combout => \writey~48_combout\);

-- Location: LCCOMB_X43_Y41_N18
\writey~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~46_combout\ = (\writey~20_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \writey~20_combout\,
	datad => \Add1~8_combout\,
	combout => \writey~46_combout\);

-- Location: LCCOMB_X43_Y41_N14
\writey~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~50_combout\ = (\writey~48_combout\) # ((\writey~46_combout\) # ((\writey~49_combout\ & \writey~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~49_combout\,
	datab => \writey~28_combout\,
	datac => \writey~48_combout\,
	datad => \writey~46_combout\,
	combout => \writey~50_combout\);

-- Location: FF_X43_Y41_N5
\writey[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[4]~14_combout\,
	asdata => \writey~50_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(4));

-- Location: LCCOMB_X39_Y42_N20
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (writey(5) & (!\Add4~9\)) # (!writey(5) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!writey(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X38_Y41_N24
\prev_writey[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writey[5]~1_combout\ = !writey(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writey(5),
	combout => \prev_writey[5]~1_combout\);

-- Location: FF_X38_Y41_N25
\prev_writey[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writey[5]~1_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(5));

-- Location: LCCOMB_X38_Y41_N16
\writey[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[5]~15_combout\ = (\LessThan1~0_combout\ & (\Add4~10_combout\)) # (!\LessThan1~0_combout\ & ((!prev_writey(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => \LessThan1~0_combout\,
	datad => prev_writey(5),
	combout => \writey[5]~15_combout\);

-- Location: LCCOMB_X38_Y41_N28
\writey~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~54_combout\ = (\Add4~10_combout\ & ((\writey~25_combout\) # ((writey(5) & \writey~26_combout\)))) # (!\Add4~10_combout\ & (writey(5) & ((\writey~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~10_combout\,
	datab => writey(5),
	datac => \writey~25_combout\,
	datad => \writey~26_combout\,
	combout => \writey~54_combout\);

-- Location: LCCOMB_X42_Y41_N16
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (writey(5) & (\Add1~9\ & VCC)) # (!writey(5) & (!\Add1~9\))
-- \Add1~11\ = CARRY((!writey(5) & !\Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X38_Y41_N14
\writey~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~51_combout\ = (\Add1~10_combout\ & \writey~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~10_combout\,
	datac => \writey~20_combout\,
	combout => \writey~51_combout\);

-- Location: LCCOMB_X39_Y42_N2
\writey~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~52_combout\ = (\always2~22_combout\ & (((\Add1~10_combout\)))) # (!\always2~22_combout\ & (\always2~21_combout\ & (\Add4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~21_combout\,
	datab => \Add4~10_combout\,
	datac => \Add1~10_combout\,
	datad => \always2~22_combout\,
	combout => \writey~52_combout\);

-- Location: LCCOMB_X39_Y42_N8
\writey~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~53_combout\ = (\writey~52_combout\) # ((!\always2~21_combout\ & (writey(5) & \writey~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~21_combout\,
	datab => writey(5),
	datac => \writey~52_combout\,
	datad => \writey~23_combout\,
	combout => \writey~53_combout\);

-- Location: LCCOMB_X38_Y41_N26
\writey~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~55_combout\ = (\writey~51_combout\) # ((\writey~53_combout\) # ((\writey~28_combout\ & \writey~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~28_combout\,
	datab => \writey~54_combout\,
	datac => \writey~51_combout\,
	datad => \writey~53_combout\,
	combout => \writey~55_combout\);

-- Location: FF_X38_Y41_N17
\writey[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[5]~15_combout\,
	asdata => \writey~55_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(5));

-- Location: LCCOMB_X42_Y41_N18
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (writey(6) & ((GND) # (!\Add1~11\))) # (!writey(6) & (\Add1~11\ $ (GND)))
-- \Add1~13\ = CARRY((writey(6)) # (!\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X42_Y41_N20
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (writey(7) & (\Add1~13\ & VCC)) # (!writey(7) & (!\Add1~13\))
-- \Add1~15\ = CARRY((!writey(7) & !\Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X42_Y41_N22
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (writey(8) & ((GND) # (!\Add1~15\))) # (!writey(8) & (\Add1~15\ $ (GND)))
-- \Add1~17\ = CARRY((writey(8)) # (!\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X42_Y41_N24
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = \Add1~17\ $ (!writey(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => writey(9),
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X43_Y41_N30
\writey~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~71_combout\ = (\always2~22_combout\ & (\Add1~18_combout\)) # (!\always2~22_combout\ & (((\always2~21_combout\ & \Add4~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~18_combout\,
	datab => \always2~21_combout\,
	datac => \Add4~18_combout\,
	datad => \always2~22_combout\,
	combout => \writey~71_combout\);

-- Location: LCCOMB_X43_Y41_N8
\writey~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~72_combout\ = (writey(9) & ((\writey~23_combout\) # ((\Add1~18_combout\ & \writey~20_combout\)))) # (!writey(9) & (((\Add1~18_combout\ & \writey~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(9),
	datab => \writey~23_combout\,
	datac => \Add1~18_combout\,
	datad => \writey~20_combout\,
	combout => \writey~72_combout\);

-- Location: LCCOMB_X43_Y41_N10
\writex~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~77_combout\ = (!\always2~9_combout\ & (!\always2~10_combout\ & !\Decoder1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~9_combout\,
	datac => \always2~10_combout\,
	datad => \Decoder1~1_combout\,
	combout => \writex~77_combout\);

-- Location: LCCOMB_X43_Y41_N24
\writey~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~73_combout\ = (writey(9) & ((\writex~77_combout\) # ((\Add4~18_combout\ & \writey~25_combout\)))) # (!writey(9) & (\Add4~18_combout\ & (\writey~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(9),
	datab => \Add4~18_combout\,
	datac => \writey~25_combout\,
	datad => \writex~77_combout\,
	combout => \writey~73_combout\);

-- Location: LCCOMB_X43_Y41_N22
\writey~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~74_combout\ = (\writey~71_combout\) # ((\writey~72_combout\) # ((\writey~28_combout\ & \writey~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~71_combout\,
	datab => \writey~28_combout\,
	datac => \writey~72_combout\,
	datad => \writey~73_combout\,
	combout => \writey~74_combout\);

-- Location: FF_X43_Y41_N7
\writey[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[9]~19_combout\,
	asdata => \writey~74_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(9));

-- Location: LCCOMB_X43_Y41_N2
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!writey(9) & ((!\LessThan6~0_combout\) # (!writey(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(9),
	datac => writey(5),
	datad => \LessThan6~0_combout\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X39_Y41_N20
\prev_writey[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \prev_writey[6]~2_combout\ = !writey(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => writey(6),
	combout => \prev_writey[6]~2_combout\);

-- Location: FF_X39_Y41_N21
\prev_writey[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \prev_writey[6]~2_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(6));

-- Location: LCCOMB_X39_Y42_N22
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (writey(6) & (\Add4~11\ $ (GND))) # (!writey(6) & (!\Add4~11\ & VCC))
-- \Add4~13\ = CARRY((writey(6) & !\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(6),
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X40_Y42_N24
\writey[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[6]~16_combout\ = (\LessThan1~0_combout\ & ((\Add4~12_combout\))) # (!\LessThan1~0_combout\ & (!prev_writey(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => prev_writey(6),
	datad => \Add4~12_combout\,
	combout => \writey[6]~16_combout\);

-- Location: LCCOMB_X40_Y42_N28
\writey~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~56_combout\ = (\Add1~12_combout\ & \writey~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \writey~20_combout\,
	combout => \writey~56_combout\);

-- Location: LCCOMB_X40_Y42_N10
\writey~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~57_combout\ = (\always2~22_combout\ & (((\Add1~12_combout\)))) # (!\always2~22_combout\ & (\Add4~12_combout\ & ((\always2~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \Add1~12_combout\,
	datac => \always2~22_combout\,
	datad => \always2~21_combout\,
	combout => \writey~57_combout\);

-- Location: LCCOMB_X40_Y42_N16
\writey~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~58_combout\ = (\writey~57_combout\) # ((!\always2~21_combout\ & (writey(6) & \writey~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~57_combout\,
	datab => \always2~21_combout\,
	datac => writey(6),
	datad => \writey~23_combout\,
	combout => \writey~58_combout\);

-- Location: LCCOMB_X40_Y42_N2
\writey~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~59_combout\ = (writey(6) & ((\writey~26_combout\) # ((\Add4~12_combout\ & \writey~25_combout\)))) # (!writey(6) & (\Add4~12_combout\ & ((\writey~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(6),
	datab => \Add4~12_combout\,
	datac => \writey~26_combout\,
	datad => \writey~25_combout\,
	combout => \writey~59_combout\);

-- Location: LCCOMB_X40_Y42_N8
\writey~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~60_combout\ = (\writey~56_combout\) # ((\writey~58_combout\) # ((\writey~28_combout\ & \writey~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~28_combout\,
	datab => \writey~56_combout\,
	datac => \writey~58_combout\,
	datad => \writey~59_combout\,
	combout => \writey~60_combout\);

-- Location: FF_X40_Y42_N25
\writey[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[6]~16_combout\,
	asdata => \writey~60_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(6));

-- Location: LCCOMB_X39_Y42_N24
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = (writey(7) & (!\Add4~13\)) # (!writey(7) & ((\Add4~13\) # (GND)))
-- \Add4~15\ = CARRY((!\Add4~13\) # (!writey(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => writey(7),
	datad => VCC,
	cin => \Add4~13\,
	combout => \Add4~14_combout\,
	cout => \Add4~15\);

-- Location: LCCOMB_X40_Y42_N6
\writey[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[7]~17_combout\ = (\LessThan1~0_combout\ & ((\Add4~14_combout\))) # (!\LessThan1~0_combout\ & (!prev_writey(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prev_writey(7),
	datab => \Add4~14_combout\,
	datad => \LessThan1~0_combout\,
	combout => \writey[7]~17_combout\);

-- Location: LCCOMB_X39_Y42_N4
\writey~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~62_combout\ = (\always2~22_combout\ & (((\Add1~14_combout\)))) # (!\always2~22_combout\ & (\always2~21_combout\ & (\Add4~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~21_combout\,
	datab => \Add4~14_combout\,
	datac => \Add1~14_combout\,
	datad => \always2~22_combout\,
	combout => \writey~62_combout\);

-- Location: LCCOMB_X39_Y42_N6
\writey~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~63_combout\ = (\writey~62_combout\) # ((!\always2~21_combout\ & (writey(7) & \writey~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always2~21_combout\,
	datab => writey(7),
	datac => \writey~62_combout\,
	datad => \writey~23_combout\,
	combout => \writey~63_combout\);

-- Location: LCCOMB_X40_Y42_N14
\writey~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~64_combout\ = (writey(7) & ((\writey~26_combout\) # ((\Add4~14_combout\ & \writey~25_combout\)))) # (!writey(7) & (\Add4~14_combout\ & ((\writey~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(7),
	datab => \Add4~14_combout\,
	datac => \writey~26_combout\,
	datad => \writey~25_combout\,
	combout => \writey~64_combout\);

-- Location: LCCOMB_X39_Y42_N30
\writey~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~61_combout\ = (\Add1~14_combout\ & \writey~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~14_combout\,
	datad => \writey~20_combout\,
	combout => \writey~61_combout\);

-- Location: LCCOMB_X40_Y42_N4
\writey~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~65_combout\ = (\writey~63_combout\) # ((\writey~61_combout\) # ((\writey~28_combout\ & \writey~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~28_combout\,
	datab => \writey~63_combout\,
	datac => \writey~64_combout\,
	datad => \writey~61_combout\,
	combout => \writey~65_combout\);

-- Location: FF_X40_Y42_N7
\writey[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[7]~17_combout\,
	asdata => \writey~65_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(7));

-- Location: FF_X40_Y41_N17
\prev_writey[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => writey(8),
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prev_writey(8));

-- Location: LCCOMB_X40_Y42_N12
\writey[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey[8]~18_combout\ = (\LessThan1~0_combout\ & (\Add4~16_combout\)) # (!\LessThan1~0_combout\ & ((prev_writey(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => prev_writey(8),
	datad => \LessThan1~0_combout\,
	combout => \writey[8]~18_combout\);

-- Location: LCCOMB_X40_Y42_N18
\writey~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~66_combout\ = (\Add1~16_combout\ & \writey~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~16_combout\,
	datad => \writey~20_combout\,
	combout => \writey~66_combout\);

-- Location: LCCOMB_X40_Y42_N20
\writey~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~67_combout\ = (\always2~22_combout\ & (((\Add1~16_combout\)))) # (!\always2~22_combout\ & (\Add4~16_combout\ & (\always2~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => \always2~21_combout\,
	datac => \always2~22_combout\,
	datad => \Add1~16_combout\,
	combout => \writey~67_combout\);

-- Location: LCCOMB_X40_Y42_N26
\writey~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~68_combout\ = (\writey~67_combout\) # ((\writey~23_combout\ & (!\always2~21_combout\ & writey(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~23_combout\,
	datab => \always2~21_combout\,
	datac => writey(8),
	datad => \writey~67_combout\,
	combout => \writey~68_combout\);

-- Location: LCCOMB_X40_Y42_N0
\writey~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~69_combout\ = (\Add4~16_combout\ & ((\writey~25_combout\) # ((writey(8) & \writey~26_combout\)))) # (!\Add4~16_combout\ & (writey(8) & (\writey~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~16_combout\,
	datab => writey(8),
	datac => \writey~26_combout\,
	datad => \writey~25_combout\,
	combout => \writey~69_combout\);

-- Location: LCCOMB_X40_Y42_N22
\writey~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \writey~70_combout\ = (\writey~66_combout\) # ((\writey~68_combout\) # ((\writey~28_combout\ & \writey~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writey~28_combout\,
	datab => \writey~66_combout\,
	datac => \writey~68_combout\,
	datad => \writey~69_combout\,
	combout => \writey~70_combout\);

-- Location: FF_X40_Y42_N13
\writey[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \writey[8]~18_combout\,
	asdata => \writey~70_combout\,
	clrn => \rst~input_o\,
	sload => \resetram~q\,
	ena => \writey~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writey(8));

-- Location: LCCOMB_X36_Y41_N0
\gen1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~0_combout\ = \gen1|yCount\(0) $ (VCC)
-- \gen1|Add0~1\ = CARRY(\gen1|yCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1|yCount\(0),
	datad => VCC,
	combout => \gen1|Add0~0_combout\,
	cout => \gen1|Add0~1\);

-- Location: LCCOMB_X40_Y40_N12
\gen1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~0_combout\ = \gen1|xCount\(0) $ (VCC)
-- \gen1|Add1~1\ = CARRY(\gen1|xCount\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(0),
	datad => VCC,
	combout => \gen1|Add1~0_combout\,
	cout => \gen1|Add1~1\);

-- Location: FF_X40_Y40_N13
\gen1|xCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add1~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(0));

-- Location: LCCOMB_X40_Y40_N14
\gen1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~2_combout\ = (\gen1|xCount\(1) & (!\gen1|Add1~1\)) # (!\gen1|xCount\(1) & ((\gen1|Add1~1\) # (GND)))
-- \gen1|Add1~3\ = CARRY((!\gen1|Add1~1\) # (!\gen1|xCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|xCount\(1),
	datad => VCC,
	cin => \gen1|Add1~1\,
	combout => \gen1|Add1~2_combout\,
	cout => \gen1|Add1~3\);

-- Location: LCCOMB_X40_Y40_N4
\gen1|xCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|xCount~0_combout\ = (!\gen1|Equal0~2_combout\ & \gen1|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1|Equal0~2_combout\,
	datac => \gen1|Add1~2_combout\,
	combout => \gen1|xCount~0_combout\);

-- Location: FF_X40_Y40_N5
\gen1|xCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|xCount~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(1));

-- Location: LCCOMB_X40_Y40_N16
\gen1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~4_combout\ = (\gen1|xCount\(2) & (\gen1|Add1~3\ $ (GND))) # (!\gen1|xCount\(2) & (!\gen1|Add1~3\ & VCC))
-- \gen1|Add1~5\ = CARRY((\gen1|xCount\(2) & !\gen1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|xCount\(2),
	datad => VCC,
	cin => \gen1|Add1~3\,
	combout => \gen1|Add1~4_combout\,
	cout => \gen1|Add1~5\);

-- Location: FF_X40_Y40_N17
\gen1|xCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add1~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(2));

-- Location: LCCOMB_X40_Y40_N18
\gen1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~6_combout\ = (\gen1|xCount\(3) & (!\gen1|Add1~5\)) # (!\gen1|xCount\(3) & ((\gen1|Add1~5\) # (GND)))
-- \gen1|Add1~7\ = CARRY((!\gen1|Add1~5\) # (!\gen1|xCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(3),
	datad => VCC,
	cin => \gen1|Add1~5\,
	combout => \gen1|Add1~6_combout\,
	cout => \gen1|Add1~7\);

-- Location: LCCOMB_X42_Y40_N24
\gen1|xCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|xCount~1_combout\ = (!\gen1|Equal0~2_combout\ & \gen1|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen1|Equal0~2_combout\,
	datad => \gen1|Add1~6_combout\,
	combout => \gen1|xCount~1_combout\);

-- Location: FF_X40_Y40_N9
\gen1|xCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => \gen1|xCount~1_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(3));

-- Location: LCCOMB_X40_Y40_N20
\gen1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~8_combout\ = (\gen1|xCount\(4) & (\gen1|Add1~7\ $ (GND))) # (!\gen1|xCount\(4) & (!\gen1|Add1~7\ & VCC))
-- \gen1|Add1~9\ = CARRY((\gen1|xCount\(4) & !\gen1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(4),
	datad => VCC,
	cin => \gen1|Add1~7\,
	combout => \gen1|Add1~8_combout\,
	cout => \gen1|Add1~9\);

-- Location: LCCOMB_X39_Y40_N6
\gen1|xCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|xCount~2_combout\ = (!\gen1|Equal0~2_combout\ & \gen1|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1|Equal0~2_combout\,
	datac => \gen1|Add1~8_combout\,
	combout => \gen1|xCount~2_combout\);

-- Location: FF_X40_Y40_N11
\gen1|xCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	asdata => \gen1|xCount~2_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(4));

-- Location: LCCOMB_X40_Y40_N22
\gen1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~10_combout\ = (\gen1|xCount\(5) & (!\gen1|Add1~9\)) # (!\gen1|xCount\(5) & ((\gen1|Add1~9\) # (GND)))
-- \gen1|Add1~11\ = CARRY((!\gen1|Add1~9\) # (!\gen1|xCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(5),
	datad => VCC,
	cin => \gen1|Add1~9\,
	combout => \gen1|Add1~10_combout\,
	cout => \gen1|Add1~11\);

-- Location: FF_X40_Y40_N23
\gen1|xCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add1~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(5));

-- Location: LCCOMB_X40_Y40_N24
\gen1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~12_combout\ = (\gen1|xCount\(6) & (\gen1|Add1~11\ $ (GND))) # (!\gen1|xCount\(6) & (!\gen1|Add1~11\ & VCC))
-- \gen1|Add1~13\ = CARRY((\gen1|xCount\(6) & !\gen1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|xCount\(6),
	datad => VCC,
	cin => \gen1|Add1~11\,
	combout => \gen1|Add1~12_combout\,
	cout => \gen1|Add1~13\);

-- Location: FF_X40_Y40_N25
\gen1|xCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add1~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(6));

-- Location: LCCOMB_X40_Y40_N26
\gen1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~14_combout\ = (\gen1|xCount\(7) & (!\gen1|Add1~13\)) # (!\gen1|xCount\(7) & ((\gen1|Add1~13\) # (GND)))
-- \gen1|Add1~15\ = CARRY((!\gen1|Add1~13\) # (!\gen1|xCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(7),
	datad => VCC,
	cin => \gen1|Add1~13\,
	combout => \gen1|Add1~14_combout\,
	cout => \gen1|Add1~15\);

-- Location: FF_X40_Y40_N27
\gen1|xCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add1~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(7));

-- Location: LCCOMB_X40_Y40_N28
\gen1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~16_combout\ = (\gen1|xCount\(8) & (\gen1|Add1~15\ $ (GND))) # (!\gen1|xCount\(8) & (!\gen1|Add1~15\ & VCC))
-- \gen1|Add1~17\ = CARRY((\gen1|xCount\(8) & !\gen1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|xCount\(8),
	datad => VCC,
	cin => \gen1|Add1~15\,
	combout => \gen1|Add1~16_combout\,
	cout => \gen1|Add1~17\);

-- Location: LCCOMB_X39_Y40_N20
\gen1|xCount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|xCount~3_combout\ = (!\gen1|Equal0~2_combout\ & \gen1|Add1~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen1|Equal0~2_combout\,
	datad => \gen1|Add1~16_combout\,
	combout => \gen1|xCount~3_combout\);

-- Location: FF_X39_Y40_N21
\gen1|xCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|xCount~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(8));

-- Location: LCCOMB_X40_Y40_N30
\gen1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add1~18_combout\ = \gen1|Add1~17\ $ (\gen1|xCount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen1|xCount\(9),
	cin => \gen1|Add1~17\,
	combout => \gen1|Add1~18_combout\);

-- Location: LCCOMB_X39_Y40_N2
\gen1|xCount~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|xCount~4_combout\ = (!\gen1|Equal0~2_combout\ & \gen1|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1|Equal0~2_combout\,
	datad => \gen1|Add1~18_combout\,
	combout => \gen1|xCount~4_combout\);

-- Location: FF_X39_Y40_N3
\gen1|xCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|xCount~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|xCount\(9));

-- Location: LCCOMB_X39_Y40_N26
\gen1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Equal0~1_combout\ = (!\gen1|xCount\(7) & (\gen1|xCount\(8) & (\gen1|xCount\(4) & \gen1|xCount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(7),
	datab => \gen1|xCount\(8),
	datac => \gen1|xCount\(4),
	datad => \gen1|xCount\(9),
	combout => \gen1|Equal0~1_combout\);

-- Location: LCCOMB_X39_Y40_N12
\gen1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Equal0~0_combout\ = (!\gen1|xCount\(5) & (\gen1|xCount\(0) & (\gen1|xCount\(3) & !\gen1|xCount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(5),
	datab => \gen1|xCount\(0),
	datac => \gen1|xCount\(3),
	datad => \gen1|xCount\(6),
	combout => \gen1|Equal0~0_combout\);

-- Location: LCCOMB_X39_Y40_N4
\gen1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Equal0~2_combout\ = (!\gen1|xCount\(1) & (!\gen1|xCount\(2) & (\gen1|Equal0~1_combout\ & \gen1|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(1),
	datab => \gen1|xCount\(2),
	datac => \gen1|Equal0~1_combout\,
	datad => \gen1|Equal0~0_combout\,
	combout => \gen1|Equal0~2_combout\);

-- Location: FF_X36_Y41_N1
\gen1|yCount[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add0~0_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(0));

-- Location: LCCOMB_X36_Y41_N2
\gen1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~2_combout\ = (\gen1|yCount\(1) & (!\gen1|Add0~1\)) # (!\gen1|yCount\(1) & ((\gen1|Add0~1\) # (GND)))
-- \gen1|Add0~3\ = CARRY((!\gen1|Add0~1\) # (!\gen1|yCount\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|yCount\(1),
	datad => VCC,
	cin => \gen1|Add0~1\,
	combout => \gen1|Add0~2_combout\,
	cout => \gen1|Add0~3\);

-- Location: LCCOMB_X36_Y41_N24
\gen1|yCount~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|yCount~0_combout\ = (!\gen1|Equal1~2_combout\ & \gen1|Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen1|Equal1~2_combout\,
	datad => \gen1|Add0~2_combout\,
	combout => \gen1|yCount~0_combout\);

-- Location: FF_X36_Y41_N25
\gen1|yCount[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|yCount~0_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(1));

-- Location: LCCOMB_X36_Y40_N14
\gen1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Equal1~1_combout\ = (!\gen1|yCount\(7) & (!\gen1|yCount\(5) & (!\gen1|yCount\(8) & !\gen1|yCount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(7),
	datab => \gen1|yCount\(5),
	datac => \gen1|yCount\(8),
	datad => \gen1|yCount\(6),
	combout => \gen1|Equal1~1_combout\);

-- Location: LCCOMB_X36_Y41_N28
\gen1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Equal1~0_combout\ = (\gen1|yCount\(0) & (\gen1|yCount\(3) & (!\gen1|yCount\(4) & \gen1|yCount\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(0),
	datab => \gen1|yCount\(3),
	datac => \gen1|yCount\(4),
	datad => \gen1|yCount\(9),
	combout => \gen1|Equal1~0_combout\);

-- Location: LCCOMB_X36_Y41_N22
\gen1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Equal1~2_combout\ = (\gen1|yCount\(2) & (!\gen1|yCount\(1) & (\gen1|Equal1~1_combout\ & \gen1|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(2),
	datab => \gen1|yCount\(1),
	datac => \gen1|Equal1~1_combout\,
	datad => \gen1|Equal1~0_combout\,
	combout => \gen1|Equal1~2_combout\);

-- Location: LCCOMB_X36_Y41_N4
\gen1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~4_combout\ = (\gen1|yCount\(2) & (\gen1|Add0~3\ $ (GND))) # (!\gen1|yCount\(2) & (!\gen1|Add0~3\ & VCC))
-- \gen1|Add0~5\ = CARRY((\gen1|yCount\(2) & !\gen1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(2),
	datad => VCC,
	cin => \gen1|Add0~3\,
	combout => \gen1|Add0~4_combout\,
	cout => \gen1|Add0~5\);

-- Location: LCCOMB_X36_Y41_N26
\gen1|yCount~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|yCount~1_combout\ = (!\gen1|Equal1~2_combout\ & \gen1|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|Equal1~2_combout\,
	datac => \gen1|Add0~4_combout\,
	combout => \gen1|yCount~1_combout\);

-- Location: FF_X36_Y41_N27
\gen1|yCount[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|yCount~1_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(2));

-- Location: LCCOMB_X36_Y41_N6
\gen1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~6_combout\ = (\gen1|yCount\(3) & (!\gen1|Add0~5\)) # (!\gen1|yCount\(3) & ((\gen1|Add0~5\) # (GND)))
-- \gen1|Add0~7\ = CARRY((!\gen1|Add0~5\) # (!\gen1|yCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|yCount\(3),
	datad => VCC,
	cin => \gen1|Add0~5\,
	combout => \gen1|Add0~6_combout\,
	cout => \gen1|Add0~7\);

-- Location: LCCOMB_X38_Y42_N8
\gen1|yCount~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|yCount~2_combout\ = (\gen1|Add0~6_combout\ & !\gen1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen1|Add0~6_combout\,
	datad => \gen1|Equal1~2_combout\,
	combout => \gen1|yCount~2_combout\);

-- Location: FF_X38_Y42_N9
\gen1|yCount[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|yCount~2_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(3));

-- Location: LCCOMB_X36_Y41_N8
\gen1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~8_combout\ = (\gen1|yCount\(4) & (\gen1|Add0~7\ $ (GND))) # (!\gen1|yCount\(4) & (!\gen1|Add0~7\ & VCC))
-- \gen1|Add0~9\ = CARRY((\gen1|yCount\(4) & !\gen1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|yCount\(4),
	datad => VCC,
	cin => \gen1|Add0~7\,
	combout => \gen1|Add0~8_combout\,
	cout => \gen1|Add0~9\);

-- Location: FF_X36_Y41_N9
\gen1|yCount[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add0~8_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(4));

-- Location: LCCOMB_X36_Y41_N10
\gen1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~10_combout\ = (\gen1|yCount\(5) & (!\gen1|Add0~9\)) # (!\gen1|yCount\(5) & ((\gen1|Add0~9\) # (GND)))
-- \gen1|Add0~11\ = CARRY((!\gen1|Add0~9\) # (!\gen1|yCount\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(5),
	datad => VCC,
	cin => \gen1|Add0~9\,
	combout => \gen1|Add0~10_combout\,
	cout => \gen1|Add0~11\);

-- Location: FF_X36_Y41_N11
\gen1|yCount[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add0~10_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(5));

-- Location: LCCOMB_X36_Y41_N12
\gen1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~12_combout\ = (\gen1|yCount\(6) & (\gen1|Add0~11\ $ (GND))) # (!\gen1|yCount\(6) & (!\gen1|Add0~11\ & VCC))
-- \gen1|Add0~13\ = CARRY((\gen1|yCount\(6) & !\gen1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(6),
	datad => VCC,
	cin => \gen1|Add0~11\,
	combout => \gen1|Add0~12_combout\,
	cout => \gen1|Add0~13\);

-- Location: FF_X36_Y41_N13
\gen1|yCount[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add0~12_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(6));

-- Location: LCCOMB_X36_Y41_N14
\gen1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~14_combout\ = (\gen1|yCount\(7) & (!\gen1|Add0~13\)) # (!\gen1|yCount\(7) & ((\gen1|Add0~13\) # (GND)))
-- \gen1|Add0~15\ = CARRY((!\gen1|Add0~13\) # (!\gen1|yCount\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|yCount\(7),
	datad => VCC,
	cin => \gen1|Add0~13\,
	combout => \gen1|Add0~14_combout\,
	cout => \gen1|Add0~15\);

-- Location: FF_X36_Y41_N15
\gen1|yCount[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add0~14_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(7));

-- Location: LCCOMB_X36_Y41_N16
\gen1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~16_combout\ = (\gen1|yCount\(8) & (\gen1|Add0~15\ $ (GND))) # (!\gen1|yCount\(8) & (!\gen1|Add0~15\ & VCC))
-- \gen1|Add0~17\ = CARRY((\gen1|yCount\(8) & !\gen1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \gen1|yCount\(8),
	datad => VCC,
	cin => \gen1|Add0~15\,
	combout => \gen1|Add0~16_combout\,
	cout => \gen1|Add0~17\);

-- Location: FF_X36_Y41_N17
\gen1|yCount[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|Add0~16_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(8));

-- Location: LCCOMB_X36_Y41_N18
\gen1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|Add0~18_combout\ = \gen1|Add0~17\ $ (\gen1|yCount\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \gen1|yCount\(9),
	cin => \gen1|Add0~17\,
	combout => \gen1|Add0~18_combout\);

-- Location: LCCOMB_X38_Y42_N18
\gen1|yCount~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|yCount~3_combout\ = (\gen1|Add0~18_combout\ & !\gen1|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen1|Add0~18_combout\,
	datad => \gen1|Equal1~2_combout\,
	combout => \gen1|yCount~3_combout\);

-- Location: FF_X38_Y42_N19
\gen1|yCount[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \gen1|yCount~3_combout\,
	clrn => \rst~input_o\,
	ena => \gen1|Equal0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gen1|yCount\(9));

-- Location: LCCOMB_X38_Y42_N28
\always3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~11_combout\ = (writey(8) & ((\gen1|yCount\(9) $ (writey(9))) # (!\gen1|yCount\(8)))) # (!writey(8) & ((\gen1|yCount\(8)) # (\gen1|yCount\(9) $ (writey(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(8),
	datab => \gen1|yCount\(9),
	datac => writey(9),
	datad => \gen1|yCount\(8),
	combout => \always3~11_combout\);

-- Location: LCCOMB_X36_Y41_N30
\always3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~10_combout\ = (\gen1|yCount\(6) & ((\gen1|yCount\(7) $ (writey(7))) # (!writey(6)))) # (!\gen1|yCount\(6) & ((writey(6)) # (\gen1|yCount\(7) $ (writey(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(6),
	datab => \gen1|yCount\(7),
	datac => writey(7),
	datad => writey(6),
	combout => \always3~10_combout\);

-- Location: LCCOMB_X40_Y40_N10
\always3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~2_combout\ = (\gen1|xCount\(5) & ((\gen1|xCount\(4) $ (writex(4))) # (!writex(5)))) # (!\gen1|xCount\(5) & ((writex(5)) # (\gen1|xCount\(4) $ (writex(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(5),
	datab => writex(5),
	datac => \gen1|xCount\(4),
	datad => writex(4),
	combout => \always3~2_combout\);

-- Location: LCCOMB_X40_Y40_N0
\always3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~3_combout\ = (\gen1|xCount\(7) & ((writex(6) $ (\gen1|xCount\(6))) # (!writex(7)))) # (!\gen1|xCount\(7) & ((writex(7)) # (writex(6) $ (\gen1|xCount\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(7),
	datab => writex(7),
	datac => writex(6),
	datad => \gen1|xCount\(6),
	combout => \always3~3_combout\);

-- Location: LCCOMB_X40_Y40_N8
\always3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~1_combout\ = (\gen1|xCount\(2) & ((writex(3) $ (\gen1|xCount\(3))) # (!writex(2)))) # (!\gen1|xCount\(2) & ((writex(2)) # (writex(3) $ (\gen1|xCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(2),
	datab => writex(3),
	datac => \gen1|xCount\(3),
	datad => writex(2),
	combout => \always3~1_combout\);

-- Location: LCCOMB_X40_Y40_N2
\always3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~0_combout\ = (\gen1|xCount\(0) & ((\gen1|xCount\(1) $ (writex(1))) # (!writex(0)))) # (!\gen1|xCount\(0) & ((writex(0)) # (\gen1|xCount\(1) $ (writex(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(0),
	datab => \gen1|xCount\(1),
	datac => writex(0),
	datad => writex(1),
	combout => \always3~0_combout\);

-- Location: LCCOMB_X40_Y40_N6
\always3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~4_combout\ = (\always3~2_combout\) # ((\always3~3_combout\) # ((\always3~1_combout\) # (\always3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always3~2_combout\,
	datab => \always3~3_combout\,
	datac => \always3~1_combout\,
	datad => \always3~0_combout\,
	combout => \always3~4_combout\);

-- Location: LCCOMB_X38_Y41_N10
\always3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~6_combout\ = (writey(0) & ((writey(1) $ (\gen1|yCount\(1))) # (!\gen1|yCount\(0)))) # (!writey(0) & ((\gen1|yCount\(0)) # (writey(1) $ (\gen1|yCount\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(0),
	datab => writey(1),
	datac => \gen1|yCount\(0),
	datad => \gen1|yCount\(1),
	combout => \always3~6_combout\);

-- Location: LCCOMB_X39_Y40_N0
\always3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~5_combout\ = (writex(8) & ((writex(9) $ (\gen1|xCount\(9))) # (!\gen1|xCount\(8)))) # (!writex(8) & ((\gen1|xCount\(8)) # (writex(9) $ (\gen1|xCount\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(8),
	datab => \gen1|xCount\(8),
	datac => writex(9),
	datad => \gen1|xCount\(9),
	combout => \always3~5_combout\);

-- Location: LCCOMB_X39_Y41_N26
\always3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~7_combout\ = (writey(2) & ((writey(3) $ (\gen1|yCount\(3))) # (!\gen1|yCount\(2)))) # (!writey(2) & ((\gen1|yCount\(2)) # (writey(3) $ (\gen1|yCount\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(2),
	datab => \gen1|yCount\(2),
	datac => writey(3),
	datad => \gen1|yCount\(3),
	combout => \always3~7_combout\);

-- Location: LCCOMB_X36_Y41_N20
\always3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~8_combout\ = (\gen1|yCount\(5) & ((\gen1|yCount\(4) $ (writey(4))) # (!writey(5)))) # (!\gen1|yCount\(5) & ((writey(5)) # (\gen1|yCount\(4) $ (writey(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(5),
	datab => \gen1|yCount\(4),
	datac => writey(5),
	datad => writey(4),
	combout => \always3~8_combout\);

-- Location: LCCOMB_X39_Y41_N24
\always3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~9_combout\ = (\always3~6_combout\) # ((\always3~5_combout\) # ((\always3~7_combout\) # (\always3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always3~6_combout\,
	datab => \always3~5_combout\,
	datac => \always3~7_combout\,
	datad => \always3~8_combout\,
	combout => \always3~9_combout\);

-- Location: LCCOMB_X39_Y41_N2
\always3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \always3~12_combout\ = (\always3~11_combout\) # ((\always3~10_combout\) # ((\always3~4_combout\) # (\always3~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always3~11_combout\,
	datab => \always3~10_combout\,
	datac => \always3~4_combout\,
	datad => \always3~9_combout\,
	combout => \always3~12_combout\);

-- Location: LCCOMB_X39_Y41_N0
\writex~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \writex~30_combout\ = (\WideOr0~3_combout\ & (!\write_wait~q\ & (\WideOr0~2_combout\ & !\always3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~3_combout\,
	datab => \write_wait~q\,
	datac => \WideOr0~2_combout\,
	datad => \always3~12_combout\,
	combout => \writex~30_combout\);

-- Location: LCCOMB_X38_Y42_N14
\resetram~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \resetram~0_combout\ = ((!writey(9) & ((!\LessThan6~0_combout\) # (!writey(5))))) # (!\LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => \LessThan6~0_combout\,
	datac => writey(9),
	datad => \LessThan0~0_combout\,
	combout => \resetram~0_combout\);

-- Location: LCCOMB_X39_Y41_N14
\resetram~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \resetram~1_combout\ = (\resetram~q\ & (((!\Decoder1~1_combout\)) # (!\writex~30_combout\))) # (!\resetram~q\ & (((!\resetram~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writex~30_combout\,
	datab => \Decoder1~1_combout\,
	datac => \resetram~q\,
	datad => \resetram~0_combout\,
	combout => \resetram~1_combout\);

-- Location: FF_X39_Y41_N15
resetram : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \resetram~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \resetram~q\);

-- Location: LCCOMB_X39_Y41_N6
\counter[13]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~88_combout\ = (\resetram~q\ & \write_wait~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \resetram~q\,
	datad => \write_wait~0_combout\,
	combout => \counter[13]~88_combout\);

-- Location: FF_X38_Y45_N1
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[0]~64_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X38_Y45_N2
\counter[1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~66_combout\ = (counter(1) & (!\counter[0]~65\)) # (!counter(1) & ((\counter[0]~65\) # (GND)))
-- \counter[1]~67\ = CARRY((!\counter[0]~65\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(1),
	datad => VCC,
	cin => \counter[0]~65\,
	combout => \counter[1]~66_combout\,
	cout => \counter[1]~67\);

-- Location: FF_X38_Y45_N3
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[1]~66_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X38_Y45_N4
\counter[2]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~68_combout\ = (counter(2) & (\counter[1]~67\ $ (GND))) # (!counter(2) & (!\counter[1]~67\ & VCC))
-- \counter[2]~69\ = CARRY((counter(2) & !\counter[1]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~67\,
	combout => \counter[2]~68_combout\,
	cout => \counter[2]~69\);

-- Location: FF_X38_Y45_N5
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[2]~68_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X38_Y45_N6
\counter[3]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~70_combout\ = (counter(3) & (!\counter[2]~69\)) # (!counter(3) & ((\counter[2]~69\) # (GND)))
-- \counter[3]~71\ = CARRY((!\counter[2]~69\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(3),
	datad => VCC,
	cin => \counter[2]~69\,
	combout => \counter[3]~70_combout\,
	cout => \counter[3]~71\);

-- Location: FF_X38_Y45_N7
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[3]~70_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X38_Y45_N8
\counter[4]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~72_combout\ = (counter(4) & (\counter[3]~71\ $ (GND))) # (!counter(4) & (!\counter[3]~71\ & VCC))
-- \counter[4]~73\ = CARRY((counter(4) & !\counter[3]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~71\,
	combout => \counter[4]~72_combout\,
	cout => \counter[4]~73\);

-- Location: FF_X38_Y45_N9
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[4]~72_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X38_Y45_N10
\counter[5]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~74_combout\ = (counter(5) & (!\counter[4]~73\)) # (!counter(5) & ((\counter[4]~73\) # (GND)))
-- \counter[5]~75\ = CARRY((!\counter[4]~73\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(5),
	datad => VCC,
	cin => \counter[4]~73\,
	combout => \counter[5]~74_combout\,
	cout => \counter[5]~75\);

-- Location: FF_X38_Y45_N11
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[5]~74_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X38_Y45_N12
\counter[6]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~76_combout\ = (counter(6) & (\counter[5]~75\ $ (GND))) # (!counter(6) & (!\counter[5]~75\ & VCC))
-- \counter[6]~77\ = CARRY((counter(6) & !\counter[5]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datad => VCC,
	cin => \counter[5]~75\,
	combout => \counter[6]~76_combout\,
	cout => \counter[6]~77\);

-- Location: FF_X38_Y45_N13
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[6]~76_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X38_Y45_N14
\counter[7]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~78_combout\ = (counter(7) & (!\counter[6]~77\)) # (!counter(7) & ((\counter[6]~77\) # (GND)))
-- \counter[7]~79\ = CARRY((!\counter[6]~77\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(7),
	datad => VCC,
	cin => \counter[6]~77\,
	combout => \counter[7]~78_combout\,
	cout => \counter[7]~79\);

-- Location: FF_X38_Y45_N15
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[7]~78_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X38_Y45_N16
\counter[8]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~80_combout\ = (counter(8) & (\counter[7]~79\ $ (GND))) # (!counter(8) & (!\counter[7]~79\ & VCC))
-- \counter[8]~81\ = CARRY((counter(8) & !\counter[7]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~79\,
	combout => \counter[8]~80_combout\,
	cout => \counter[8]~81\);

-- Location: FF_X38_Y45_N17
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[8]~80_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X38_Y45_N18
\counter[9]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~82_combout\ = (counter(9) & (!\counter[8]~81\)) # (!counter(9) & ((\counter[8]~81\) # (GND)))
-- \counter[9]~83\ = CARRY((!\counter[8]~81\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(9),
	datad => VCC,
	cin => \counter[8]~81\,
	combout => \counter[9]~82_combout\,
	cout => \counter[9]~83\);

-- Location: FF_X38_Y45_N19
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[9]~82_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X38_Y45_N20
\counter[10]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~84_combout\ = (counter(10) & (\counter[9]~83\ $ (GND))) # (!counter(10) & (!\counter[9]~83\ & VCC))
-- \counter[10]~85\ = CARRY((counter(10) & !\counter[9]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(10),
	datad => VCC,
	cin => \counter[9]~83\,
	combout => \counter[10]~84_combout\,
	cout => \counter[10]~85\);

-- Location: FF_X38_Y45_N21
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[10]~84_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X38_Y45_N22
\counter[11]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~86_combout\ = (counter(11) & (!\counter[10]~85\)) # (!counter(11) & ((\counter[10]~85\) # (GND)))
-- \counter[11]~87\ = CARRY((!\counter[10]~85\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(11),
	datad => VCC,
	cin => \counter[10]~85\,
	combout => \counter[11]~86_combout\,
	cout => \counter[11]~87\);

-- Location: FF_X38_Y45_N23
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[11]~86_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X38_Y45_N24
\counter[12]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~89_combout\ = (counter(12) & (\counter[11]~87\ $ (GND))) # (!counter(12) & (!\counter[11]~87\ & VCC))
-- \counter[12]~90\ = CARRY((counter(12) & !\counter[11]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~87\,
	combout => \counter[12]~89_combout\,
	cout => \counter[12]~90\);

-- Location: FF_X38_Y45_N25
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[12]~89_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X38_Y45_N26
\counter[13]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~91_combout\ = (counter(13) & (!\counter[12]~90\)) # (!counter(13) & ((\counter[12]~90\) # (GND)))
-- \counter[13]~92\ = CARRY((!\counter[12]~90\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datad => VCC,
	cin => \counter[12]~90\,
	combout => \counter[13]~91_combout\,
	cout => \counter[13]~92\);

-- Location: FF_X38_Y45_N27
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[13]~91_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X38_Y45_N28
\counter[14]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~93_combout\ = (counter(14) & (\counter[13]~92\ $ (GND))) # (!counter(14) & (!\counter[13]~92\ & VCC))
-- \counter[14]~94\ = CARRY((counter(14) & !\counter[13]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(14),
	datad => VCC,
	cin => \counter[13]~92\,
	combout => \counter[14]~93_combout\,
	cout => \counter[14]~94\);

-- Location: FF_X38_Y45_N29
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[14]~93_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X38_Y45_N30
\counter[15]~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~95_combout\ = (counter(15) & (!\counter[14]~94\)) # (!counter(15) & ((\counter[14]~94\) # (GND)))
-- \counter[15]~96\ = CARRY((!\counter[14]~94\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(15),
	datad => VCC,
	cin => \counter[14]~94\,
	combout => \counter[15]~95_combout\,
	cout => \counter[15]~96\);

-- Location: FF_X38_Y45_N31
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[15]~95_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X38_Y44_N0
\counter[16]~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~97_combout\ = (counter(16) & (\counter[15]~96\ $ (GND))) # (!counter(16) & (!\counter[15]~96\ & VCC))
-- \counter[16]~98\ = CARRY((counter(16) & !\counter[15]~96\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~96\,
	combout => \counter[16]~97_combout\,
	cout => \counter[16]~98\);

-- Location: FF_X38_Y44_N1
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[16]~97_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X38_Y44_N2
\counter[17]~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~99_combout\ = (counter(17) & (!\counter[16]~98\)) # (!counter(17) & ((\counter[16]~98\) # (GND)))
-- \counter[17]~100\ = CARRY((!\counter[16]~98\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(17),
	datad => VCC,
	cin => \counter[16]~98\,
	combout => \counter[17]~99_combout\,
	cout => \counter[17]~100\);

-- Location: FF_X38_Y44_N3
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[17]~99_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X38_Y44_N4
\counter[18]~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~101_combout\ = (counter(18) & (\counter[17]~100\ $ (GND))) # (!counter(18) & (!\counter[17]~100\ & VCC))
-- \counter[18]~102\ = CARRY((counter(18) & !\counter[17]~100\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~100\,
	combout => \counter[18]~101_combout\,
	cout => \counter[18]~102\);

-- Location: FF_X38_Y44_N5
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[18]~101_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X39_Y44_N12
\write_wait~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~2_combout\ = (!counter(17) & (!counter(18) & (!counter(16) & !counter(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(18),
	datac => counter(16),
	datad => counter(15),
	combout => \write_wait~2_combout\);

-- Location: LCCOMB_X39_Y45_N28
\write_wait~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~1_combout\ = (!counter(13) & (!counter(11) & (!counter(14) & !counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(13),
	datab => counter(11),
	datac => counter(14),
	datad => counter(12),
	combout => \write_wait~1_combout\);

-- Location: LCCOMB_X39_Y44_N6
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = (((!counter(4) & !counter(5))) # (!counter(7))) # (!counter(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(4),
	datab => counter(5),
	datac => counter(6),
	datad => counter(7),
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X39_Y44_N8
\write_wait~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~3_combout\ = (((\LessThan2~0_combout\) # (!counter(10))) # (!counter(8))) # (!counter(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datab => counter(8),
	datac => counter(10),
	datad => \LessThan2~0_combout\,
	combout => \write_wait~3_combout\);

-- Location: LCCOMB_X38_Y44_N6
\counter[19]~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~103_combout\ = (counter(19) & (!\counter[18]~102\)) # (!counter(19) & ((\counter[18]~102\) # (GND)))
-- \counter[19]~104\ = CARRY((!\counter[18]~102\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(19),
	datad => VCC,
	cin => \counter[18]~102\,
	combout => \counter[19]~103_combout\,
	cout => \counter[19]~104\);

-- Location: FF_X38_Y44_N7
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[19]~103_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X38_Y44_N8
\counter[20]~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~105_combout\ = (counter(20) & (\counter[19]~104\ $ (GND))) # (!counter(20) & (!\counter[19]~104\ & VCC))
-- \counter[20]~106\ = CARRY((counter(20) & !\counter[19]~104\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(20),
	datad => VCC,
	cin => \counter[19]~104\,
	combout => \counter[20]~105_combout\,
	cout => \counter[20]~106\);

-- Location: FF_X38_Y44_N9
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[20]~105_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X38_Y44_N10
\counter[21]~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~107_combout\ = (counter(21) & (!\counter[20]~106\)) # (!counter(21) & ((\counter[20]~106\) # (GND)))
-- \counter[21]~108\ = CARRY((!\counter[20]~106\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datad => VCC,
	cin => \counter[20]~106\,
	combout => \counter[21]~107_combout\,
	cout => \counter[21]~108\);

-- Location: FF_X38_Y44_N11
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[21]~107_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X38_Y44_N12
\counter[22]~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~109_combout\ = (counter(22) & (\counter[21]~108\ $ (GND))) # (!counter(22) & (!\counter[21]~108\ & VCC))
-- \counter[22]~110\ = CARRY((counter(22) & !\counter[21]~108\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(22),
	datad => VCC,
	cin => \counter[21]~108\,
	combout => \counter[22]~109_combout\,
	cout => \counter[22]~110\);

-- Location: FF_X38_Y44_N13
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[22]~109_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X39_Y44_N30
\write_wait~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~4_combout\ = (!counter(20) & (!counter(21) & (!counter(19) & !counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(21),
	datac => counter(19),
	datad => counter(22),
	combout => \write_wait~4_combout\);

-- Location: LCCOMB_X38_Y44_N14
\counter[23]~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[23]~111_combout\ = (counter(23) & (!\counter[22]~110\)) # (!counter(23) & ((\counter[22]~110\) # (GND)))
-- \counter[23]~112\ = CARRY((!\counter[22]~110\) # (!counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(23),
	datad => VCC,
	cin => \counter[22]~110\,
	combout => \counter[23]~111_combout\,
	cout => \counter[23]~112\);

-- Location: FF_X38_Y44_N15
\counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[23]~111_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(23));

-- Location: LCCOMB_X38_Y44_N16
\counter[24]~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[24]~113_combout\ = (counter(24) & (\counter[23]~112\ $ (GND))) # (!counter(24) & (!\counter[23]~112\ & VCC))
-- \counter[24]~114\ = CARRY((counter(24) & !\counter[23]~112\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(24),
	datad => VCC,
	cin => \counter[23]~112\,
	combout => \counter[24]~113_combout\,
	cout => \counter[24]~114\);

-- Location: FF_X38_Y44_N17
\counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[24]~113_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(24));

-- Location: LCCOMB_X38_Y44_N18
\counter[25]~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[25]~115_combout\ = (counter(25) & (!\counter[24]~114\)) # (!counter(25) & ((\counter[24]~114\) # (GND)))
-- \counter[25]~116\ = CARRY((!\counter[24]~114\) # (!counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(25),
	datad => VCC,
	cin => \counter[24]~114\,
	combout => \counter[25]~115_combout\,
	cout => \counter[25]~116\);

-- Location: FF_X38_Y44_N19
\counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[25]~115_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(25));

-- Location: LCCOMB_X38_Y44_N20
\counter[26]~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[26]~117_combout\ = (counter(26) & (\counter[25]~116\ $ (GND))) # (!counter(26) & (!\counter[25]~116\ & VCC))
-- \counter[26]~118\ = CARRY((counter(26) & !\counter[25]~116\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(26),
	datad => VCC,
	cin => \counter[25]~116\,
	combout => \counter[26]~117_combout\,
	cout => \counter[26]~118\);

-- Location: FF_X38_Y44_N21
\counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[26]~117_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(26));

-- Location: LCCOMB_X38_Y44_N22
\counter[27]~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[27]~119_combout\ = (counter(27) & (!\counter[26]~118\)) # (!counter(27) & ((\counter[26]~118\) # (GND)))
-- \counter[27]~120\ = CARRY((!\counter[26]~118\) # (!counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(27),
	datad => VCC,
	cin => \counter[26]~118\,
	combout => \counter[27]~119_combout\,
	cout => \counter[27]~120\);

-- Location: FF_X38_Y44_N23
\counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[27]~119_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(27));

-- Location: LCCOMB_X38_Y44_N24
\counter[28]~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[28]~121_combout\ = (counter(28) & (\counter[27]~120\ $ (GND))) # (!counter(28) & (!\counter[27]~120\ & VCC))
-- \counter[28]~122\ = CARRY((counter(28) & !\counter[27]~120\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(28),
	datad => VCC,
	cin => \counter[27]~120\,
	combout => \counter[28]~121_combout\,
	cout => \counter[28]~122\);

-- Location: FF_X38_Y44_N25
\counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[28]~121_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(28));

-- Location: LCCOMB_X38_Y44_N26
\counter[29]~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[29]~123_combout\ = (counter(29) & (!\counter[28]~122\)) # (!counter(29) & ((\counter[28]~122\) # (GND)))
-- \counter[29]~124\ = CARRY((!\counter[28]~122\) # (!counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datad => VCC,
	cin => \counter[28]~122\,
	combout => \counter[29]~123_combout\,
	cout => \counter[29]~124\);

-- Location: FF_X38_Y44_N27
\counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[29]~123_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(29));

-- Location: LCCOMB_X38_Y44_N28
\counter[30]~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[30]~125_combout\ = (counter(30) & (\counter[29]~124\ $ (GND))) # (!counter(30) & (!\counter[29]~124\ & VCC))
-- \counter[30]~126\ = CARRY((counter(30) & !\counter[29]~124\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(30),
	datad => VCC,
	cin => \counter[29]~124\,
	combout => \counter[30]~125_combout\,
	cout => \counter[30]~126\);

-- Location: FF_X38_Y44_N29
\counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[30]~125_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(30));

-- Location: LCCOMB_X38_Y44_N30
\counter[31]~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[31]~127_combout\ = counter(31) $ (\counter[30]~126\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(31),
	cin => \counter[30]~126\,
	combout => \counter[31]~127_combout\);

-- Location: FF_X38_Y44_N31
\counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \counter[31]~127_combout\,
	clrn => \rst~input_o\,
	sclr => \ALT_INV_write_wait~q\,
	ena => \counter[13]~88_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(31));

-- Location: LCCOMB_X39_Y44_N4
\write_wait~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~5_combout\ = (!counter(24) & (!counter(25) & (!counter(26) & !counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(24),
	datab => counter(25),
	datac => counter(26),
	datad => counter(23),
	combout => \write_wait~5_combout\);

-- Location: LCCOMB_X39_Y44_N2
\write_wait~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~6_combout\ = (!counter(29) & (!counter(30) & (!counter(28) & !counter(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(29),
	datab => counter(30),
	datac => counter(28),
	datad => counter(27),
	combout => \write_wait~6_combout\);

-- Location: LCCOMB_X39_Y44_N20
\write_wait~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~7_combout\ = (\write_wait~4_combout\ & (!counter(31) & (\write_wait~5_combout\ & \write_wait~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_wait~4_combout\,
	datab => counter(31),
	datac => \write_wait~5_combout\,
	datad => \write_wait~6_combout\,
	combout => \write_wait~7_combout\);

-- Location: LCCOMB_X39_Y44_N14
\write_wait~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~8_combout\ = (\write_wait~2_combout\ & (\write_wait~1_combout\ & (\write_wait~3_combout\ & \write_wait~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_wait~2_combout\,
	datab => \write_wait~1_combout\,
	datac => \write_wait~3_combout\,
	datad => \write_wait~7_combout\,
	combout => \write_wait~8_combout\);

-- Location: LCCOMB_X39_Y41_N4
\write_wait~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~9_combout\ = (\write_wait~q\ & (((\write_wait~8_combout\)))) # (!\write_wait~q\ & (!keycode(6) & ((!\always3~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_wait~q\,
	datab => keycode(6),
	datac => \write_wait~8_combout\,
	datad => \always3~12_combout\,
	combout => \write_wait~9_combout\);

-- Location: LCCOMB_X39_Y41_N12
\write_wait~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \write_wait~0_combout\ = (\write_wait~9_combout\ & ((\write_wait~q\) # ((\WideOr0~2_combout\ & !keycode(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~2_combout\,
	datab => keycode(7),
	datac => \write_wait~q\,
	datad => \write_wait~9_combout\,
	combout => \write_wait~0_combout\);

-- Location: FF_X39_Y41_N13
write_wait : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \write_wait~0_combout\,
	asdata => \write_wait~q\,
	clrn => \rst~input_o\,
	sload => \ALT_INV_resetram~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \write_wait~q\);

-- Location: LCCOMB_X39_Y41_N28
\always2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always2~0_combout\ = (!keycode(6) & (!keycode(7) & (\WideOr0~2_combout\ & !\always3~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => keycode(6),
	datab => keycode(7),
	datac => \WideOr0~2_combout\,
	datad => \always3~12_combout\,
	combout => \always2~0_combout\);

-- Location: LCCOMB_X39_Y41_N22
\backgroundR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundR[0]~0_combout\ = (!\write_wait~q\ & (\resetram~q\ & (\Decoder1~1_combout\ & \always2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \write_wait~q\,
	datab => \resetram~q\,
	datac => \Decoder1~1_combout\,
	datad => \always2~0_combout\,
	combout => \backgroundR[0]~0_combout\);

-- Location: FF_X39_Y43_N1
\backgroundR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \backgroundR[0]~1_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backgroundR(0));

-- Location: LCCOMB_X38_Y43_N26
\Rout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Rout[0]~0_combout\ = (\resetram~q\ & (!writeR(0))) # (!\resetram~q\ & ((backgroundR(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writeR(0),
	datab => backgroundR(0),
	datac => \resetram~q\,
	combout => \Rout[0]~0_combout\);

-- Location: LCCOMB_X36_Y42_N18
\sram_addr~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~20_combout\ = (!\resetram~q\) # (!\always3~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \always3~12_combout\,
	datad => \resetram~q\,
	combout => \sram_addr~20_combout\);

-- Location: LCCOMB_X39_Y43_N28
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\kbIn|rxdata\(3) & (!\kbIn|rxdata\(0) & (\kbIn|rxdata\(4) & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxdata\(3),
	datab => \kbIn|rxdata\(0),
	datac => \kbIn|rxdata\(4),
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X39_Y43_N22
\writeG[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeG[0]~0_combout\ = writeG(0) $ (((!\kbIn|rxdata\(1) & (\kbIn|rxdata\(2) & \Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxdata\(1),
	datab => \kbIn|rxdata\(2),
	datac => writeG(0),
	datad => \Decoder0~3_combout\,
	combout => \writeG[0]~0_combout\);

-- Location: FF_X39_Y43_N23
\writeG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \writeG[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeG(0));

-- Location: LCCOMB_X39_Y43_N8
\backgroundG[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundG[0]~0_combout\ = !writeG(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writeG(0),
	combout => \backgroundG[0]~0_combout\);

-- Location: FF_X39_Y43_N9
\backgroundG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \backgroundG[0]~0_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backgroundG(0));

-- Location: LCCOMB_X39_Y43_N2
\Gout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Gout[0]~0_combout\ = (\resetram~q\ & ((!writeG(0)))) # (!\resetram~q\ & (backgroundG(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetram~q\,
	datab => backgroundG(0),
	datad => writeG(0),
	combout => \Gout[0]~0_combout\);

-- Location: LCCOMB_X39_Y43_N4
\writeB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \writeB[0]~0_combout\ = writeB(0) $ (((\kbIn|rxdata\(1) & (!\kbIn|rxdata\(2) & \Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \kbIn|rxdata\(1),
	datab => \kbIn|rxdata\(2),
	datac => writeB(0),
	datad => \Decoder0~3_combout\,
	combout => \writeB[0]~0_combout\);

-- Location: FF_X39_Y43_N5
\writeB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \master_clk~inputclkctrl_outclk\,
	d => \writeB[0]~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => writeB(0));

-- Location: LCCOMB_X39_Y43_N26
\backgroundB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundB[0]~0_combout\ = !writeB(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => writeB(0),
	combout => \backgroundB[0]~0_combout\);

-- Location: FF_X39_Y43_N27
\backgroundB[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \backgroundB[0]~0_combout\,
	clrn => \rst~input_o\,
	ena => \backgroundR[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => backgroundB(0));

-- Location: LCCOMB_X39_Y43_N30
\Bout[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Bout[0]~0_combout\ = (\resetram~q\ & ((!writeB(0)))) # (!\resetram~q\ & (backgroundB(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => backgroundB(0),
	datab => writeB(0),
	datad => \resetram~q\,
	combout => \Bout[0]~0_combout\);

-- Location: IOIBUF_X5_Y0_N8
\sram_data[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sram_data(0),
	o => \sram_data[0]~input_o\);

-- Location: LCCOMB_X35_Y41_N10
\blink[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink[0]~12_combout\ = blink(0) $ (VCC)
-- \blink[0]~13\ = CARRY(blink(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(0),
	datad => VCC,
	combout => \blink[0]~12_combout\,
	cout => \blink[0]~13\);

-- Location: LCCOMB_X35_Y41_N28
\WideOr0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~4_combout\ = (!keycode(7) & (!keycode(6) & \WideOr0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => keycode(7),
	datac => keycode(6),
	datad => \WideOr0~2_combout\,
	combout => \WideOr0~4_combout\);

-- Location: LCCOMB_X35_Y41_N26
\blink[2]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink[2]~20_combout\ = (\resetram~q\ & (!\always3~12_combout\ & !\write_wait~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetram~q\,
	datac => \always3~12_combout\,
	datad => \write_wait~q\,
	combout => \blink[2]~20_combout\);

-- Location: FF_X35_Y41_N11
\blink[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \blink[0]~12_combout\,
	clrn => \rst~input_o\,
	sclr => \WideOr0~4_combout\,
	ena => \blink[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink(0));

-- Location: LCCOMB_X35_Y41_N12
\blink[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink[1]~14_combout\ = (blink(1) & (!\blink[0]~13\)) # (!blink(1) & ((\blink[0]~13\) # (GND)))
-- \blink[1]~15\ = CARRY((!\blink[0]~13\) # (!blink(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => blink(1),
	datad => VCC,
	cin => \blink[0]~13\,
	combout => \blink[1]~14_combout\,
	cout => \blink[1]~15\);

-- Location: FF_X35_Y41_N13
\blink[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \blink[1]~14_combout\,
	clrn => \rst~input_o\,
	sclr => \WideOr0~4_combout\,
	ena => \blink[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink(1));

-- Location: LCCOMB_X35_Y41_N14
\blink[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink[2]~16_combout\ = (blink(2) & (\blink[1]~15\ $ (GND))) # (!blink(2) & (!\blink[1]~15\ & VCC))
-- \blink[2]~17\ = CARRY((blink(2) & !\blink[1]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(2),
	datad => VCC,
	cin => \blink[1]~15\,
	combout => \blink[2]~16_combout\,
	cout => \blink[2]~17\);

-- Location: FF_X35_Y41_N15
\blink[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \blink[2]~16_combout\,
	clrn => \rst~input_o\,
	sclr => \WideOr0~4_combout\,
	ena => \blink[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink(2));

-- Location: LCCOMB_X35_Y41_N16
\blink[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink[3]~18_combout\ = (blink(3) & (!\blink[2]~17\)) # (!blink(3) & ((\blink[2]~17\) # (GND)))
-- \blink[3]~19\ = CARRY((!\blink[2]~17\) # (!blink(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(3),
	datad => VCC,
	cin => \blink[2]~17\,
	combout => \blink[3]~18_combout\,
	cout => \blink[3]~19\);

-- Location: FF_X35_Y41_N17
\blink[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \blink[3]~18_combout\,
	clrn => \rst~input_o\,
	sclr => \WideOr0~4_combout\,
	ena => \blink[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink(3));

-- Location: LCCOMB_X35_Y41_N18
\blink[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink[4]~21_combout\ = (blink(4) & (\blink[3]~19\ $ (GND))) # (!blink(4) & (!\blink[3]~19\ & VCC))
-- \blink[4]~22\ = CARRY((blink(4) & !\blink[3]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => blink(4),
	datad => VCC,
	cin => \blink[3]~19\,
	combout => \blink[4]~21_combout\,
	cout => \blink[4]~22\);

-- Location: FF_X35_Y41_N19
\blink[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \blink[4]~21_combout\,
	clrn => \rst~input_o\,
	sclr => \WideOr0~4_combout\,
	ena => \blink[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink(4));

-- Location: LCCOMB_X35_Y41_N20
\blink[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \blink[5]~23_combout\ = \blink[4]~22\ $ (blink(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => blink(5),
	cin => \blink[4]~22\,
	combout => \blink[5]~23_combout\);

-- Location: FF_X35_Y41_N21
\blink[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \reduce1|VGA_clk~clkctrl_outclk\,
	d => \blink[5]~23_combout\,
	clrn => \rst~input_o\,
	sclr => \WideOr0~4_combout\,
	ena => \blink[2]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => blink(5));

-- Location: LCCOMB_X35_Y41_N6
\VGA_G~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~1_combout\ = (blink(5)) # ((blink(4)) # ((\WideOr0~2_combout\ & \WideOr0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr0~2_combout\,
	datab => blink(5),
	datac => \WideOr0~3_combout\,
	datad => blink(4),
	combout => \VGA_G~1_combout\);

-- Location: LCCOMB_X35_Y41_N24
\VGA_G~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~0_combout\ = (blink(3) & ((blink(2)) # ((blink(0) & blink(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => blink(0),
	datab => blink(3),
	datac => blink(2),
	datad => blink(1),
	combout => \VGA_G~0_combout\);

-- Location: LCCOMB_X35_Y41_N0
\VGA_G~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~2_combout\ = (\VGA_G~1_combout\) # ((\VGA_G~0_combout\) # ((\always3~12_combout\) # (!\resetram~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_G~1_combout\,
	datab => \VGA_G~0_combout\,
	datac => \always3~12_combout\,
	datad => \resetram~q\,
	combout => \VGA_G~2_combout\);

-- Location: LCCOMB_X39_Y43_N10
\VGA_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = (backgroundG(0) & (!writeG(0) & (writeR(0) $ (backgroundR(0))))) # (!backgroundG(0) & (writeG(0) & (writeR(0) $ (backgroundR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => backgroundG(0),
	datab => writeR(0),
	datac => writeG(0),
	datad => backgroundR(0),
	combout => \VGA_R~0_combout\);

-- Location: LCCOMB_X39_Y43_N20
\VGA_R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~1_combout\ = (\VGA_R~0_combout\ & (writeB(0) $ (backgroundB(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_R~0_combout\,
	datab => writeB(0),
	datac => backgroundB(0),
	combout => \VGA_R~1_combout\);

-- Location: LCCOMB_X36_Y42_N6
\VGA_R~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~2_combout\ = (\VGA_G~2_combout\ & (\sram_data[0]~input_o\)) # (!\VGA_G~2_combout\ & (((\VGA_R~1_combout\) # (backgroundR(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data[0]~input_o\,
	datab => \VGA_G~2_combout\,
	datac => \VGA_R~1_combout\,
	datad => backgroundR(0),
	combout => \VGA_R~2_combout\);

-- Location: LCCOMB_X36_Y42_N30
\VGA_R~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~3_combout\ = (\VGA_G~2_combout\ & (\sram_data[0]~input_o\)) # (!\VGA_G~2_combout\ & ((\VGA_R~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data[0]~input_o\,
	datab => \VGA_G~2_combout\,
	datac => \VGA_R~1_combout\,
	combout => \VGA_R~3_combout\);

-- Location: LCCOMB_X36_Y42_N24
\VGA_R~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~4_combout\ = (\sram_data[0]~input_o\ & \VGA_G~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[0]~input_o\,
	datad => \VGA_G~2_combout\,
	combout => \VGA_R~4_combout\);

-- Location: IOIBUF_X1_Y0_N1
\sram_data[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sram_data(1),
	o => \sram_data[1]~input_o\);

-- Location: LCCOMB_X35_Y41_N22
\VGA_G~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~3_combout\ = (\VGA_G~2_combout\ & (((\sram_data[1]~input_o\)))) # (!\VGA_G~2_combout\ & ((backgroundG(0)) # ((\VGA_R~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => backgroundG(0),
	datab => \VGA_G~2_combout\,
	datac => \sram_data[1]~input_o\,
	datad => \VGA_R~1_combout\,
	combout => \VGA_G~3_combout\);

-- Location: LCCOMB_X35_Y41_N4
\VGA_G~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~4_combout\ = (\VGA_G~2_combout\ & (\sram_data[1]~input_o\)) # (!\VGA_G~2_combout\ & ((\VGA_R~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_G~2_combout\,
	datac => \sram_data[1]~input_o\,
	datad => \VGA_R~1_combout\,
	combout => \VGA_G~4_combout\);

-- Location: LCCOMB_X35_Y41_N30
\VGA_G~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_G~5_combout\ = (\sram_data[1]~input_o\ & \VGA_G~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sram_data[1]~input_o\,
	datad => \VGA_G~2_combout\,
	combout => \VGA_G~5_combout\);

-- Location: IOIBUF_X9_Y0_N22
\sram_data[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => sram_data(2),
	o => \sram_data[2]~input_o\);

-- Location: LCCOMB_X39_Y43_N6
\VGA_B~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B~0_combout\ = (\VGA_G~2_combout\ & (((\sram_data[2]~input_o\)))) # (!\VGA_G~2_combout\ & ((backgroundB(0)) # ((\VGA_R~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => backgroundB(0),
	datab => \VGA_G~2_combout\,
	datac => \VGA_R~1_combout\,
	datad => \sram_data[2]~input_o\,
	combout => \VGA_B~0_combout\);

-- Location: LCCOMB_X39_Y43_N16
\VGA_B~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B~1_combout\ = (\VGA_G~2_combout\ & ((\sram_data[2]~input_o\))) # (!\VGA_G~2_combout\ & (\VGA_R~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_R~1_combout\,
	datab => \VGA_G~2_combout\,
	datad => \sram_data[2]~input_o\,
	combout => \VGA_B~1_combout\);

-- Location: LCCOMB_X39_Y43_N18
\VGA_B~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_B~2_combout\ = (\sram_data[2]~input_o\ & \VGA_G~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_data[2]~input_o\,
	datad => \VGA_G~2_combout\,
	combout => \VGA_B~2_combout\);

-- Location: LCCOMB_X39_Y40_N22
\gen1|p_hSync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|p_hSync~0_combout\ = (\gen1|xCount\(9) & (\gen1|xCount\(7) & !\gen1|xCount\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1|xCount\(9),
	datac => \gen1|xCount\(7),
	datad => \gen1|xCount\(8),
	combout => \gen1|p_hSync~0_combout\);

-- Location: LCCOMB_X39_Y40_N8
\gen1|p_hSync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|p_hSync~1_combout\ = (\gen1|xCount\(6) & ((\gen1|xCount\(2)) # ((\gen1|xCount\(1) & \gen1|xCount\(0))))) # (!\gen1|xCount\(6) & (\gen1|xCount\(1) & (\gen1|xCount\(0) & \gen1|xCount\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(1),
	datab => \gen1|xCount\(6),
	datac => \gen1|xCount\(0),
	datad => \gen1|xCount\(2),
	combout => \gen1|p_hSync~1_combout\);

-- Location: LCCOMB_X39_Y40_N10
\gen1|p_hSync~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|p_hSync~2_combout\ = (\gen1|xCount\(4)) # ((\gen1|xCount\(3) & \gen1|p_hSync~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \gen1|xCount\(3),
	datac => \gen1|xCount\(4),
	datad => \gen1|p_hSync~1_combout\,
	combout => \gen1|p_hSync~2_combout\);

-- Location: LCCOMB_X39_Y40_N28
\gen1|p_hSync~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|p_hSync~3_combout\ = ((\gen1|xCount\(5) & (\gen1|xCount\(6) & \gen1|p_hSync~2_combout\)) # (!\gen1|xCount\(5) & (!\gen1|xCount\(6) & !\gen1|p_hSync~2_combout\))) # (!\gen1|p_hSync~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(5),
	datab => \gen1|xCount\(6),
	datac => \gen1|p_hSync~0_combout\,
	datad => \gen1|p_hSync~2_combout\,
	combout => \gen1|p_hSync~3_combout\);

-- Location: LCCOMB_X36_Y40_N12
\gen1|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|LessThan1~0_combout\ = (\gen1|yCount\(7) & (\gen1|yCount\(5) & (\gen1|yCount\(8) & \gen1|yCount\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(7),
	datab => \gen1|yCount\(5),
	datac => \gen1|yCount\(8),
	datad => \gen1|yCount\(6),
	combout => \gen1|LessThan1~0_combout\);

-- Location: LCCOMB_X38_Y42_N6
\gen1|p_vSync~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|p_vSync~0_combout\ = (\gen1|yCount\(2)) # (((\gen1|yCount\(4)) # (\gen1|yCount\(9))) # (!\gen1|yCount\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(2),
	datab => \gen1|yCount\(3),
	datac => \gen1|yCount\(4),
	datad => \gen1|yCount\(9),
	combout => \gen1|p_vSync~0_combout\);

-- Location: LCCOMB_X38_Y42_N4
\gen1|p_vSync~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|p_vSync~1_combout\ = ((\gen1|p_vSync~0_combout\) # (!\gen1|yCount\(1))) # (!\gen1|LessThan1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|LessThan1~0_combout\,
	datac => \gen1|yCount\(1),
	datad => \gen1|p_vSync~0_combout\,
	combout => \gen1|p_vSync~1_combout\);

-- Location: LCCOMB_X39_Y40_N18
\gen1|displayArea~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|displayArea~0_combout\ = (!\gen1|xCount\(7) & !\gen1|xCount\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \gen1|xCount\(7),
	datad => \gen1|xCount\(8),
	combout => \gen1|displayArea~0_combout\);

-- Location: LCCOMB_X38_Y42_N10
\gen1|displayArea~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \gen1|displayArea~1_combout\ = (!\gen1|yCount\(9) & (!\gen1|LessThan1~0_combout\ & ((\gen1|displayArea~0_combout\) # (!\gen1|xCount\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(9),
	datab => \gen1|yCount\(9),
	datac => \gen1|displayArea~0_combout\,
	datad => \gen1|LessThan1~0_combout\,
	combout => \gen1|displayArea~1_combout\);

-- Location: LCCOMB_X38_Y42_N24
\sram_addr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~0_combout\ = (\always3~12_combout\ & ((\resetram~q\ & (\gen1|yCount\(0))) # (!\resetram~q\ & ((writey(0)))))) # (!\always3~12_combout\ & (((writey(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always3~12_combout\,
	datab => \gen1|yCount\(0),
	datac => \resetram~q\,
	datad => writey(0),
	combout => \sram_addr~0_combout\);

-- Location: LCCOMB_X38_Y42_N30
\sram_addr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~1_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|yCount\(1)))) # (!\always3~12_combout\ & (writey(1))))) # (!\resetram~q\ & (writey(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(1),
	datab => \resetram~q\,
	datac => \gen1|yCount\(1),
	datad => \always3~12_combout\,
	combout => \sram_addr~1_combout\);

-- Location: LCCOMB_X38_Y42_N12
\sram_addr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~2_combout\ = (\resetram~q\ & ((\always3~12_combout\ & (\gen1|yCount\(2))) # (!\always3~12_combout\ & ((writey(2)))))) # (!\resetram~q\ & (((writey(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|yCount\(2),
	datab => writey(2),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~2_combout\);

-- Location: LCCOMB_X38_Y42_N2
\sram_addr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~3_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|yCount\(3)))) # (!\always3~12_combout\ & (writey(3))))) # (!\resetram~q\ & (writey(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(3),
	datab => \gen1|yCount\(3),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~3_combout\);

-- Location: LCCOMB_X36_Y42_N14
\sram_addr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~4_combout\ = (\always3~12_combout\ & ((\resetram~q\ & ((\gen1|yCount\(4)))) # (!\resetram~q\ & (writey(4))))) # (!\always3~12_combout\ & (writey(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(4),
	datab => \always3~12_combout\,
	datac => \gen1|yCount\(4),
	datad => \resetram~q\,
	combout => \sram_addr~4_combout\);

-- Location: LCCOMB_X36_Y40_N22
\sram_addr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~5_combout\ = (\always3~12_combout\ & ((\resetram~q\ & ((\gen1|yCount\(5)))) # (!\resetram~q\ & (writey(5))))) # (!\always3~12_combout\ & (writey(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(5),
	datab => \gen1|yCount\(5),
	datac => \always3~12_combout\,
	datad => \resetram~q\,
	combout => \sram_addr~5_combout\);

-- Location: LCCOMB_X36_Y40_N24
\sram_addr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~6_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|yCount\(6)))) # (!\always3~12_combout\ & (writey(6))))) # (!\resetram~q\ & (writey(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(6),
	datab => \resetram~q\,
	datac => \always3~12_combout\,
	datad => \gen1|yCount\(6),
	combout => \sram_addr~6_combout\);

-- Location: LCCOMB_X42_Y40_N20
\sram_addr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~7_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|yCount\(7)))) # (!\always3~12_combout\ & (writey(7))))) # (!\resetram~q\ & (writey(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(7),
	datab => \gen1|yCount\(7),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~7_combout\);

-- Location: LCCOMB_X38_Y42_N16
\sram_addr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~8_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|yCount\(8)))) # (!\always3~12_combout\ & (writey(8))))) # (!\resetram~q\ & (writey(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writey(8),
	datab => \gen1|yCount\(8),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~8_combout\);

-- Location: LCCOMB_X38_Y42_N26
\sram_addr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~9_combout\ = (\always3~12_combout\ & ((\resetram~q\ & ((\gen1|yCount\(9)))) # (!\resetram~q\ & (writey(9))))) # (!\always3~12_combout\ & (((writey(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always3~12_combout\,
	datab => \resetram~q\,
	datac => writey(9),
	datad => \gen1|yCount\(9),
	combout => \sram_addr~9_combout\);

-- Location: LCCOMB_X39_Y40_N16
\sram_addr~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~10_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|xCount\(0)))) # (!\always3~12_combout\ & (writex(0))))) # (!\resetram~q\ & (writex(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(0),
	datab => \gen1|xCount\(0),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~10_combout\);

-- Location: LCCOMB_X42_Y40_N22
\sram_addr~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~11_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|xCount\(1)))) # (!\always3~12_combout\ & (writex(1))))) # (!\resetram~q\ & (writex(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(1),
	datab => \gen1|xCount\(1),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~11_combout\);

-- Location: LCCOMB_X42_Y40_N12
\sram_addr~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~12_combout\ = (\resetram~q\ & ((\always3~12_combout\ & (\gen1|xCount\(2))) # (!\always3~12_combout\ & ((writex(2)))))) # (!\resetram~q\ & (((writex(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(2),
	datab => writex(2),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~12_combout\);

-- Location: LCCOMB_X39_Y40_N30
\sram_addr~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~13_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|xCount\(3)))) # (!\always3~12_combout\ & (writex(3))))) # (!\resetram~q\ & (writex(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetram~q\,
	datab => writex(3),
	datac => \gen1|xCount\(3),
	datad => \always3~12_combout\,
	combout => \sram_addr~13_combout\);

-- Location: LCCOMB_X42_Y40_N30
\sram_addr~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~14_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|xCount\(4)))) # (!\always3~12_combout\ & (writex(4))))) # (!\resetram~q\ & (writex(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(4),
	datab => \gen1|xCount\(4),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~14_combout\);

-- Location: LCCOMB_X42_Y40_N4
\sram_addr~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~15_combout\ = (\resetram~q\ & ((\always3~12_combout\ & (\gen1|xCount\(5))) # (!\always3~12_combout\ & ((writex(5)))))) # (!\resetram~q\ & (((writex(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(5),
	datab => writex(5),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~15_combout\);

-- Location: LCCOMB_X42_Y40_N10
\sram_addr~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~16_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|xCount\(6)))) # (!\always3~12_combout\ & (writex(6))))) # (!\resetram~q\ & (((writex(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resetram~q\,
	datab => \always3~12_combout\,
	datac => writex(6),
	datad => \gen1|xCount\(6),
	combout => \sram_addr~16_combout\);

-- Location: LCCOMB_X39_Y40_N24
\sram_addr~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~17_combout\ = (\resetram~q\ & ((\always3~12_combout\ & (\gen1|xCount\(7))) # (!\always3~12_combout\ & ((writex(7)))))) # (!\resetram~q\ & (((writex(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(7),
	datab => writex(7),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~17_combout\);

-- Location: LCCOMB_X39_Y40_N14
\sram_addr~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~18_combout\ = (\resetram~q\ & ((\always3~12_combout\ & ((\gen1|xCount\(8)))) # (!\always3~12_combout\ & (writex(8))))) # (!\resetram~q\ & (writex(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => writex(8),
	datab => \gen1|xCount\(8),
	datac => \resetram~q\,
	datad => \always3~12_combout\,
	combout => \sram_addr~18_combout\);

-- Location: LCCOMB_X38_Y42_N20
\sram_addr~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_addr~19_combout\ = (\resetram~q\ & ((\always3~12_combout\ & (\gen1|xCount\(9))) # (!\always3~12_combout\ & ((writex(9)))))) # (!\resetram~q\ & (((writex(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \gen1|xCount\(9),
	datab => \resetram~q\,
	datac => writex(9),
	datad => \always3~12_combout\,
	combout => \sram_addr~19_combout\);

ww_DAC_clk <= \DAC_clk~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_VGA_hSync <= \VGA_hSync~output_o\;

ww_VGA_vSync <= \VGA_vSync~output_o\;

ww_blank_n <= \blank_n~output_o\;

ww_sram_addr(0) <= \sram_addr[0]~output_o\;

ww_sram_addr(1) <= \sram_addr[1]~output_o\;

ww_sram_addr(2) <= \sram_addr[2]~output_o\;

ww_sram_addr(3) <= \sram_addr[3]~output_o\;

ww_sram_addr(4) <= \sram_addr[4]~output_o\;

ww_sram_addr(5) <= \sram_addr[5]~output_o\;

ww_sram_addr(6) <= \sram_addr[6]~output_o\;

ww_sram_addr(7) <= \sram_addr[7]~output_o\;

ww_sram_addr(8) <= \sram_addr[8]~output_o\;

ww_sram_addr(9) <= \sram_addr[9]~output_o\;

ww_sram_addr(10) <= \sram_addr[10]~output_o\;

ww_sram_addr(11) <= \sram_addr[11]~output_o\;

ww_sram_addr(12) <= \sram_addr[12]~output_o\;

ww_sram_addr(13) <= \sram_addr[13]~output_o\;

ww_sram_addr(14) <= \sram_addr[14]~output_o\;

ww_sram_addr(15) <= \sram_addr[15]~output_o\;

ww_sram_addr(16) <= \sram_addr[16]~output_o\;

ww_sram_addr(17) <= \sram_addr[17]~output_o\;

ww_sram_addr(18) <= \sram_addr[18]~output_o\;

ww_sram_addr(19) <= \sram_addr[19]~output_o\;

ww_sram_ce <= \sram_ce~output_o\;

ww_sram_oe <= \sram_oe~output_o\;

ww_sram_we <= \sram_we~output_o\;

ww_sram_lb <= \sram_lb~output_o\;

ww_sram_ub <= \sram_ub~output_o\;

sram_data(0) <= \sram_data[0]~output_o\;

sram_data(1) <= \sram_data[1]~output_o\;

sram_data(2) <= \sram_data[2]~output_o\;
END structure;


