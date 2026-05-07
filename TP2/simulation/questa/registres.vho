-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "05/07/2026 16:24:41"

-- 
-- Device: Altera 5CGXFC5C6F27C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for QuestaSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	toplevel IS
    PORT (
	SW : IN std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDG : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- SW[3]	=>  Location: PIN_AC8,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_W11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_V10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_P12,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- LEDG[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[1]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[2]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[6]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDG[7]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_Y15,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AC9,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AE10,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AD13,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_Y11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_P11,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 1.2 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE19,	 I/O Standard: 1.2 V,	 Current Strength: Default


ARCHITECTURE structure OF toplevel IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDG : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \DUT|Q_int[0]~27_combout\ : std_logic;
SIGNAL \DUT|Q_int[0]~1_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \DUT|Mux0~1_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \DUT|Mux0~0_combout\ : std_logic;
SIGNAL \DUT|Q_int[7]~17_combout\ : std_logic;
SIGNAL \DUT|Q_int[0]~0_combout\ : std_logic;
SIGNAL \DUT|Q_int[7]~_emulated_q\ : std_logic;
SIGNAL \DUT|Q_int[7]~16_combout\ : std_logic;
SIGNAL \DUT|Mux1~0_combout\ : std_logic;
SIGNAL \DUT|Q_int[6]~15_combout\ : std_logic;
SIGNAL \DUT|Q_int[1]~28_combout\ : std_logic;
SIGNAL \DUT|Q_int[6]~_emulated_q\ : std_logic;
SIGNAL \DUT|Q_int[6]~14_combout\ : std_logic;
SIGNAL \DUT|Mux2~0_combout\ : std_logic;
SIGNAL \DUT|Q_int[5]~13_combout\ : std_logic;
SIGNAL \DUT|Q_int[5]~_emulated_q\ : std_logic;
SIGNAL \DUT|Q_int[5]~12_combout\ : std_logic;
SIGNAL \DUT|Mux3~0_combout\ : std_logic;
SIGNAL \DUT|Q_int[4]~11_combout\ : std_logic;
SIGNAL \DUT|Q_int[4]~_emulated_q\ : std_logic;
SIGNAL \DUT|Q_int[4]~10_combout\ : std_logic;
SIGNAL \DUT|Mux4~0_combout\ : std_logic;
SIGNAL \DUT|Q_int[3]~9_combout\ : std_logic;
SIGNAL \DUT|Q_int[3]~_emulated_q\ : std_logic;
SIGNAL \DUT|Q_int[3]~8_combout\ : std_logic;
SIGNAL \DUT|Mux5~0_combout\ : std_logic;
SIGNAL \DUT|Q_int[2]~7_combout\ : std_logic;
SIGNAL \DUT|Q_int[2]~_emulated_q\ : std_logic;
SIGNAL \DUT|Q_int[2]~6_combout\ : std_logic;
SIGNAL \DUT|Mux6~0_combout\ : std_logic;
SIGNAL \DUT|Q_int[1]~5_combout\ : std_logic;
SIGNAL \DUT|Q_int[1]~_emulated_q\ : std_logic;
SIGNAL \DUT|Q_int[1]~4_combout\ : std_logic;
SIGNAL \DUT|Mux7~0_combout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \DUT|Mux7~1_combout\ : std_logic;
SIGNAL \DUT|Q_int[0]~3_combout\ : std_logic;
SIGNAL \DUT|Q_int[0]~_emulated_q\ : std_logic;
SIGNAL \DUT|Q_int[0]~2_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[0]~_emulated_q\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[0]~2_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[1]~_emulated_q\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[2]~6_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[3]~_emulated_q\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[3]~8_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[5]~_emulated_q\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[5]~12_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[6]~_emulated_q\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[6]~14_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[4]~_emulated_q\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[4]~10_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[1]~4_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[2]~_emulated_q\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux7~0_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[2]~input_o\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[7]~16_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux7~1_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[0]~27_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~inputCLKENA0_outclk\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[0]~0_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_KEY[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \DUT|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \DUT|ALT_INV_Q_int[7]~_emulated_q\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;

BEGIN

ww_SW <= SW;
ww_KEY <= KEY;
LEDG <= ww_LEDG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\DUT|ALT_INV_Q_int[0]~_emulated_q\ <= NOT \DUT|Q_int[0]~_emulated_q\;
\DUT|ALT_INV_Q_int[0]~2_combout\ <= NOT \DUT|Q_int[0]~2_combout\;
\DUT|ALT_INV_Q_int[1]~_emulated_q\ <= NOT \DUT|Q_int[1]~_emulated_q\;
\DUT|ALT_INV_Q_int[2]~6_combout\ <= NOT \DUT|Q_int[2]~6_combout\;
\DUT|ALT_INV_Q_int[3]~_emulated_q\ <= NOT \DUT|Q_int[3]~_emulated_q\;
\DUT|ALT_INV_Q_int[3]~8_combout\ <= NOT \DUT|Q_int[3]~8_combout\;
\DUT|ALT_INV_Q_int[5]~_emulated_q\ <= NOT \DUT|Q_int[5]~_emulated_q\;
\DUT|ALT_INV_Q_int[5]~12_combout\ <= NOT \DUT|Q_int[5]~12_combout\;
\DUT|ALT_INV_Q_int[6]~_emulated_q\ <= NOT \DUT|Q_int[6]~_emulated_q\;
\DUT|ALT_INV_Q_int[6]~14_combout\ <= NOT \DUT|Q_int[6]~14_combout\;
\DUT|ALT_INV_Q_int[4]~_emulated_q\ <= NOT \DUT|Q_int[4]~_emulated_q\;
\DUT|ALT_INV_Q_int[4]~10_combout\ <= NOT \DUT|Q_int[4]~10_combout\;
\DUT|ALT_INV_Q_int[1]~4_combout\ <= NOT \DUT|Q_int[1]~4_combout\;
\DUT|ALT_INV_Q_int[2]~_emulated_q\ <= NOT \DUT|Q_int[2]~_emulated_q\;
\DUT|ALT_INV_Mux0~1_combout\ <= NOT \DUT|Mux0~1_combout\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\DUT|ALT_INV_Mux4~0_combout\ <= NOT \DUT|Mux4~0_combout\;
\DUT|ALT_INV_Mux7~0_combout\ <= NOT \DUT|Mux7~0_combout\;
\DUT|ALT_INV_Mux2~0_combout\ <= NOT \DUT|Mux2~0_combout\;
\ALT_INV_KEY[2]~input_o\ <= NOT \KEY[2]~input_o\;
\DUT|ALT_INV_Q_int[7]~16_combout\ <= NOT \DUT|Q_int[7]~16_combout\;
\DUT|ALT_INV_Mux7~1_combout\ <= NOT \DUT|Mux7~1_combout\;
\DUT|ALT_INV_Mux5~0_combout\ <= NOT \DUT|Mux5~0_combout\;
\DUT|ALT_INV_Q_int[0]~27_combout\ <= NOT \DUT|Q_int[0]~27_combout\;
\DUT|ALT_INV_Mux3~0_combout\ <= NOT \DUT|Mux3~0_combout\;
\ALT_INV_KEY[0]~inputCLKENA0_outclk\ <= NOT \KEY[0]~inputCLKENA0_outclk\;
\DUT|ALT_INV_Q_int[0]~0_combout\ <= NOT \DUT|Q_int[0]~0_combout\;
\DUT|ALT_INV_Mux0~0_combout\ <= NOT \DUT|Mux0~0_combout\;
\DUT|ALT_INV_Mux1~0_combout\ <= NOT \DUT|Mux1~0_combout\;
\DUT|ALT_INV_Q_int[0]~1_combout\ <= NOT \DUT|Q_int[0]~1_combout\;
\ALT_INV_KEY[3]~input_o\ <= NOT \KEY[3]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\DUT|ALT_INV_Mux6~0_combout\ <= NOT \DUT|Mux6~0_combout\;
\DUT|ALT_INV_Q_int[7]~_emulated_q\ <= NOT \DUT|Q_int[7]~_emulated_q\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;

-- Location: IOOBUF_X10_Y61_N42
\LEDG[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Q_int[0]~2_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(0));

-- Location: IOOBUF_X10_Y61_N59
\LEDG[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Q_int[1]~4_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(1));

-- Location: IOOBUF_X10_Y61_N76
\LEDG[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Q_int[2]~6_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(2));

-- Location: IOOBUF_X10_Y61_N93
\LEDG[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Q_int[3]~8_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(3));

-- Location: IOOBUF_X21_Y61_N36
\LEDG[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Q_int[4]~10_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(4));

-- Location: IOOBUF_X21_Y61_N53
\LEDG[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Q_int[5]~12_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(5));

-- Location: IOOBUF_X19_Y61_N2
\LEDG[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Q_int[6]~14_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(6));

-- Location: IOOBUF_X19_Y61_N19
\LEDG[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DUT|Q_int[7]~16_combout\,
	devoe => ww_devoe,
	o => ww_LEDG(7));

-- Location: IOIBUF_X46_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X46_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X23_Y4_N48
\DUT|Q_int[0]~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[0]~27_combout\ = ( !\KEY[3]~input_o\ & ( \KEY[2]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_KEY[2]~input_o\,
	dataf => \ALT_INV_KEY[3]~input_o\,
	combout => \DUT|Q_int[0]~27_combout\);

-- Location: LABCELL_X22_Y4_N15
\DUT|Q_int[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[0]~1_combout\ = ( \DUT|Q_int[0]~1_combout\ & ( !\DUT|Q_int[0]~27_combout\ ) ) # ( !\DUT|Q_int[0]~1_combout\ & ( (!\KEY[2]~input_o\ & !\DUT|Q_int[0]~27_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datac => \DUT|ALT_INV_Q_int[0]~27_combout\,
	dataf => \DUT|ALT_INV_Q_int[0]~1_combout\,
	combout => \DUT|Q_int[0]~1_combout\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: CLKCTRL_G4
\KEY[0]~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[0]~input_o\,
	outclk => \KEY[0]~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N52
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X23_Y4_N0
\DUT|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux0~1_combout\ = ( \SW[1]~input_o\ & ( \DUT|Q_int[6]~14_combout\ & ( !\SW[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datae => \ALT_INV_SW[1]~input_o\,
	dataf => \DUT|ALT_INV_Q_int[6]~14_combout\,
	combout => \DUT|Mux0~1_combout\);

-- Location: IOIBUF_X34_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X50_Y0_N35
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X23_Y4_N30
\DUT|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux0~0_combout\ = ( \DUT|Q_int[7]~16_combout\ & ( \DUT|Q_int[0]~2_combout\ & ( ((!\SW[0]~input_o\) # (\SW[9]~input_o\)) # (\SW[2]~input_o\) ) ) ) # ( !\DUT|Q_int[7]~16_combout\ & ( \DUT|Q_int[0]~2_combout\ & ( (\SW[0]~input_o\ & ((\SW[9]~input_o\) # 
-- (\SW[2]~input_o\))) ) ) ) # ( \DUT|Q_int[7]~16_combout\ & ( !\DUT|Q_int[0]~2_combout\ & ( (!\SW[0]~input_o\) # ((!\SW[2]~input_o\ & \SW[9]~input_o\)) ) ) ) # ( !\DUT|Q_int[7]~16_combout\ & ( !\DUT|Q_int[0]~2_combout\ & ( (!\SW[2]~input_o\ & 
-- (\SW[9]~input_o\ & \SW[0]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100111111110000110000000000001111111111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	datae => \DUT|ALT_INV_Q_int[7]~16_combout\,
	dataf => \DUT|ALT_INV_Q_int[0]~2_combout\,
	combout => \DUT|Mux0~0_combout\);

-- Location: LABCELL_X23_Y4_N27
\DUT|Q_int[7]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[7]~17_combout\ = ( \DUT|Mux0~0_combout\ & ( !\DUT|Q_int[0]~1_combout\ $ (((\SW[1]~input_o\ & !\DUT|Mux0~1_combout\))) ) ) # ( !\DUT|Mux0~0_combout\ & ( !\DUT|Q_int[0]~1_combout\ $ (!\DUT|Mux0~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000010100101111100001010010111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datad => \DUT|ALT_INV_Mux0~1_combout\,
	dataf => \DUT|ALT_INV_Mux0~0_combout\,
	combout => \DUT|Q_int[7]~17_combout\);

-- Location: LABCELL_X22_Y4_N3
\DUT|Q_int[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[0]~0_combout\ = (!\KEY[2]~input_o\) # (\DUT|Q_int[0]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011101110111011101110111011101110111011101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~27_combout\,
	combout => \DUT|Q_int[0]~0_combout\);

-- Location: FF_X23_Y4_N28
\DUT|Q_int[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \DUT|Q_int[7]~17_combout\,
	clrn => \DUT|ALT_INV_Q_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|Q_int[7]~_emulated_q\);

-- Location: LABCELL_X23_Y4_N9
\DUT|Q_int[7]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[7]~16_combout\ = ( \DUT|Q_int[7]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\DUT|Q_int[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\DUT|Q_int[7]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\DUT|Q_int[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ALT_INV_Q_int[0]~27_combout\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \DUT|ALT_INV_Q_int[7]~_emulated_q\,
	combout => \DUT|Q_int[7]~16_combout\);

-- Location: LABCELL_X23_Y4_N51
\DUT|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux1~0_combout\ = ( \DUT|Q_int[5]~12_combout\ & ( (\DUT|Q_int[7]~16_combout\) # (\SW[1]~input_o\) ) ) # ( !\DUT|Q_int[5]~12_combout\ & ( (!\SW[1]~input_o\ & \DUT|Q_int[7]~16_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \DUT|ALT_INV_Q_int[7]~16_combout\,
	dataf => \DUT|ALT_INV_Q_int[5]~12_combout\,
	combout => \DUT|Mux1~0_combout\);

-- Location: LABCELL_X23_Y4_N21
\DUT|Q_int[6]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[6]~15_combout\ = ( \DUT|Mux1~0_combout\ & ( !\DUT|Q_int[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\DUT|Mux1~0_combout\ & ( \DUT|Q_int[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \DUT|ALT_INV_Mux1~0_combout\,
	combout => \DUT|Q_int[6]~15_combout\);

-- Location: LABCELL_X22_Y4_N12
\DUT|Q_int[1]~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[1]~28_combout\ = (\SW[1]~input_o\) # (\SW[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	combout => \DUT|Q_int[1]~28_combout\);

-- Location: FF_X23_Y4_N22
\DUT|Q_int[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \DUT|Q_int[6]~15_combout\,
	clrn => \DUT|ALT_INV_Q_int[0]~0_combout\,
	ena => \DUT|Q_int[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|Q_int[6]~_emulated_q\);

-- Location: LABCELL_X23_Y4_N42
\DUT|Q_int[6]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[6]~14_combout\ = ( \KEY[2]~input_o\ & ( \DUT|Q_int[6]~_emulated_q\ & ( (!\DUT|Q_int[0]~1_combout\ & !\DUT|Q_int[0]~27_combout\) ) ) ) # ( !\KEY[2]~input_o\ & ( \DUT|Q_int[6]~_emulated_q\ & ( !\DUT|Q_int[0]~27_combout\ ) ) ) # ( \KEY[2]~input_o\ 
-- & ( !\DUT|Q_int[6]~_emulated_q\ & ( (\DUT|Q_int[0]~1_combout\ & !\DUT|Q_int[0]~27_combout\) ) ) ) # ( !\KEY[2]~input_o\ & ( !\DUT|Q_int[6]~_emulated_q\ & ( !\DUT|Q_int[0]~27_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000001100000011000011110000111100001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \DUT|ALT_INV_Q_int[0]~27_combout\,
	datae => \ALT_INV_KEY[2]~input_o\,
	dataf => \DUT|ALT_INV_Q_int[6]~_emulated_q\,
	combout => \DUT|Q_int[6]~14_combout\);

-- Location: LABCELL_X23_Y4_N57
\DUT|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux2~0_combout\ = ( \DUT|Q_int[6]~14_combout\ & ( (!\SW[1]~input_o\) # (\DUT|Q_int[4]~10_combout\) ) ) # ( !\DUT|Q_int[6]~14_combout\ & ( (\SW[1]~input_o\ & \DUT|Q_int[4]~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \DUT|ALT_INV_Q_int[4]~10_combout\,
	dataf => \DUT|ALT_INV_Q_int[6]~14_combout\,
	combout => \DUT|Mux2~0_combout\);

-- Location: LABCELL_X23_Y4_N15
\DUT|Q_int[5]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[5]~13_combout\ = ( \DUT|Mux2~0_combout\ & ( !\DUT|Q_int[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\DUT|Mux2~0_combout\ & ( \DUT|Q_int[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \DUT|ALT_INV_Mux2~0_combout\,
	combout => \DUT|Q_int[5]~13_combout\);

-- Location: FF_X23_Y4_N17
\DUT|Q_int[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \DUT|Q_int[5]~13_combout\,
	clrn => \DUT|ALT_INV_Q_int[0]~0_combout\,
	ena => \DUT|Q_int[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|Q_int[5]~_emulated_q\);

-- Location: LABCELL_X23_Y4_N39
\DUT|Q_int[5]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[5]~12_combout\ = ( \DUT|Q_int[5]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\DUT|Q_int[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\DUT|Q_int[5]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\DUT|Q_int[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001010100010101000101010001010101000101010001010100010101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DUT|ALT_INV_Q_int[0]~27_combout\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	dataf => \DUT|ALT_INV_Q_int[5]~_emulated_q\,
	combout => \DUT|Q_int[5]~12_combout\);

-- Location: LABCELL_X22_Y4_N48
\DUT|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux3~0_combout\ = ( \DUT|Q_int[5]~12_combout\ & ( (!\SW[1]~input_o\) # (\DUT|Q_int[3]~8_combout\) ) ) # ( !\DUT|Q_int[5]~12_combout\ & ( (\SW[1]~input_o\ & \DUT|Q_int[3]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \DUT|ALT_INV_Q_int[3]~8_combout\,
	dataf => \DUT|ALT_INV_Q_int[5]~12_combout\,
	combout => \DUT|Mux3~0_combout\);

-- Location: LABCELL_X22_Y4_N9
\DUT|Q_int[4]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[4]~11_combout\ = ( \DUT|Mux3~0_combout\ & ( !\DUT|Q_int[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\DUT|Mux3~0_combout\ & ( \DUT|Q_int[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001001110010011100100111001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \ALT_INV_SW[0]~input_o\,
	dataf => \DUT|ALT_INV_Mux3~0_combout\,
	combout => \DUT|Q_int[4]~11_combout\);

-- Location: FF_X22_Y4_N11
\DUT|Q_int[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \DUT|Q_int[4]~11_combout\,
	clrn => \DUT|ALT_INV_Q_int[0]~0_combout\,
	ena => \DUT|Q_int[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|Q_int[4]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N36
\DUT|Q_int[4]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[4]~10_combout\ = ( \DUT|Q_int[4]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # (!\DUT|Q_int[0]~1_combout\))) ) ) # ( !\DUT|Q_int[4]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\DUT|Q_int[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101100000000101110110000000011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datad => \DUT|ALT_INV_Q_int[0]~27_combout\,
	dataf => \DUT|ALT_INV_Q_int[4]~_emulated_q\,
	combout => \DUT|Q_int[4]~10_combout\);

-- Location: LABCELL_X22_Y4_N57
\DUT|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux4~0_combout\ = ( \DUT|Q_int[4]~10_combout\ & ( \DUT|Q_int[2]~6_combout\ ) ) # ( !\DUT|Q_int[4]~10_combout\ & ( \DUT|Q_int[2]~6_combout\ & ( \SW[1]~input_o\ ) ) ) # ( \DUT|Q_int[4]~10_combout\ & ( !\DUT|Q_int[2]~6_combout\ & ( !\SW[1]~input_o\ ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101001010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datae => \DUT|ALT_INV_Q_int[4]~10_combout\,
	dataf => \DUT|ALT_INV_Q_int[2]~6_combout\,
	combout => \DUT|Mux4~0_combout\);

-- Location: LABCELL_X22_Y4_N18
\DUT|Q_int[3]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[3]~9_combout\ = ( \DUT|Mux4~0_combout\ & ( !\DUT|Q_int[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\DUT|Mux4~0_combout\ & ( \DUT|Q_int[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110000111100110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \DUT|ALT_INV_Mux4~0_combout\,
	combout => \DUT|Q_int[3]~9_combout\);

-- Location: FF_X22_Y4_N20
\DUT|Q_int[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \DUT|Q_int[3]~9_combout\,
	clrn => \DUT|ALT_INV_Q_int[0]~0_combout\,
	ena => \DUT|Q_int[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|Q_int[3]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N21
\DUT|Q_int[3]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[3]~8_combout\ = ( \DUT|Q_int[3]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\DUT|Q_int[0]~1_combout\) # (!\KEY[2]~input_o\))) ) ) # ( !\DUT|Q_int[3]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\DUT|Q_int[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011110000110000001111000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \DUT|ALT_INV_Q_int[0]~27_combout\,
	datad => \ALT_INV_KEY[2]~input_o\,
	dataf => \DUT|ALT_INV_Q_int[3]~_emulated_q\,
	combout => \DUT|Q_int[3]~8_combout\);

-- Location: LABCELL_X22_Y4_N51
\DUT|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux5~0_combout\ = ( \DUT|Q_int[1]~4_combout\ & ( (\DUT|Q_int[3]~8_combout\) # (\SW[1]~input_o\) ) ) # ( !\DUT|Q_int[1]~4_combout\ & ( (!\SW[1]~input_o\ & \DUT|Q_int[3]~8_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000001010101001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datad => \DUT|ALT_INV_Q_int[3]~8_combout\,
	dataf => \DUT|ALT_INV_Q_int[1]~4_combout\,
	combout => \DUT|Mux5~0_combout\);

-- Location: LABCELL_X22_Y4_N42
\DUT|Q_int[2]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[2]~7_combout\ = ( \DUT|Mux5~0_combout\ & ( !\DUT|Q_int[0]~1_combout\ $ (((\SW[0]~input_o\ & \SW[1]~input_o\))) ) ) # ( !\DUT|Mux5~0_combout\ & ( \DUT|Q_int[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111100000000111111110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datac => \ALT_INV_SW[1]~input_o\,
	datad => \DUT|ALT_INV_Q_int[0]~1_combout\,
	dataf => \DUT|ALT_INV_Mux5~0_combout\,
	combout => \DUT|Q_int[2]~7_combout\);

-- Location: FF_X22_Y4_N44
\DUT|Q_int[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \DUT|Q_int[2]~7_combout\,
	clrn => \DUT|ALT_INV_Q_int[0]~0_combout\,
	ena => \DUT|Q_int[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|Q_int[2]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N39
\DUT|Q_int[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[2]~6_combout\ = ( \DUT|Q_int[2]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # (!\DUT|Q_int[0]~1_combout\))) ) ) # ( !\DUT|Q_int[2]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\DUT|Q_int[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010110000101100001011000011100000111000001110000011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datac => \DUT|ALT_INV_Q_int[0]~27_combout\,
	dataf => \DUT|ALT_INV_Q_int[2]~_emulated_q\,
	combout => \DUT|Q_int[2]~6_combout\);

-- Location: LABCELL_X22_Y4_N33
\DUT|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux6~0_combout\ = (!\SW[1]~input_o\ & (\DUT|Q_int[2]~6_combout\)) # (\SW[1]~input_o\ & ((\DUT|Q_int[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \DUT|ALT_INV_Q_int[2]~6_combout\,
	datad => \DUT|ALT_INV_Q_int[0]~2_combout\,
	combout => \DUT|Mux6~0_combout\);

-- Location: LABCELL_X22_Y4_N6
\DUT|Q_int[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[1]~5_combout\ = ( \DUT|Mux6~0_combout\ & ( !\DUT|Q_int[0]~1_combout\ $ (((\SW[1]~input_o\ & \SW[0]~input_o\))) ) ) # ( !\DUT|Mux6~0_combout\ & ( \DUT|Q_int[0]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100100110011100110010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \DUT|ALT_INV_Mux6~0_combout\,
	combout => \DUT|Q_int[1]~5_combout\);

-- Location: FF_X22_Y4_N8
\DUT|Q_int[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \DUT|Q_int[1]~5_combout\,
	clrn => \DUT|ALT_INV_Q_int[0]~0_combout\,
	ena => \DUT|Q_int[1]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|Q_int[1]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N30
\DUT|Q_int[1]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[1]~4_combout\ = ( \DUT|Q_int[1]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # (!\DUT|Q_int[0]~1_combout\))) ) ) # ( !\DUT|Q_int[1]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\DUT|Q_int[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011001100110000001100110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DUT|ALT_INV_Q_int[0]~27_combout\,
	datac => \ALT_INV_KEY[2]~input_o\,
	datad => \DUT|ALT_INV_Q_int[0]~1_combout\,
	dataf => \DUT|ALT_INV_Q_int[1]~_emulated_q\,
	combout => \DUT|Q_int[1]~4_combout\);

-- Location: LABCELL_X22_Y4_N45
\DUT|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux7~0_combout\ = ( \DUT|Q_int[1]~4_combout\ & ( (\DUT|Q_int[0]~2_combout\) # (\SW[0]~input_o\) ) ) # ( !\DUT|Q_int[1]~4_combout\ & ( (!\SW[0]~input_o\ & \DUT|Q_int[0]~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[0]~input_o\,
	datad => \DUT|ALT_INV_Q_int[0]~2_combout\,
	dataf => \DUT|ALT_INV_Q_int[1]~4_combout\,
	combout => \DUT|Mux7~0_combout\);

-- Location: IOIBUF_X10_Y0_N58
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X23_Y4_N24
\DUT|Mux7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Mux7~1_combout\ = ( \DUT|Q_int[7]~16_combout\ & ( (\SW[1]~input_o\ & (!\SW[0]~input_o\ & ((\SW[8]~input_o\) # (\SW[2]~input_o\)))) ) ) # ( !\DUT|Q_int[7]~16_combout\ & ( (\SW[1]~input_o\ & (!\SW[2]~input_o\ & (\SW[8]~input_o\ & !\SW[0]~input_o\))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000010101000000000001010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \ALT_INV_SW[2]~input_o\,
	datac => \ALT_INV_SW[8]~input_o\,
	datad => \ALT_INV_SW[0]~input_o\,
	dataf => \DUT|ALT_INV_Q_int[7]~16_combout\,
	combout => \DUT|Mux7~1_combout\);

-- Location: LABCELL_X22_Y4_N24
\DUT|Q_int[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[0]~3_combout\ = ( \DUT|Mux7~0_combout\ & ( \DUT|Mux7~1_combout\ & ( !\DUT|Q_int[0]~1_combout\ ) ) ) # ( !\DUT|Mux7~0_combout\ & ( \DUT|Mux7~1_combout\ & ( !\DUT|Q_int[0]~1_combout\ ) ) ) # ( \DUT|Mux7~0_combout\ & ( !\DUT|Mux7~1_combout\ & ( 
-- !\SW[1]~input_o\ $ (\DUT|Q_int[0]~1_combout\) ) ) ) # ( !\DUT|Mux7~0_combout\ & ( !\DUT|Mux7~1_combout\ & ( \DUT|Q_int[0]~1_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011100110011001100111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~1_combout\,
	datae => \DUT|ALT_INV_Mux7~0_combout\,
	dataf => \DUT|ALT_INV_Mux7~1_combout\,
	combout => \DUT|Q_int[0]~3_combout\);

-- Location: FF_X22_Y4_N26
\DUT|Q_int[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_KEY[0]~inputCLKENA0_outclk\,
	d => \DUT|Q_int[0]~3_combout\,
	clrn => \DUT|ALT_INV_Q_int[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DUT|Q_int[0]~_emulated_q\);

-- Location: LABCELL_X22_Y4_N0
\DUT|Q_int[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DUT|Q_int[0]~2_combout\ = ( \DUT|Q_int[0]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # (!\DUT|Q_int[0]~1_combout\))) ) ) # ( !\DUT|Q_int[0]~_emulated_q\ & ( (!\DUT|Q_int[0]~27_combout\ & ((!\KEY[2]~input_o\) # 
-- (\DUT|Q_int[0]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010001100100011001000110011001000110010001100100011001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[2]~input_o\,
	datab => \DUT|ALT_INV_Q_int[0]~27_combout\,
	datac => \DUT|ALT_INV_Q_int[0]~1_combout\,
	dataf => \DUT|ALT_INV_Q_int[0]~_emulated_q\,
	combout => \DUT|Q_int[0]~2_combout\);

-- Location: IOIBUF_X14_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X10_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X12_Y0_N35
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X17_Y0_N75
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X12_Y0_N52
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X21_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LABCELL_X40_Y28_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


