-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- VERSION "Version 15.0.0 Build 145 04/22/2015 SJ Web Edition"

-- DATE "07/05/2015 02:12:16"

-- 
-- Device: Altera EP4CE115F29I7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula_vhdl_8bits IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	op : IN std_logic_vector(3 DOWNTO 0);
	saida : OUT std_logic_vector(7 DOWNTO 0)
	);
END ula_vhdl_8bits;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[3]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[0]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op[1]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ula_vhdl_8bits IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(7 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \op[1]~input_o\ : std_logic;
SIGNAL \op[2]~input_o\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \op[3]~input_o\ : std_logic;
SIGNAL \op[0]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \SUB|sum[1]~0_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;
SIGNAL \Mux6~10_combout\ : std_logic;
SIGNAL \SUM|carry_in_internal[2]~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \saida~0_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \SUB|carry_in_internal[2]~0_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \SUB|carry_in_internal[3]~1_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \SUM|carry_in_internal[3]~1_combout\ : std_logic;
SIGNAL \SUM|carry_in_internal[4]~2_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \SUB|carry_in_internal[4]~2_combout\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \SUM|carry_in_internal[5]~3_combout\ : std_logic;
SIGNAL \saida~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \SUB|carry_in_internal[5]~3_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \SUB|carry_in_internal[6]~4_combout\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \SUM|carry_in_internal[6]~4_combout\ : std_logic;
SIGNAL \saida~2_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \Mux0~10_combout\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~9_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Mux0~13_combout\ : std_logic;
SIGNAL \Mux0~11_combout\ : std_logic;
SIGNAL \SUB|sum[7]~1_combout\ : std_logic;
SIGNAL \Mux0~12_combout\ : std_logic;
SIGNAL \SUB|sum\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \SUM|sum\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_op <= op;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X54_Y73_N9
\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~4_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~10_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X52_Y73_N9
\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~8_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~9_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~8_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~6_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~7_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\saida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~12_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOIBUF_X52_Y73_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: IOIBUF_X52_Y73_N15
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X60_Y73_N15
\op[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(1),
	o => \op[1]~input_o\);

-- Location: IOIBUF_X60_Y73_N22
\op[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(2),
	o => \op[2]~input_o\);

-- Location: LCCOMB_X59_Y72_N22
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\b[0]~input_o\ & (((!\op[1]~input_o\ & !\op[2]~input_o\)) # (!\a[0]~input_o\))) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # ((\op[1]~input_o\ & !\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: IOIBUF_X58_Y73_N22
\op[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(3),
	o => \op[3]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\op[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op(0),
	o => \op[0]~input_o\);

-- Location: LCCOMB_X66_Y72_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (!\op[1]~input_o\ & (!\op[0]~input_o\ & !\op[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X59_Y72_N8
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\op[3]~input_o\ & ((\b[0]~input_o\ $ (!\a[0]~input_o\)) # (!\Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \op[3]~input_o\,
	datac => \a[0]~input_o\,
	datad => \Mux6~0_combout\,
	combout => \Mux7~0_combout\);

-- Location: LCCOMB_X59_Y72_N26
\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\a[0]~input_o\ & (\b[0]~input_o\ & (\op[1]~input_o\ $ (!\op[2]~input_o\)))) # (!\a[0]~input_o\ & ((\op[2]~input_o\ & (!\b[0]~input_o\)) # (!\op[2]~input_o\ & ((\op[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux7~1_combout\);

-- Location: LCCOMB_X59_Y72_N20
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\Mux7~1_combout\ & (!\op[3]~input_o\ & !\op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~1_combout\,
	datab => \op[3]~input_o\,
	datac => \op[0]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X59_Y72_N0
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~0_combout\) # ((\Mux7~2_combout\) # ((\Mux7~3_combout\ & \op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \Mux7~0_combout\,
	datac => \op[0]~input_o\,
	datad => \Mux7~2_combout\,
	combout => \Mux7~4_combout\);

-- Location: IOIBUF_X58_Y73_N1
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X52_Y73_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X61_Y72_N2
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (!\op[0]~input_o\ & \op[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X61_Y72_N8
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (!\op[1]~input_o\ & !\op[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X59_Y72_N30
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\b[1]~input_o\ & (\a[1]~input_o\ & ((\Mux6~3_combout\)))) # (!\b[1]~input_o\ & (!\a[1]~input_o\ & (\Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datac => \Mux6~4_combout\,
	datad => \Mux6~3_combout\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X59_Y72_N10
\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\op[0]~input_o\ & (((!\op[1]~input_o\) # (!\a[0]~input_o\)) # (!\b[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \op[1]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux6~1_combout\);

-- Location: LCCOMB_X59_Y72_N4
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux6~1_combout\ & (\a[1]~input_o\ $ (\b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \a[1]~input_o\,
	datac => \b[1]~input_o\,
	datad => \Mux6~1_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X59_Y72_N16
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\b[1]~input_o\ & (\op[0]~input_o\ & ((!\b[0]~input_o\) # (!\a[0]~input_o\)))) # (!\b[1]~input_o\ & (\a[0]~input_o\ & ((\b[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[0]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[0]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X59_Y72_N18
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (\a[1]~input_o\ & (!\Mux6~6_combout\ & (\b[1]~input_o\ & \op[2]~input_o\))) # (!\a[1]~input_o\ & (((\Mux6~6_combout\ & !\b[1]~input_o\)) # (!\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \Mux6~6_combout\,
	datac => \b[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X59_Y72_N28
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux6~7_combout\) # ((\op[0]~input_o\ & (!\b[1]~input_o\ & !\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \Mux6~7_combout\,
	datac => \b[1]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X59_Y72_N6
\Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~5_combout\) # ((\Mux6~2_combout\) # ((\op[1]~input_o\ & \Mux6~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~5_combout\,
	datab => \op[1]~input_o\,
	datac => \Mux6~2_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X59_Y72_N24
\SUB|sum[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|sum[1]~0_combout\ = \b[1]~input_o\ $ (\a[1]~input_o\ $ (((!\b[0]~input_o\ & !\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \SUB|sum[1]~0_combout\);

-- Location: LCCOMB_X65_Y72_N0
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (!\op[1]~input_o\ & (\op[3]~input_o\ & (!\op[2]~input_o\ & !\op[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux0~7_combout\);

-- Location: LCCOMB_X59_Y72_N2
\Mux6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~10_combout\ = (\Mux6~9_combout\ & (((!\SUB|sum[1]~0_combout\ & \Mux0~7_combout\)) # (!\op[3]~input_o\))) # (!\Mux6~9_combout\ & (!\SUB|sum[1]~0_combout\ & ((\Mux0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~9_combout\,
	datab => \SUB|sum[1]~0_combout\,
	datac => \op[3]~input_o\,
	datad => \Mux0~7_combout\,
	combout => \Mux6~10_combout\);

-- Location: LCCOMB_X59_Y72_N14
\SUM|carry_in_internal[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM|carry_in_internal[2]~0_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\) # ((\b[0]~input_o\ & \a[0]~input_o\)))) # (!\b[1]~input_o\ & (\b[0]~input_o\ & (\a[0]~input_o\ & \a[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \SUM|carry_in_internal[2]~0_combout\);

-- Location: IOIBUF_X49_Y73_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X49_Y73_N22
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X60_Y72_N18
\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (!\a[2]~input_o\ & (((\SUM|carry_in_internal[2]~0_combout\ & !\b[2]~input_o\)) # (!\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM|carry_in_internal[2]~0_combout\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux5~1_combout\);

-- Location: LCCOMB_X60_Y72_N20
\saida~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~0_combout\ = (\b[2]~input_o\ & \a[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	combout => \saida~0_combout\);

-- Location: LCCOMB_X60_Y72_N30
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\saida~0_combout\ & (\op[2]~input_o\ & ((\SUM|carry_in_internal[2]~0_combout\) # (!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM|carry_in_internal[2]~0_combout\,
	datab => \saida~0_combout\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X60_Y72_N16
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\op[1]~input_o\ & ((\Mux5~1_combout\) # (\Mux5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux5~1_combout\,
	datac => \Mux5~2_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X60_Y72_N10
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\op[1]~input_o\ & (!\SUM|carry_in_internal[2]~0_combout\ & (\a[2]~input_o\ $ (\b[2]~input_o\)))) # (!\op[1]~input_o\ & (\a[2]~input_o\ $ ((\b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \SUM|carry_in_internal[2]~0_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X60_Y72_N4
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\a[2]~input_o\ & ((\b[2]~input_o\ & (!\op[1]~input_o\)) # (!\b[2]~input_o\ & ((\op[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \op[0]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X60_Y72_N6
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Mux5~4_combout\ & ((\op[0]~input_o\) # ((\Mux5~5_combout\ & !\op[2]~input_o\)))) # (!\Mux5~4_combout\ & (((\Mux5~5_combout\ & !\op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~4_combout\,
	datab => \op[0]~input_o\,
	datac => \Mux5~5_combout\,
	datad => \op[2]~input_o\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X60_Y72_N0
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (\Mux5~6_combout\) # ((!\b[2]~input_o\ & (!\a[2]~input_o\ & \Mux6~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~6_combout\,
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \Mux6~4_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X59_Y72_N12
\SUB|carry_in_internal[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|carry_in_internal[2]~0_combout\ = (\b[1]~input_o\ & ((\b[0]~input_o\) # ((\a[0]~input_o\) # (\a[1]~input_o\)))) # (!\b[1]~input_o\ & (\a[1]~input_o\ & ((\b[0]~input_o\) # (\a[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \b[1]~input_o\,
	datad => \a[1]~input_o\,
	combout => \SUB|carry_in_internal[2]~0_combout\);

-- Location: LCCOMB_X60_Y72_N24
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\a[2]~input_o\ $ (\b[2]~input_o\ $ (\SUB|carry_in_internal[2]~0_combout\))) # (!\Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datac => \Mux6~0_combout\,
	datad => \SUB|carry_in_internal[2]~0_combout\,
	combout => \Mux5~0_combout\);

-- Location: LCCOMB_X60_Y72_N26
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\op[3]~input_o\ & (((\Mux5~0_combout\)))) # (!\op[3]~input_o\ & ((\Mux5~3_combout\) # ((\Mux5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~3_combout\,
	datab => \Mux5~7_combout\,
	datac => \op[3]~input_o\,
	datad => \Mux5~0_combout\,
	combout => \Mux5~8_combout\);

-- Location: IOIBUF_X60_Y73_N1
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X60_Y0_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: LCCOMB_X61_Y72_N20
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (!\op[2]~input_o\ & (((!\b[3]~input_o\ & \op[0]~input_o\)) # (!\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X61_Y72_N30
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\b[3]~input_o\ & ((\op[2]~input_o\) # (!\a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X60_Y72_N8
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\b[2]~input_o\ & ((\a[2]~input_o\) # (\SUM|carry_in_internal[2]~0_combout\))) # (!\b[2]~input_o\ & (\a[2]~input_o\ & \SUM|carry_in_internal[2]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \SUM|carry_in_internal[2]~0_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X61_Y72_N16
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (\Mux4~6_combout\ & (\a[3]~input_o\ & ((\Mux4~5_combout\) # (!\op[0]~input_o\)))) # (!\Mux4~6_combout\ & (((!\a[3]~input_o\ & \Mux4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux4~6_combout\,
	datab => \op[0]~input_o\,
	datac => \a[3]~input_o\,
	datad => \Mux4~5_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X61_Y72_N0
\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\op[0]~input_o\ & (\a[3]~input_o\ $ (\b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \op[0]~input_o\,
	combout => \Mux4~1_combout\);

-- Location: LCCOMB_X61_Y72_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\a[3]~input_o\ & (\b[3]~input_o\ & (\Mux6~3_combout\))) # (!\a[3]~input_o\ & (!\b[3]~input_o\ & ((\Mux6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \b[3]~input_o\,
	datac => \Mux6~3_combout\,
	datad => \Mux6~4_combout\,
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X60_Y72_N14
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\b[2]~input_o\ & (!\a[2]~input_o\ & !\SUM|carry_in_internal[2]~0_combout\)) # (!\b[2]~input_o\ & ((!\SUM|carry_in_internal[2]~0_combout\) # (!\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \SUM|carry_in_internal[2]~0_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X61_Y72_N10
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~0_combout\) # ((\Mux4~1_combout\ & ((\Mux4~2_combout\) # (!\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux4~1_combout\,
	datac => \Mux4~0_combout\,
	datad => \Mux4~2_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X61_Y72_N18
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux4~3_combout\) # ((\op[1]~input_o\ & ((\Mux4~4_combout\) # (\Mux4~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux4~4_combout\,
	datac => \Mux4~7_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X60_Y72_N12
\SUB|carry_in_internal[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|carry_in_internal[3]~1_combout\ = (\SUB|carry_in_internal[2]~0_combout\ & ((\b[2]~input_o\) # (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \SUB|carry_in_internal[2]~0_combout\,
	combout => \SUB|carry_in_internal[3]~1_combout\);

-- Location: LCCOMB_X61_Y72_N28
\SUB|sum[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|sum\(3) = \a[3]~input_o\ $ (\b[3]~input_o\ $ (((\SUB|carry_in_internal[3]~1_combout\) # (\saida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|carry_in_internal[3]~1_combout\,
	datab => \saida~0_combout\,
	datac => \a[3]~input_o\,
	datad => \b[3]~input_o\,
	combout => \SUB|sum\(3));

-- Location: LCCOMB_X61_Y72_N12
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux0~7_combout\ & ((\SUB|sum\(3)) # ((\Mux4~8_combout\ & !\op[3]~input_o\)))) # (!\Mux0~7_combout\ & (\Mux4~8_combout\ & (!\op[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~7_combout\,
	datab => \Mux4~8_combout\,
	datac => \op[3]~input_o\,
	datad => \SUB|sum\(3),
	combout => \Mux4~9_combout\);

-- Location: IOIBUF_X67_Y73_N8
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: LCCOMB_X60_Y72_N2
\SUM|carry_in_internal[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM|carry_in_internal[3]~1_combout\ = (\SUM|carry_in_internal[2]~0_combout\ & ((\b[2]~input_o\) # (\a[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \SUM|carry_in_internal[2]~0_combout\,
	combout => \SUM|carry_in_internal[3]~1_combout\);

-- Location: LCCOMB_X61_Y72_N24
\SUM|carry_in_internal[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM|carry_in_internal[4]~2_combout\ = (\a[3]~input_o\ & ((\SUM|carry_in_internal[3]~1_combout\) # ((\saida~0_combout\) # (\b[3]~input_o\)))) # (!\a[3]~input_o\ & (\b[3]~input_o\ & ((\SUM|carry_in_internal[3]~1_combout\) # (\saida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM|carry_in_internal[3]~1_combout\,
	datab => \saida~0_combout\,
	datac => \a[3]~input_o\,
	datad => \b[3]~input_o\,
	combout => \SUM|carry_in_internal[4]~2_combout\);

-- Location: LCCOMB_X65_Y72_N28
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\op[1]~input_o\ & (\op[2]~input_o\ & ((\SUM|carry_in_internal[4]~2_combout\) # (!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \SUM|carry_in_internal[4]~2_combout\,
	combout => \Mux3~2_combout\);

-- Location: IOIBUF_X67_Y73_N22
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X65_Y72_N10
\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (!\op[2]~input_o\ & ((\b[4]~input_o\ & ((!\op[1]~input_o\))) # (!\b[4]~input_o\ & (\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux3~1_combout\);

-- Location: LCCOMB_X65_Y72_N6
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\a[4]~input_o\ & ((\Mux3~1_combout\) # ((\b[4]~input_o\ & \Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \Mux3~2_combout\,
	datac => \a[4]~input_o\,
	datad => \Mux3~1_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X61_Y72_N6
\SUB|carry_in_internal[4]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|carry_in_internal[4]~2_combout\ = (\a[3]~input_o\ & ((\SUB|carry_in_internal[3]~1_combout\) # ((\saida~0_combout\) # (\b[3]~input_o\)))) # (!\a[3]~input_o\ & (\b[3]~input_o\ & ((\SUB|carry_in_internal[3]~1_combout\) # (\saida~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|carry_in_internal[3]~1_combout\,
	datab => \saida~0_combout\,
	datac => \a[3]~input_o\,
	datad => \b[3]~input_o\,
	combout => \SUB|carry_in_internal[4]~2_combout\);

-- Location: LCCOMB_X63_Y72_N24
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\b[4]~input_o\ $ (\SUB|carry_in_internal[4]~2_combout\ $ (\a[4]~input_o\))) # (!\Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \b[4]~input_o\,
	datac => \SUB|carry_in_internal[4]~2_combout\,
	datad => \a[4]~input_o\,
	combout => \Mux3~0_combout\);

-- Location: LCCOMB_X65_Y72_N20
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\SUM|carry_in_internal[4]~2_combout\ & (!\op[1]~input_o\ & (\b[4]~input_o\ $ (\a[4]~input_o\)))) # (!\SUM|carry_in_internal[4]~2_combout\ & (\b[4]~input_o\ $ ((\a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \SUM|carry_in_internal[4]~2_combout\,
	datac => \a[4]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X65_Y72_N8
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\op[1]~input_o\ & (((\SUM|carry_in_internal[4]~2_combout\ & !\b[4]~input_o\)) # (!\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[2]~input_o\,
	datab => \SUM|carry_in_internal[4]~2_combout\,
	datac => \b[4]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X65_Y72_N18
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (!\a[4]~input_o\ & ((\Mux3~4_combout\) # ((\Mux6~4_combout\ & !\b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \Mux3~4_combout\,
	datac => \Mux6~4_combout\,
	datad => \b[4]~input_o\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X65_Y72_N22
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~5_combout\) # ((\Mux3~6_combout\ & \op[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux3~6_combout\,
	datac => \op[0]~input_o\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X65_Y72_N16
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\op[3]~input_o\ & (((\Mux3~0_combout\)))) # (!\op[3]~input_o\ & ((\Mux3~3_combout\) # ((\Mux3~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~3_combout\,
	datab => \Mux3~0_combout\,
	datac => \Mux3~7_combout\,
	datad => \op[3]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: IOIBUF_X62_Y73_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X62_Y73_N22
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: LCCOMB_X63_Y72_N10
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\op[0]~input_o\ & (!\op[1]~input_o\ & (\a[5]~input_o\ $ (\b[5]~input_o\)))) # (!\op[0]~input_o\ & ((\a[5]~input_o\ & (\op[1]~input_o\ & \b[5]~input_o\)) # (!\a[5]~input_o\ & ((!\b[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[5]~input_o\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X63_Y72_N22
\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\b[5]~input_o\ & (!\a[5]~input_o\ & (\op[2]~input_o\))) # (!\b[5]~input_o\ & ((\op[1]~input_o\) # ((\a[5]~input_o\ & \op[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[5]~input_o\,
	combout => \Mux2~1_combout\);

-- Location: LCCOMB_X63_Y72_N4
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\op[2]~input_o\ & (\op[1]~input_o\ & (\a[5]~input_o\ $ (!\b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \op[2]~input_o\,
	datac => \op[1]~input_o\,
	datad => \b[5]~input_o\,
	combout => \Mux2~0_combout\);

-- Location: LCCOMB_X63_Y72_N16
\SUM|carry_in_internal[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM|carry_in_internal[5]~3_combout\ = (\SUM|carry_in_internal[4]~2_combout\ & ((\b[4]~input_o\) # (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[4]~input_o\,
	datac => \SUM|carry_in_internal[4]~2_combout\,
	datad => \a[4]~input_o\,
	combout => \SUM|carry_in_internal[5]~3_combout\);

-- Location: LCCOMB_X63_Y72_N18
\saida~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~1_combout\ = (\b[4]~input_o\ & \a[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \saida~1_combout\);

-- Location: LCCOMB_X63_Y72_N2
\SUM|sum[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM|sum\(5) = \b[5]~input_o\ $ (\a[5]~input_o\ $ (((\SUM|carry_in_internal[5]~3_combout\) # (\saida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \SUM|carry_in_internal[5]~3_combout\,
	datac => \a[5]~input_o\,
	datad => \saida~1_combout\,
	combout => \SUM|sum\(5));

-- Location: LCCOMB_X63_Y72_N8
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\SUM|sum\(5) & ((\Mux2~0_combout\) # ((\Mux2~1_combout\ & \op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~1_combout\,
	datab => \Mux2~0_combout\,
	datac => \op[0]~input_o\,
	datad => \SUM|sum\(5),
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X63_Y72_N12
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\a[5]~input_o\ & ((\b[5]~input_o\ & (!\op[1]~input_o\)) # (!\b[5]~input_o\ & ((\op[0]~input_o\))))) # (!\a[5]~input_o\ & ((\op[1]~input_o\) # ((\op[0]~input_o\ & \b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \b[5]~input_o\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X63_Y72_N30
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~2_combout\) # ((\op[2]~input_o\ & (\Mux2~3_combout\)) # (!\op[2]~input_o\ & ((\Mux2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~3_combout\,
	datab => \op[2]~input_o\,
	datac => \Mux2~2_combout\,
	datad => \Mux2~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X63_Y72_N20
\SUB|carry_in_internal[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|carry_in_internal[5]~3_combout\ = (\SUB|carry_in_internal[4]~2_combout\ & ((\b[4]~input_o\) # (\a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|carry_in_internal[4]~2_combout\,
	datab => \b[4]~input_o\,
	datad => \a[4]~input_o\,
	combout => \SUB|carry_in_internal[5]~3_combout\);

-- Location: LCCOMB_X63_Y72_N6
\SUB|sum[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|sum\(5) = \b[5]~input_o\ $ (\a[5]~input_o\ $ (((\SUB|carry_in_internal[5]~3_combout\) # (\saida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \SUB|carry_in_internal[5]~3_combout\,
	datac => \a[5]~input_o\,
	datad => \saida~1_combout\,
	combout => \SUB|sum\(5));

-- Location: LCCOMB_X63_Y72_N0
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (\Mux2~5_combout\ & (((\Mux0~7_combout\ & \SUB|sum\(5))) # (!\op[3]~input_o\))) # (!\Mux2~5_combout\ & (((\Mux0~7_combout\ & \SUB|sum\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~5_combout\,
	datab => \op[3]~input_o\,
	datac => \Mux0~7_combout\,
	datad => \SUB|sum\(5),
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X63_Y72_N26
\SUB|carry_in_internal[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|carry_in_internal[6]~4_combout\ = (\b[5]~input_o\ & ((\SUB|carry_in_internal[5]~3_combout\) # ((\a[5]~input_o\) # (\saida~1_combout\)))) # (!\b[5]~input_o\ & (\a[5]~input_o\ & ((\SUB|carry_in_internal[5]~3_combout\) # (\saida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \SUB|carry_in_internal[5]~3_combout\,
	datac => \a[5]~input_o\,
	datad => \saida~1_combout\,
	combout => \SUB|carry_in_internal[6]~4_combout\);

-- Location: IOIBUF_X69_Y73_N22
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: LCCOMB_X66_Y72_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\SUB|carry_in_internal[6]~4_combout\ $ (\a[6]~input_o\ $ (\b[6]~input_o\))) # (!\Mux6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011101111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|carry_in_internal[6]~4_combout\,
	datab => \Mux6~0_combout\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X63_Y72_N28
\SUM|carry_in_internal[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUM|carry_in_internal[6]~4_combout\ = (\b[5]~input_o\ & ((\SUM|carry_in_internal[5]~3_combout\) # ((\a[5]~input_o\) # (\saida~1_combout\)))) # (!\b[5]~input_o\ & (\a[5]~input_o\ & ((\SUM|carry_in_internal[5]~3_combout\) # (\saida~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \SUM|carry_in_internal[5]~3_combout\,
	datac => \a[5]~input_o\,
	datad => \saida~1_combout\,
	combout => \SUM|carry_in_internal[6]~4_combout\);

-- Location: LCCOMB_X66_Y72_N18
\saida~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida~2_combout\ = (!\a[6]~input_o\ & !\b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \saida~2_combout\);

-- Location: LCCOMB_X65_Y72_N2
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\saida~2_combout\ & ((\Mux6~4_combout\) # ((\op[1]~input_o\ & \SUM|carry_in_internal[6]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[1]~input_o\,
	datab => \Mux6~4_combout\,
	datac => \SUM|carry_in_internal[6]~4_combout\,
	datad => \saida~2_combout\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X66_Y72_N20
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\op[1]~input_o\ & (\op[2]~input_o\ & ((\SUM|carry_in_internal[6]~4_combout\) # (!\op[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM|carry_in_internal[6]~4_combout\,
	datab => \op[1]~input_o\,
	datac => \op[0]~input_o\,
	datad => \op[2]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X66_Y72_N14
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Mux1~4_combout\) # ((\Mux1~5_combout\ & (\a[6]~input_o\ & \b[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datab => \Mux1~5_combout\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X66_Y72_N6
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\a[6]~input_o\ & ((\b[6]~input_o\ & ((!\op[1]~input_o\))) # (!\b[6]~input_o\ & (\op[0]~input_o\)))) # (!\a[6]~input_o\ & (((\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \op[0]~input_o\,
	datab => \op[1]~input_o\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X66_Y72_N28
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\SUM|carry_in_internal[6]~4_combout\ & (!\op[1]~input_o\ & (\a[6]~input_o\ $ (\b[6]~input_o\)))) # (!\SUM|carry_in_internal[6]~4_combout\ & ((\a[6]~input_o\ $ (\b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM|carry_in_internal[6]~4_combout\,
	datab => \op[1]~input_o\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X66_Y72_N16
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & (((\op[0]~input_o\ & \Mux1~1_combout\)) # (!\op[2]~input_o\))) # (!\Mux1~2_combout\ & (((\op[0]~input_o\ & \Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~2_combout\,
	datab => \op[2]~input_o\,
	datac => \op[0]~input_o\,
	datad => \Mux1~1_combout\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X66_Y72_N24
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\op[3]~input_o\ & (\Mux1~0_combout\)) # (!\op[3]~input_o\ & (((\Mux1~6_combout\) # (\Mux1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \op[3]~input_o\,
	datac => \Mux1~6_combout\,
	datad => \Mux1~3_combout\,
	combout => \Mux1~7_combout\);

-- Location: IOIBUF_X65_Y73_N8
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: LCCOMB_X66_Y72_N2
\Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~10_combout\ = (\op[1]~input_o\ & ((\SUM|carry_in_internal[6]~4_combout\ & ((\a[6]~input_o\) # (\b[6]~input_o\))) # (!\SUM|carry_in_internal[6]~4_combout\ & (\a[6]~input_o\ & \b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUM|carry_in_internal[6]~4_combout\,
	datab => \op[1]~input_o\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \Mux0~10_combout\);

-- Location: IOIBUF_X69_Y73_N15
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: LCCOMB_X65_Y72_N4
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (!\op[3]~input_o\ & ((\b[7]~input_o\ & (\op[2]~input_o\ & \a[7]~input_o\)) # (!\b[7]~input_o\ & ((!\a[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[2]~input_o\,
	datad => \a[7]~input_o\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X65_Y72_N30
\Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~9_combout\ = (!\op[3]~input_o\ & (\op[0]~input_o\ & (\b[7]~input_o\ $ (\a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \op[3]~input_o\,
	datac => \op[0]~input_o\,
	datad => \a[7]~input_o\,
	combout => \Mux0~9_combout\);

-- Location: LCCOMB_X65_Y72_N14
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\b[7]~input_o\ & ((\op[2]~input_o\ & (!\op[0]~input_o\ & \op[1]~input_o\)) # (!\op[2]~input_o\ & ((!\op[1]~input_o\))))) # (!\b[7]~input_o\ & (\op[0]~input_o\ & (!\op[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X65_Y72_N12
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\op[2]~input_o\ & (!\b[7]~input_o\ & (!\op[0]~input_o\))) # (!\op[2]~input_o\ & (((\op[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \op[0]~input_o\,
	datac => \op[2]~input_o\,
	datad => \op[1]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X66_Y72_N22
\Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~13_combout\ = (!\op[3]~input_o\ & ((\a[7]~input_o\ & (\Mux0~4_combout\)) # (!\a[7]~input_o\ & ((\Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~4_combout\,
	datab => \op[3]~input_o\,
	datac => \Mux0~3_combout\,
	datad => \a[7]~input_o\,
	combout => \Mux0~13_combout\);

-- Location: LCCOMB_X65_Y72_N24
\Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~11_combout\ = (\Mux0~13_combout\) # ((\Mux0~10_combout\ & (\Mux0~8_combout\)) # (!\Mux0~10_combout\ & ((\Mux0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~10_combout\,
	datab => \Mux0~8_combout\,
	datac => \Mux0~9_combout\,
	datad => \Mux0~13_combout\,
	combout => \Mux0~11_combout\);

-- Location: LCCOMB_X66_Y72_N4
\SUB|sum[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SUB|sum[7]~1_combout\ = \a[7]~input_o\ $ (((\SUB|carry_in_internal[6]~4_combout\ & ((\a[6]~input_o\) # (\b[6]~input_o\))) # (!\SUB|carry_in_internal[6]~4_combout\ & (\a[6]~input_o\ & \b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SUB|carry_in_internal[6]~4_combout\,
	datab => \a[7]~input_o\,
	datac => \a[6]~input_o\,
	datad => \b[6]~input_o\,
	combout => \SUB|sum[7]~1_combout\);

-- Location: LCCOMB_X65_Y72_N26
\Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~12_combout\ = (\Mux0~11_combout\) # ((\Mux0~7_combout\ & (\b[7]~input_o\ $ (\SUB|sum[7]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[7]~input_o\,
	datab => \Mux0~11_combout\,
	datac => \Mux0~7_combout\,
	datad => \SUB|sum[7]~1_combout\,
	combout => \Mux0~12_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;
END structure;


