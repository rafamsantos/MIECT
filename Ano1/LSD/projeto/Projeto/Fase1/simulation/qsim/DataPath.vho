-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "06/03/2020 11:55:05"

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

ENTITY 	IMemory IS
    PORT (
	clk : IN std_logic;
	En : IN std_logic;
	RA : IN std_logic_vector(2 DOWNTO 0);
	RD : OUT std_logic_vector(15 DOWNTO 0)
	);
END IMemory;

ARCHITECTURE structure OF IMemory IS
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
SIGNAL ww_En : std_logic;
SIGNAL ww_RA : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RD : std_logic_vector(15 DOWNTO 0);
SIGNAL \RD[0]~output_o\ : std_logic;
SIGNAL \RD[1]~output_o\ : std_logic;
SIGNAL \RD[2]~output_o\ : std_logic;
SIGNAL \RD[3]~output_o\ : std_logic;
SIGNAL \RD[4]~output_o\ : std_logic;
SIGNAL \RD[5]~output_o\ : std_logic;
SIGNAL \RD[6]~output_o\ : std_logic;
SIGNAL \RD[7]~output_o\ : std_logic;
SIGNAL \RD[8]~output_o\ : std_logic;
SIGNAL \RD[9]~output_o\ : std_logic;
SIGNAL \RD[10]~output_o\ : std_logic;
SIGNAL \RD[11]~output_o\ : std_logic;
SIGNAL \RD[12]~output_o\ : std_logic;
SIGNAL \RD[13]~output_o\ : std_logic;
SIGNAL \RD[14]~output_o\ : std_logic;
SIGNAL \RD[15]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \En~input_o\ : std_logic;
SIGNAL \RA[0]~input_o\ : std_logic;
SIGNAL \RA[2]~input_o\ : std_logic;
SIGNAL \RA[1]~input_o\ : std_logic;
SIGNAL \RD~0_combout\ : std_logic;
SIGNAL \RD[0]~reg0_q\ : std_logic;
SIGNAL \RD~1_combout\ : std_logic;
SIGNAL \RD[1]~reg0_q\ : std_logic;
SIGNAL \RD~2_combout\ : std_logic;
SIGNAL \RD[2]~reg0_q\ : std_logic;
SIGNAL \RD~3_combout\ : std_logic;
SIGNAL \RD[4]~reg0_q\ : std_logic;
SIGNAL \RD[6]~reg0_q\ : std_logic;
SIGNAL \RD~4_combout\ : std_logic;
SIGNAL \RD[7]~reg0_q\ : std_logic;
SIGNAL \RD~5_combout\ : std_logic;
SIGNAL \RD[8]~reg0_q\ : std_logic;
SIGNAL \RD~6_combout\ : std_logic;
SIGNAL \RD[9]~reg0_q\ : std_logic;
SIGNAL \RD~7_combout\ : std_logic;
SIGNAL \RD[10]~reg0_q\ : std_logic;
SIGNAL \RD~8_combout\ : std_logic;
SIGNAL \RD[12]~reg0_q\ : std_logic;
SIGNAL \RD~9_combout\ : std_logic;
SIGNAL \RD[13]~reg0_q\ : std_logic;
SIGNAL \RD~10_combout\ : std_logic;
SIGNAL \RD[14]~reg0_q\ : std_logic;
SIGNAL \RD~11_combout\ : std_logic;
SIGNAL \RD[15]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_En <= En;
ww_RA <= RA;
RD <= ww_RD;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RD[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[0]~output_o\);

\RD[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[1]~output_o\);

\RD[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[2]~output_o\);

\RD[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD[3]~output_o\);

\RD[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[4]~output_o\);

\RD[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD[5]~output_o\);

\RD[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[6]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[6]~output_o\);

\RD[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[7]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[7]~output_o\);

\RD[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[8]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[8]~output_o\);

\RD[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[9]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[9]~output_o\);

\RD[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[10]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[10]~output_o\);

\RD[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \RD[11]~output_o\);

\RD[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[12]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[12]~output_o\);

\RD[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[13]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[13]~output_o\);

\RD[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[14]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[14]~output_o\);

\RD[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD[15]~reg0_q\,
	devoe => ww_devoe,
	o => \RD[15]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\En~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_En,
	o => \En~input_o\);

\RA[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(0),
	o => \RA[0]~input_o\);

\RA[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(2),
	o => \RA[2]~input_o\);

\RA[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RA(1),
	o => \RA[1]~input_o\);

\RD~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~0_combout\ = (\En~input_o\ & (!\RA[1]~input_o\ & (\RA[0]~input_o\ $ (\RA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \RA[0]~input_o\,
	datac => \RA[2]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \RD~0_combout\);

\RD[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[0]~reg0_q\);

\RD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~1_combout\ = (\En~input_o\ & (\RA[1]~input_o\ & (!\RA[0]~input_o\ & !\RA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \RA[1]~input_o\,
	datac => \RA[0]~input_o\,
	datad => \RA[2]~input_o\,
	combout => \RD~1_combout\);

\RD[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[1]~reg0_q\);

\RD~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~2_combout\ = (\RA[0]~input_o\ & (\En~input_o\ & (\RA[1]~input_o\ & !\RA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \En~input_o\,
	datac => \RA[1]~input_o\,
	datad => \RA[2]~input_o\,
	combout => \RD~2_combout\);

\RD[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[2]~reg0_q\);

\RD~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~3_combout\ = (\RA[0]~input_o\ & (\RA[2]~input_o\ & (\En~input_o\ & !\RA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \RA[2]~input_o\,
	datac => \En~input_o\,
	datad => \RA[1]~input_o\,
	combout => \RD~3_combout\);

\RD[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[4]~reg0_q\);

\RD[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[6]~reg0_q\);

\RD~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~4_combout\ = (\En~input_o\ & (((\RA[2]~input_o\ & !\RA[1]~input_o\)) # (!\RA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \RA[2]~input_o\,
	datac => \RA[1]~input_o\,
	datad => \RA[0]~input_o\,
	combout => \RD~4_combout\);

\RD[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[7]~reg0_q\);

\RD~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~5_combout\ = (\En~input_o\ & ((\RA[1]~input_o\ & ((!\RA[2]~input_o\))) # (!\RA[1]~input_o\ & (\RA[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \RA[0]~input_o\,
	datac => \RA[1]~input_o\,
	datad => \RA[2]~input_o\,
	combout => \RD~5_combout\);

\RD[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[8]~reg0_q\);

\RD~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~6_combout\ = (\RA[2]~input_o\ & (\En~input_o\ & (!\RA[0]~input_o\ & !\RA[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \En~input_o\,
	datac => \RA[0]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \RD~6_combout\);

\RD[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[9]~reg0_q\);

\RD~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~7_combout\ = (\RA[0]~input_o\ & (\En~input_o\ & (\RA[2]~input_o\ $ (\RA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[0]~input_o\,
	datab => \En~input_o\,
	datac => \RA[2]~input_o\,
	datad => \RA[1]~input_o\,
	combout => \RD~7_combout\);

\RD[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[10]~reg0_q\);

\RD~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~8_combout\ = (\RA[2]~input_o\ & (\En~input_o\ & !\RA[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RA[2]~input_o\,
	datab => \En~input_o\,
	datad => \RA[1]~input_o\,
	combout => \RD~8_combout\);

\RD[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[12]~reg0_q\);

\RD~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~9_combout\ = (\En~input_o\ & (((\RA[0]~input_o\ & !\RA[1]~input_o\)) # (!\RA[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \RA[0]~input_o\,
	datac => \RA[1]~input_o\,
	datad => \RA[2]~input_o\,
	combout => \RD~9_combout\);

\RD[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[13]~reg0_q\);

\RD~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~10_combout\ = (\En~input_o\ & ((\RA[1]~input_o\ & ((!\RA[0]~input_o\))) # (!\RA[1]~input_o\ & (!\RA[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \RA[1]~input_o\,
	datac => \RA[2]~input_o\,
	datad => \RA[0]~input_o\,
	combout => \RD~10_combout\);

\RD[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[14]~reg0_q\);

\RD~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD~11_combout\ = (\En~input_o\ & (((!\RA[2]~input_o\ & !\RA[1]~input_o\)) # (!\RA[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~input_o\,
	datab => \RA[2]~input_o\,
	datac => \RA[1]~input_o\,
	datad => \RA[0]~input_o\,
	combout => \RD~11_combout\);

\RD[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \RD~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD[15]~reg0_q\);

ww_RD(0) <= \RD[0]~output_o\;

ww_RD(1) <= \RD[1]~output_o\;

ww_RD(2) <= \RD[2]~output_o\;

ww_RD(3) <= \RD[3]~output_o\;

ww_RD(4) <= \RD[4]~output_o\;

ww_RD(5) <= \RD[5]~output_o\;

ww_RD(6) <= \RD[6]~output_o\;

ww_RD(7) <= \RD[7]~output_o\;

ww_RD(8) <= \RD[8]~output_o\;

ww_RD(9) <= \RD[9]~output_o\;

ww_RD(10) <= \RD[10]~output_o\;

ww_RD(11) <= \RD[11]~output_o\;

ww_RD(12) <= \RD[12]~output_o\;

ww_RD(13) <= \RD[13]~output_o\;

ww_RD(14) <= \RD[14]~output_o\;

ww_RD(15) <= \RD[15]~output_o\;
END structure;


