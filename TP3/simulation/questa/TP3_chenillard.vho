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

-- DATE "05/07/2026 16:55:00"

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
	CLOCK_50_B6A : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END toplevel;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_AF12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_J8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50_B6A	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_CLOCK_50_B6A : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50_B6A~input_o\ : std_logic;
SIGNAL \CLOCK_50_B6A~inputCLKENA0_outclk\ : std_logic;
SIGNAL \instance_clock_divider|counter[0]~0_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \instance_clock_divider|Add0~85_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~86\ : std_logic;
SIGNAL \instance_clock_divider|Add0~81_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~82\ : std_logic;
SIGNAL \instance_clock_divider|Add0~77_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~78\ : std_logic;
SIGNAL \instance_clock_divider|Add0~73_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~74\ : std_logic;
SIGNAL \instance_clock_divider|Add0~69_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~70\ : std_logic;
SIGNAL \instance_clock_divider|Add0~65_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~66\ : std_logic;
SIGNAL \instance_clock_divider|Add0~61_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~62\ : std_logic;
SIGNAL \instance_clock_divider|Add0~57_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~58\ : std_logic;
SIGNAL \instance_clock_divider|Add0~53_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~54\ : std_logic;
SIGNAL \instance_clock_divider|Add0~49_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~50\ : std_logic;
SIGNAL \instance_clock_divider|Add0~45_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~46\ : std_logic;
SIGNAL \instance_clock_divider|Add0~41_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~42\ : std_logic;
SIGNAL \instance_clock_divider|Add0~37_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~38\ : std_logic;
SIGNAL \instance_clock_divider|Add0~33_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~34\ : std_logic;
SIGNAL \instance_clock_divider|Add0~29_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~30\ : std_logic;
SIGNAL \instance_clock_divider|Add0~25_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~26\ : std_logic;
SIGNAL \instance_clock_divider|Add0~21_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~22\ : std_logic;
SIGNAL \instance_clock_divider|Add0~17_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~18\ : std_logic;
SIGNAL \instance_clock_divider|Add0~13_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~14\ : std_logic;
SIGNAL \instance_clock_divider|Add0~9_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~10\ : std_logic;
SIGNAL \instance_clock_divider|Add0~5_sumout\ : std_logic;
SIGNAL \instance_clock_divider|Add0~6\ : std_logic;
SIGNAL \instance_clock_divider|Add0~1_sumout\ : std_logic;
SIGNAL \instance_clock_divider|counter[22]~feeder_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[2]~feeder_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[2]~DUPLICATE_q\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[3]~feeder_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[4]~1_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[5]~feeder_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[6]~feeder_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[7]~feeder_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[8]~feeder_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[9]~feeder_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int[0]~0_combout\ : std_logic;
SIGNAL \instance_chenillard|CHEN_int\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \instance_clock_divider|counter\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \instance_clock_divider|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \instance_chenillard|ALT_INV_CHEN_int\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \instance_clock_divider|ALT_INV_counter\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \instance_chenillard|ALT_INV_CHEN_int[2]~DUPLICATE_q\ : std_logic;

BEGIN

ww_CLOCK_50_B6A <= CLOCK_50_B6A;
ww_KEY <= KEY;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\instance_clock_divider|ALT_INV_Add0~1_sumout\ <= NOT \instance_clock_divider|Add0~1_sumout\;
\instance_chenillard|ALT_INV_CHEN_int\(3) <= NOT \instance_chenillard|CHEN_int\(3);
\instance_chenillard|ALT_INV_CHEN_int\(0) <= NOT \instance_chenillard|CHEN_int\(0);
\instance_chenillard|ALT_INV_CHEN_int\(1) <= NOT \instance_chenillard|CHEN_int\(1);
\instance_chenillard|ALT_INV_CHEN_int\(4) <= NOT \instance_chenillard|CHEN_int\(4);
\instance_chenillard|ALT_INV_CHEN_int\(6) <= NOT \instance_chenillard|CHEN_int\(6);
\instance_chenillard|ALT_INV_CHEN_int\(7) <= NOT \instance_chenillard|CHEN_int\(7);
\instance_chenillard|ALT_INV_CHEN_int\(5) <= NOT \instance_chenillard|CHEN_int\(5);
\instance_chenillard|ALT_INV_CHEN_int\(2) <= NOT \instance_chenillard|CHEN_int\(2);
\instance_clock_divider|ALT_INV_counter\(13) <= NOT \instance_clock_divider|counter\(13);
\instance_clock_divider|ALT_INV_counter\(10) <= NOT \instance_clock_divider|counter\(10);
\instance_chenillard|ALT_INV_CHEN_int\(8) <= NOT \instance_chenillard|CHEN_int\(8);
\instance_chenillard|ALT_INV_CHEN_int\(9) <= NOT \instance_chenillard|CHEN_int\(9);
\instance_clock_divider|ALT_INV_counter\(17) <= NOT \instance_clock_divider|counter\(17);
\instance_clock_divider|ALT_INV_counter\(14) <= NOT \instance_clock_divider|counter\(14);
\instance_clock_divider|ALT_INV_counter\(2) <= NOT \instance_clock_divider|counter\(2);
\instance_clock_divider|ALT_INV_counter\(7) <= NOT \instance_clock_divider|counter\(7);
\instance_clock_divider|ALT_INV_counter\(19) <= NOT \instance_clock_divider|counter\(19);
\instance_clock_divider|ALT_INV_counter\(18) <= NOT \instance_clock_divider|counter\(18);
\instance_clock_divider|ALT_INV_counter\(8) <= NOT \instance_clock_divider|counter\(8);
\instance_clock_divider|ALT_INV_counter\(11) <= NOT \instance_clock_divider|counter\(11);
\instance_clock_divider|ALT_INV_counter\(16) <= NOT \instance_clock_divider|counter\(16);
\instance_clock_divider|ALT_INV_counter\(15) <= NOT \instance_clock_divider|counter\(15);
\instance_clock_divider|ALT_INV_counter\(6) <= NOT \instance_clock_divider|counter\(6);
\instance_clock_divider|ALT_INV_counter\(9) <= NOT \instance_clock_divider|counter\(9);
\instance_chenillard|ALT_INV_CHEN_int[2]~DUPLICATE_q\ <= NOT \instance_chenillard|CHEN_int[2]~DUPLICATE_q\;
\instance_clock_divider|ALT_INV_counter\(3) <= NOT \instance_clock_divider|counter\(3);
\instance_clock_divider|ALT_INV_counter\(0) <= NOT \instance_clock_divider|counter\(0);
\instance_clock_divider|ALT_INV_counter\(22) <= NOT \instance_clock_divider|counter\(22);
\instance_clock_divider|ALT_INV_counter\(21) <= NOT \instance_clock_divider|counter\(21);
\instance_clock_divider|ALT_INV_counter\(5) <= NOT \instance_clock_divider|counter\(5);
\instance_clock_divider|ALT_INV_counter\(4) <= NOT \instance_clock_divider|counter\(4);
\instance_clock_divider|ALT_INV_counter\(12) <= NOT \instance_clock_divider|counter\(12);
\instance_clock_divider|ALT_INV_counter\(20) <= NOT \instance_clock_divider|counter\(20);
\instance_clock_divider|ALT_INV_counter\(1) <= NOT \instance_clock_divider|counter\(1);

-- Location: IOOBUF_X15_Y61_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|ALT_INV_CHEN_int\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X17_Y61_N59
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|ALT_INV_CHEN_int\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X14_Y61_N19
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|ALT_INV_CHEN_int\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X14_Y61_N36
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|ALT_INV_CHEN_int\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X14_Y61_N53
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|CHEN_int\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X14_Y61_N2
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|CHEN_int\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X17_Y61_N76
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|CHEN_int\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X15_Y61_N36
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|CHEN_int\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X15_Y61_N53
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|CHEN_int\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X17_Y61_N42
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instance_chenillard|CHEN_int\(9),
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X15_Y61_N18
\CLOCK_50_B6A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50_B6A,
	o => \CLOCK_50_B6A~input_o\);

-- Location: CLKCTRL_G14
\CLOCK_50_B6A~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50_B6A~input_o\,
	outclk => \CLOCK_50_B6A~inputCLKENA0_outclk\);

-- Location: LABCELL_X15_Y60_N3
\instance_clock_divider|counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|counter[0]~0_combout\ = ( !\instance_clock_divider|counter\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \instance_clock_divider|ALT_INV_counter\(0),
	combout => \instance_clock_divider|counter[0]~0_combout\);

-- Location: IOIBUF_X12_Y61_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: FF_X15_Y60_N5
\instance_clock_divider|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|counter[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(0));

-- Location: LABCELL_X15_Y60_N30
\instance_clock_divider|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~85_sumout\ = SUM(( \instance_clock_divider|counter\(1) ) + ( \instance_clock_divider|counter\(0) ) + ( !VCC ))
-- \instance_clock_divider|Add0~86\ = CARRY(( \instance_clock_divider|counter\(1) ) + ( \instance_clock_divider|counter\(0) ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_clock_divider|ALT_INV_counter\(0),
	datad => \instance_clock_divider|ALT_INV_counter\(1),
	cin => GND,
	sumout => \instance_clock_divider|Add0~85_sumout\,
	cout => \instance_clock_divider|Add0~86\);

-- Location: FF_X15_Y60_N2
\instance_clock_divider|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	asdata => \instance_clock_divider|Add0~85_sumout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(1));

-- Location: LABCELL_X15_Y60_N33
\instance_clock_divider|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~81_sumout\ = SUM(( \instance_clock_divider|counter\(2) ) + ( GND ) + ( \instance_clock_divider|Add0~86\ ))
-- \instance_clock_divider|Add0~82\ = CARRY(( \instance_clock_divider|counter\(2) ) + ( GND ) + ( \instance_clock_divider|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instance_clock_divider|ALT_INV_counter\(2),
	cin => \instance_clock_divider|Add0~86\,
	sumout => \instance_clock_divider|Add0~81_sumout\,
	cout => \instance_clock_divider|Add0~82\);

-- Location: FF_X15_Y60_N35
\instance_clock_divider|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~81_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(2));

-- Location: LABCELL_X15_Y60_N36
\instance_clock_divider|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~77_sumout\ = SUM(( \instance_clock_divider|counter\(3) ) + ( GND ) + ( \instance_clock_divider|Add0~82\ ))
-- \instance_clock_divider|Add0~78\ = CARRY(( \instance_clock_divider|counter\(3) ) + ( GND ) + ( \instance_clock_divider|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(3),
	cin => \instance_clock_divider|Add0~82\,
	sumout => \instance_clock_divider|Add0~77_sumout\,
	cout => \instance_clock_divider|Add0~78\);

-- Location: FF_X15_Y60_N38
\instance_clock_divider|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~77_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(3));

-- Location: LABCELL_X15_Y60_N39
\instance_clock_divider|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~73_sumout\ = SUM(( \instance_clock_divider|counter\(4) ) + ( GND ) + ( \instance_clock_divider|Add0~78\ ))
-- \instance_clock_divider|Add0~74\ = CARRY(( \instance_clock_divider|counter\(4) ) + ( GND ) + ( \instance_clock_divider|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_clock_divider|ALT_INV_counter\(4),
	cin => \instance_clock_divider|Add0~78\,
	sumout => \instance_clock_divider|Add0~73_sumout\,
	cout => \instance_clock_divider|Add0~74\);

-- Location: FF_X15_Y60_N41
\instance_clock_divider|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~73_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(4));

-- Location: LABCELL_X15_Y60_N42
\instance_clock_divider|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~69_sumout\ = SUM(( \instance_clock_divider|counter\(5) ) + ( GND ) + ( \instance_clock_divider|Add0~74\ ))
-- \instance_clock_divider|Add0~70\ = CARRY(( \instance_clock_divider|counter\(5) ) + ( GND ) + ( \instance_clock_divider|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(5),
	cin => \instance_clock_divider|Add0~74\,
	sumout => \instance_clock_divider|Add0~69_sumout\,
	cout => \instance_clock_divider|Add0~70\);

-- Location: FF_X15_Y60_N43
\instance_clock_divider|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~69_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(5));

-- Location: LABCELL_X15_Y60_N45
\instance_clock_divider|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~65_sumout\ = SUM(( \instance_clock_divider|counter\(6) ) + ( GND ) + ( \instance_clock_divider|Add0~70\ ))
-- \instance_clock_divider|Add0~66\ = CARRY(( \instance_clock_divider|counter\(6) ) + ( GND ) + ( \instance_clock_divider|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(6),
	cin => \instance_clock_divider|Add0~70\,
	sumout => \instance_clock_divider|Add0~65_sumout\,
	cout => \instance_clock_divider|Add0~66\);

-- Location: FF_X15_Y60_N47
\instance_clock_divider|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~65_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(6));

-- Location: LABCELL_X15_Y60_N48
\instance_clock_divider|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~61_sumout\ = SUM(( \instance_clock_divider|counter\(7) ) + ( GND ) + ( \instance_clock_divider|Add0~66\ ))
-- \instance_clock_divider|Add0~62\ = CARRY(( \instance_clock_divider|counter\(7) ) + ( GND ) + ( \instance_clock_divider|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_clock_divider|ALT_INV_counter\(7),
	cin => \instance_clock_divider|Add0~66\,
	sumout => \instance_clock_divider|Add0~61_sumout\,
	cout => \instance_clock_divider|Add0~62\);

-- Location: FF_X15_Y60_N50
\instance_clock_divider|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~61_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(7));

-- Location: LABCELL_X15_Y60_N51
\instance_clock_divider|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~57_sumout\ = SUM(( \instance_clock_divider|counter\(8) ) + ( GND ) + ( \instance_clock_divider|Add0~62\ ))
-- \instance_clock_divider|Add0~58\ = CARRY(( \instance_clock_divider|counter\(8) ) + ( GND ) + ( \instance_clock_divider|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(8),
	cin => \instance_clock_divider|Add0~62\,
	sumout => \instance_clock_divider|Add0~57_sumout\,
	cout => \instance_clock_divider|Add0~58\);

-- Location: FF_X15_Y60_N52
\instance_clock_divider|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~57_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(8));

-- Location: LABCELL_X15_Y60_N54
\instance_clock_divider|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~53_sumout\ = SUM(( \instance_clock_divider|counter\(9) ) + ( GND ) + ( \instance_clock_divider|Add0~58\ ))
-- \instance_clock_divider|Add0~54\ = CARRY(( \instance_clock_divider|counter\(9) ) + ( GND ) + ( \instance_clock_divider|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(9),
	cin => \instance_clock_divider|Add0~58\,
	sumout => \instance_clock_divider|Add0~53_sumout\,
	cout => \instance_clock_divider|Add0~54\);

-- Location: FF_X15_Y60_N56
\instance_clock_divider|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~53_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(9));

-- Location: LABCELL_X15_Y60_N57
\instance_clock_divider|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~49_sumout\ = SUM(( \instance_clock_divider|counter\(10) ) + ( GND ) + ( \instance_clock_divider|Add0~54\ ))
-- \instance_clock_divider|Add0~50\ = CARRY(( \instance_clock_divider|counter\(10) ) + ( GND ) + ( \instance_clock_divider|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(10),
	cin => \instance_clock_divider|Add0~54\,
	sumout => \instance_clock_divider|Add0~49_sumout\,
	cout => \instance_clock_divider|Add0~50\);

-- Location: FF_X15_Y60_N59
\instance_clock_divider|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~49_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(10));

-- Location: LABCELL_X15_Y59_N0
\instance_clock_divider|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~45_sumout\ = SUM(( \instance_clock_divider|counter\(11) ) + ( GND ) + ( \instance_clock_divider|Add0~50\ ))
-- \instance_clock_divider|Add0~46\ = CARRY(( \instance_clock_divider|counter\(11) ) + ( GND ) + ( \instance_clock_divider|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(11),
	cin => \instance_clock_divider|Add0~50\,
	sumout => \instance_clock_divider|Add0~45_sumout\,
	cout => \instance_clock_divider|Add0~46\);

-- Location: FF_X15_Y59_N2
\instance_clock_divider|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~45_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(11));

-- Location: LABCELL_X15_Y59_N3
\instance_clock_divider|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~41_sumout\ = SUM(( \instance_clock_divider|counter\(12) ) + ( GND ) + ( \instance_clock_divider|Add0~46\ ))
-- \instance_clock_divider|Add0~42\ = CARRY(( \instance_clock_divider|counter\(12) ) + ( GND ) + ( \instance_clock_divider|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(12),
	cin => \instance_clock_divider|Add0~46\,
	sumout => \instance_clock_divider|Add0~41_sumout\,
	cout => \instance_clock_divider|Add0~42\);

-- Location: FF_X15_Y59_N5
\instance_clock_divider|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~41_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(12));

-- Location: LABCELL_X15_Y59_N6
\instance_clock_divider|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~37_sumout\ = SUM(( \instance_clock_divider|counter\(13) ) + ( GND ) + ( \instance_clock_divider|Add0~42\ ))
-- \instance_clock_divider|Add0~38\ = CARRY(( \instance_clock_divider|counter\(13) ) + ( GND ) + ( \instance_clock_divider|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(13),
	cin => \instance_clock_divider|Add0~42\,
	sumout => \instance_clock_divider|Add0~37_sumout\,
	cout => \instance_clock_divider|Add0~38\);

-- Location: FF_X15_Y59_N7
\instance_clock_divider|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~37_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(13));

-- Location: LABCELL_X15_Y59_N9
\instance_clock_divider|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~33_sumout\ = SUM(( \instance_clock_divider|counter\(14) ) + ( GND ) + ( \instance_clock_divider|Add0~38\ ))
-- \instance_clock_divider|Add0~34\ = CARRY(( \instance_clock_divider|counter\(14) ) + ( GND ) + ( \instance_clock_divider|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_clock_divider|ALT_INV_counter\(14),
	cin => \instance_clock_divider|Add0~38\,
	sumout => \instance_clock_divider|Add0~33_sumout\,
	cout => \instance_clock_divider|Add0~34\);

-- Location: FF_X15_Y59_N11
\instance_clock_divider|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~33_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(14));

-- Location: LABCELL_X15_Y59_N12
\instance_clock_divider|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~29_sumout\ = SUM(( \instance_clock_divider|counter\(15) ) + ( GND ) + ( \instance_clock_divider|Add0~34\ ))
-- \instance_clock_divider|Add0~30\ = CARRY(( \instance_clock_divider|counter\(15) ) + ( GND ) + ( \instance_clock_divider|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_clock_divider|ALT_INV_counter\(15),
	cin => \instance_clock_divider|Add0~34\,
	sumout => \instance_clock_divider|Add0~29_sumout\,
	cout => \instance_clock_divider|Add0~30\);

-- Location: FF_X15_Y59_N14
\instance_clock_divider|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~29_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(15));

-- Location: LABCELL_X15_Y59_N15
\instance_clock_divider|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~25_sumout\ = SUM(( \instance_clock_divider|counter\(16) ) + ( GND ) + ( \instance_clock_divider|Add0~30\ ))
-- \instance_clock_divider|Add0~26\ = CARRY(( \instance_clock_divider|counter\(16) ) + ( GND ) + ( \instance_clock_divider|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_clock_divider|ALT_INV_counter\(16),
	cin => \instance_clock_divider|Add0~30\,
	sumout => \instance_clock_divider|Add0~25_sumout\,
	cout => \instance_clock_divider|Add0~26\);

-- Location: FF_X15_Y59_N17
\instance_clock_divider|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~25_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(16));

-- Location: LABCELL_X15_Y59_N18
\instance_clock_divider|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~21_sumout\ = SUM(( \instance_clock_divider|counter\(17) ) + ( GND ) + ( \instance_clock_divider|Add0~26\ ))
-- \instance_clock_divider|Add0~22\ = CARRY(( \instance_clock_divider|counter\(17) ) + ( GND ) + ( \instance_clock_divider|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_clock_divider|ALT_INV_counter\(17),
	cin => \instance_clock_divider|Add0~26\,
	sumout => \instance_clock_divider|Add0~21_sumout\,
	cout => \instance_clock_divider|Add0~22\);

-- Location: FF_X15_Y59_N20
\instance_clock_divider|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~21_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(17));

-- Location: LABCELL_X15_Y59_N21
\instance_clock_divider|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~17_sumout\ = SUM(( \instance_clock_divider|counter\(18) ) + ( GND ) + ( \instance_clock_divider|Add0~22\ ))
-- \instance_clock_divider|Add0~18\ = CARRY(( \instance_clock_divider|counter\(18) ) + ( GND ) + ( \instance_clock_divider|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(18),
	cin => \instance_clock_divider|Add0~22\,
	sumout => \instance_clock_divider|Add0~17_sumout\,
	cout => \instance_clock_divider|Add0~18\);

-- Location: FF_X15_Y59_N23
\instance_clock_divider|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~17_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(18));

-- Location: LABCELL_X15_Y59_N24
\instance_clock_divider|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~13_sumout\ = SUM(( \instance_clock_divider|counter\(19) ) + ( GND ) + ( \instance_clock_divider|Add0~18\ ))
-- \instance_clock_divider|Add0~14\ = CARRY(( \instance_clock_divider|counter\(19) ) + ( GND ) + ( \instance_clock_divider|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_clock_divider|ALT_INV_counter\(19),
	cin => \instance_clock_divider|Add0~18\,
	sumout => \instance_clock_divider|Add0~13_sumout\,
	cout => \instance_clock_divider|Add0~14\);

-- Location: FF_X15_Y59_N26
\instance_clock_divider|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~13_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(19));

-- Location: LABCELL_X15_Y59_N27
\instance_clock_divider|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~9_sumout\ = SUM(( \instance_clock_divider|counter\(20) ) + ( GND ) + ( \instance_clock_divider|Add0~14\ ))
-- \instance_clock_divider|Add0~10\ = CARRY(( \instance_clock_divider|counter\(20) ) + ( GND ) + ( \instance_clock_divider|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(20),
	cin => \instance_clock_divider|Add0~14\,
	sumout => \instance_clock_divider|Add0~9_sumout\,
	cout => \instance_clock_divider|Add0~10\);

-- Location: FF_X15_Y59_N29
\instance_clock_divider|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~9_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(20));

-- Location: LABCELL_X15_Y59_N30
\instance_clock_divider|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~5_sumout\ = SUM(( \instance_clock_divider|counter\(21) ) + ( GND ) + ( \instance_clock_divider|Add0~10\ ))
-- \instance_clock_divider|Add0~6\ = CARRY(( \instance_clock_divider|counter\(21) ) + ( GND ) + ( \instance_clock_divider|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_clock_divider|ALT_INV_counter\(21),
	cin => \instance_clock_divider|Add0~10\,
	sumout => \instance_clock_divider|Add0~5_sumout\,
	cout => \instance_clock_divider|Add0~6\);

-- Location: FF_X15_Y59_N31
\instance_clock_divider|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~inputCLKENA0_outclk\,
	d => \instance_clock_divider|Add0~5_sumout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(21));

-- Location: LABCELL_X15_Y59_N33
\instance_clock_divider|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|Add0~1_sumout\ = SUM(( \instance_clock_divider|counter\(22) ) + ( GND ) + ( \instance_clock_divider|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \instance_clock_divider|ALT_INV_counter\(22),
	cin => \instance_clock_divider|Add0~6\,
	sumout => \instance_clock_divider|Add0~1_sumout\);

-- Location: LABCELL_X15_Y59_N54
\instance_clock_divider|counter[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_clock_divider|counter[22]~feeder_combout\ = ( \instance_clock_divider|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \instance_clock_divider|ALT_INV_Add0~1_sumout\,
	combout => \instance_clock_divider|counter[22]~feeder_combout\);

-- Location: FF_X15_Y59_N56
\instance_clock_divider|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50_B6A~input_o\,
	d => \instance_clock_divider|counter[22]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_clock_divider|counter\(22));

-- Location: FF_X15_Y60_N22
\instance_chenillard|CHEN_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	asdata => \instance_chenillard|CHEN_int\(0),
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(1));

-- Location: LABCELL_X15_Y60_N9
\instance_chenillard|CHEN_int[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[2]~feeder_combout\ = \instance_chenillard|CHEN_int\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_chenillard|ALT_INV_CHEN_int\(1),
	combout => \instance_chenillard|CHEN_int[2]~feeder_combout\);

-- Location: FF_X15_Y60_N11
\instance_chenillard|CHEN_int[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int[2]~DUPLICATE_q\);

-- Location: MLABCELL_X14_Y60_N48
\instance_chenillard|CHEN_int[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[3]~feeder_combout\ = \instance_chenillard|CHEN_int[2]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_chenillard|ALT_INV_CHEN_int[2]~DUPLICATE_q\,
	combout => \instance_chenillard|CHEN_int[3]~feeder_combout\);

-- Location: FF_X14_Y60_N49
\instance_chenillard|CHEN_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[3]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(3));

-- Location: MLABCELL_X14_Y60_N30
\instance_chenillard|CHEN_int[4]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[4]~1_combout\ = !\instance_chenillard|CHEN_int\(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_chenillard|ALT_INV_CHEN_int\(3),
	combout => \instance_chenillard|CHEN_int[4]~1_combout\);

-- Location: FF_X14_Y60_N31
\instance_chenillard|CHEN_int[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[4]~1_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(4));

-- Location: LABCELL_X15_Y60_N12
\instance_chenillard|CHEN_int[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[5]~feeder_combout\ = \instance_chenillard|CHEN_int\(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_chenillard|ALT_INV_CHEN_int\(4),
	combout => \instance_chenillard|CHEN_int[5]~feeder_combout\);

-- Location: FF_X15_Y60_N13
\instance_chenillard|CHEN_int[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[5]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(5));

-- Location: LABCELL_X15_Y60_N6
\instance_chenillard|CHEN_int[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[6]~feeder_combout\ = \instance_chenillard|CHEN_int\(5)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_chenillard|ALT_INV_CHEN_int\(5),
	combout => \instance_chenillard|CHEN_int[6]~feeder_combout\);

-- Location: FF_X15_Y60_N7
\instance_chenillard|CHEN_int[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[6]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(6));

-- Location: LABCELL_X15_Y60_N27
\instance_chenillard|CHEN_int[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[7]~feeder_combout\ = \instance_chenillard|CHEN_int\(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_chenillard|ALT_INV_CHEN_int\(6),
	combout => \instance_chenillard|CHEN_int[7]~feeder_combout\);

-- Location: FF_X15_Y60_N28
\instance_chenillard|CHEN_int[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[7]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(7));

-- Location: LABCELL_X15_Y60_N15
\instance_chenillard|CHEN_int[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[8]~feeder_combout\ = \instance_chenillard|CHEN_int\(7)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_chenillard|ALT_INV_CHEN_int\(7),
	combout => \instance_chenillard|CHEN_int[8]~feeder_combout\);

-- Location: FF_X15_Y60_N16
\instance_chenillard|CHEN_int[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[8]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(8));

-- Location: LABCELL_X15_Y60_N24
\instance_chenillard|CHEN_int[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[9]~feeder_combout\ = \instance_chenillard|CHEN_int\(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \instance_chenillard|ALT_INV_CHEN_int\(8),
	combout => \instance_chenillard|CHEN_int[9]~feeder_combout\);

-- Location: FF_X15_Y60_N26
\instance_chenillard|CHEN_int[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[9]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(9));

-- Location: LABCELL_X15_Y60_N18
\instance_chenillard|CHEN_int[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instance_chenillard|CHEN_int[0]~0_combout\ = !\instance_chenillard|CHEN_int\(9)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instance_chenillard|ALT_INV_CHEN_int\(9),
	combout => \instance_chenillard|CHEN_int[0]~0_combout\);

-- Location: FF_X15_Y60_N20
\instance_chenillard|CHEN_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[0]~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(0));

-- Location: FF_X15_Y60_N10
\instance_chenillard|CHEN_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \instance_clock_divider|counter\(22),
	d => \instance_chenillard|CHEN_int[2]~feeder_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \instance_chenillard|CHEN_int\(2));

-- Location: IOIBUF_X6_Y0_N52
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X15_Y0_N18
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X38_Y0_N52
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: LABCELL_X40_Y21_N3
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


