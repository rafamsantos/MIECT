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

-- DATE "05/31/2020 03:28:04"

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

ENTITY 	ControlUnit IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	opCode : IN std_logic_vector(2 DOWNTO 0);
	func : IN std_logic_vector(3 DOWNTO 0);
	EnPc : BUFFER std_logic;
	RI : BUFFER std_logic;
	RegWr : BUFFER std_logic;
	RegDst : BUFFER std_logic;
	ALUSrc : BUFFER std_logic;
	ALUOp : BUFFER std_logic_vector(3 DOWNTO 0);
	MemWr : BUFFER std_logic;
	MemtoReg : BUFFER std_logic
	);
END ControlUnit;

ARCHITECTURE structure OF ControlUnit IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_opCode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_func : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EnPc : std_logic;
SIGNAL ww_RI : std_logic;
SIGNAL ww_RegWr : std_logic;
SIGNAL ww_RegDst : std_logic;
SIGNAL ww_ALUSrc : std_logic;
SIGNAL ww_ALUOp : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MemWr : std_logic;
SIGNAL ww_MemtoReg : std_logic;
SIGNAL \EnPc~output_o\ : std_logic;
SIGNAL \RI~output_o\ : std_logic;
SIGNAL \RegWr~output_o\ : std_logic;
SIGNAL \RegDst~output_o\ : std_logic;
SIGNAL \ALUSrc~output_o\ : std_logic;
SIGNAL \ALUOp[0]~output_o\ : std_logic;
SIGNAL \ALUOp[1]~output_o\ : std_logic;
SIGNAL \ALUOp[2]~output_o\ : std_logic;
SIGNAL \ALUOp[3]~output_o\ : std_logic;
SIGNAL \MemWr~output_o\ : std_logic;
SIGNAL \MemtoReg~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \opCode[1]~input_o\ : std_logic;
SIGNAL \opCode[2]~input_o\ : std_logic;
SIGNAL \opCode[0]~input_o\ : std_logic;
SIGNAL \ps~9_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \ps~13_combout\ : std_logic;
SIGNAL \ps.decode~q\ : std_logic;
SIGNAL \ps~16_combout\ : std_logic;
SIGNAL \ps.execute~q\ : std_logic;
SIGNAL \ps~11_combout\ : std_logic;
SIGNAL \ps~12_combout\ : std_logic;
SIGNAL \ps.regUpdate~q\ : std_logic;
SIGNAL \ps~14_combout\ : std_logic;
SIGNAL \ps~15_combout\ : std_logic;
SIGNAL \ps.WriteMem~q\ : std_logic;
SIGNAL \ps.rst~0_combout\ : std_logic;
SIGNAL \ps.rst~q\ : std_logic;
SIGNAL \ps~8_combout\ : std_logic;
SIGNAL \ps~10_combout\ : std_logic;
SIGNAL \ps.fetch~q\ : std_logic;
SIGNAL \EnPc~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \func[0]~input_o\ : std_logic;
SIGNAL \ALUOp~0_combout\ : std_logic;
SIGNAL \ALUOp~1_combout\ : std_logic;
SIGNAL \func[1]~input_o\ : std_logic;
SIGNAL \ALUOp~2_combout\ : std_logic;
SIGNAL \func[2]~input_o\ : std_logic;
SIGNAL \ALUOp~3_combout\ : std_logic;
SIGNAL \func[3]~input_o\ : std_logic;
SIGNAL \ALUOp~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_opCode <= opCode;
ww_func <= func;
EnPc <= ww_EnPc;
RI <= ww_RI;
RegWr <= ww_RegWr;
RegDst <= ww_RegDst;
ALUSrc <= ww_ALUSrc;
ALUOp <= ww_ALUOp;
MemWr <= ww_MemWr;
MemtoReg <= ww_MemtoReg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\EnPc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EnPc~0_combout\,
	devoe => ww_devoe,
	o => \EnPc~output_o\);

\RI~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \EnPc~0_combout\,
	devoe => ww_devoe,
	o => \RI~output_o\);

\RegWr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ps.regUpdate~q\,
	devoe => ww_devoe,
	o => \RegWr~output_o\);

\RegDst~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ps.regUpdate~q\,
	devoe => ww_devoe,
	o => \RegDst~output_o\);

\ALUSrc~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector3~2_combout\,
	devoe => ww_devoe,
	o => \ALUSrc~output_o\);

\ALUOp[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp~1_combout\,
	devoe => ww_devoe,
	o => \ALUOp[0]~output_o\);

\ALUOp[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp~2_combout\,
	devoe => ww_devoe,
	o => \ALUOp[1]~output_o\);

\ALUOp[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp~3_combout\,
	devoe => ww_devoe,
	o => \ALUOp[2]~output_o\);

\ALUOp[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALUOp~4_combout\,
	devoe => ww_devoe,
	o => \ALUOp[3]~output_o\);

\MemWr~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector4~1_combout\,
	devoe => ww_devoe,
	o => \MemWr~output_o\);

\MemtoReg~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Selector4~0_combout\,
	devoe => ww_devoe,
	o => \MemtoReg~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\opCode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(1),
	o => \opCode[1]~input_o\);

\opCode[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(2),
	o => \opCode[2]~input_o\);

\opCode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_opCode(0),
	o => \opCode[0]~input_o\);

\ps~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~9_combout\ = (!\opCode[2]~input_o\ & (!\opCode[0]~input_o\ & !\opCode[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \opCode[2]~input_o\,
	datac => \opCode[0]~input_o\,
	datad => \opCode[1]~input_o\,
	combout => \ps~9_combout\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\ps~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~13_combout\ = (!\reset~input_o\ & ((\ps~9_combout\ & (\ps.decode~q\)) # (!\ps~9_combout\ & ((\ps.fetch~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.decode~q\,
	datab => \ps.fetch~q\,
	datac => \ps~9_combout\,
	datad => \reset~input_o\,
	combout => \ps~13_combout\);

\ps.decode\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ps~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.decode~q\);

\ps~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~16_combout\ = (!\reset~input_o\ & ((\ps~9_combout\ & (\ps.execute~q\)) # (!\ps~9_combout\ & ((\ps.decode~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.execute~q\,
	datab => \ps.decode~q\,
	datac => \ps~9_combout\,
	datad => \reset~input_o\,
	combout => \ps~16_combout\);

\ps.execute\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ps~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.execute~q\);

\ps~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~11_combout\ = \opCode[2]~input_o\ $ (\opCode[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode[2]~input_o\,
	datab => \opCode[0]~input_o\,
	combout => \ps~11_combout\);

\ps~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~12_combout\ = (!\opCode[1]~input_o\ & (\ps.execute~q\ & (!\reset~input_o\ & \ps~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode[1]~input_o\,
	datab => \ps.execute~q\,
	datac => \reset~input_o\,
	datad => \ps~11_combout\,
	combout => \ps~12_combout\);

\ps.regUpdate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ps~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.regUpdate~q\);

\ps~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~14_combout\ = (\ps.execute~q\ & ((\opCode[1]~input_o\) # ((\opCode[2]~input_o\ & \opCode[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.execute~q\,
	datab => \opCode[1]~input_o\,
	datac => \opCode[2]~input_o\,
	datad => \opCode[0]~input_o\,
	combout => \ps~14_combout\);

\ps~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~15_combout\ = (\ps~14_combout\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps~14_combout\,
	datad => \reset~input_o\,
	combout => \ps~15_combout\);

\ps.WriteMem\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ps~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.WriteMem~q\);

\ps.rst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps.rst~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	combout => \ps.rst~0_combout\);

\ps.rst\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ps.rst~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.rst~q\);

\ps~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~8_combout\ = (\ps.regUpdate~q\) # ((\ps.WriteMem~q\) # (!\ps.rst~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.regUpdate~q\,
	datab => \ps.WriteMem~q\,
	datad => \ps.rst~q\,
	combout => \ps~8_combout\);

\ps~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ps~10_combout\ = (!\reset~input_o\ & ((\ps~8_combout\) # ((\ps.fetch~q\ & \ps~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps~8_combout\,
	datab => \ps.fetch~q\,
	datac => \ps~9_combout\,
	datad => \reset~input_o\,
	combout => \ps~10_combout\);

\ps.fetch\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \ps~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ps.fetch~q\);

\EnPc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \EnPc~0_combout\ = (\ps.fetch~q\ & ((\opCode[2]~input_o\) # ((\opCode[0]~input_o\) # (\opCode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.fetch~q\,
	datab => \opCode[2]~input_o\,
	datac => \opCode[0]~input_o\,
	datad => \opCode[1]~input_o\,
	combout => \EnPc~0_combout\);

\Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\opCode[2]~input_o\ & (((\ps.regUpdate~q\) # (\ps.decode~q\)))) # (!\opCode[2]~input_o\ & (\opCode[1]~input_o\ & ((\ps.regUpdate~q\) # (\ps.decode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode[2]~input_o\,
	datab => \opCode[1]~input_o\,
	datac => \ps.regUpdate~q\,
	datad => \ps.decode~q\,
	combout => \Selector3~0_combout\);

\Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\ps.WriteMem~q\) # ((\ps.execute~q\ & ((\opCode[2]~input_o\) # (\opCode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.WriteMem~q\,
	datab => \ps.execute~q\,
	datac => \opCode[2]~input_o\,
	datad => \opCode[1]~input_o\,
	combout => \Selector3~1_combout\);

\Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\Selector3~0_combout\) # ((\Selector3~1_combout\) # ((\ps.regUpdate~q\ & !\opCode[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector3~1_combout\,
	datac => \ps.regUpdate~q\,
	datad => \opCode[0]~input_o\,
	combout => \Selector3~2_combout\);

\func[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(0),
	o => \func[0]~input_o\);

\ALUOp~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp~0_combout\ = (\opCode[0]~input_o\ & (\ps.execute~q\ & (!\opCode[2]~input_o\ & !\opCode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode[0]~input_o\,
	datab => \ps.execute~q\,
	datac => \opCode[2]~input_o\,
	datad => \opCode[1]~input_o\,
	combout => \ALUOp~0_combout\);

\ALUOp~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp~1_combout\ = (\func[0]~input_o\ & \ALUOp~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \func[0]~input_o\,
	datab => \ALUOp~0_combout\,
	combout => \ALUOp~1_combout\);

\func[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(1),
	o => \func[1]~input_o\);

\ALUOp~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp~2_combout\ = (\ALUOp~0_combout\ & \func[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp~0_combout\,
	datab => \func[1]~input_o\,
	combout => \ALUOp~2_combout\);

\func[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(2),
	o => \func[2]~input_o\);

\ALUOp~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp~3_combout\ = (\ALUOp~0_combout\ & \func[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp~0_combout\,
	datab => \func[2]~input_o\,
	combout => \ALUOp~3_combout\);

\func[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_func(3),
	o => \func[3]~input_o\);

\ALUOp~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ALUOp~4_combout\ = (\ALUOp~0_combout\ & \func[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ALUOp~0_combout\,
	datab => \func[3]~input_o\,
	combout => \ALUOp~4_combout\);

\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\opCode[2]~input_o\ & (\ps.regUpdate~q\ & ((\opCode[0]~input_o\) # (\opCode[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \opCode[2]~input_o\,
	datab => \ps.regUpdate~q\,
	datac => \opCode[0]~input_o\,
	datad => \opCode[1]~input_o\,
	combout => \Selector4~0_combout\);

\Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\ps.WriteMem~q\) # (\Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps.WriteMem~q\,
	datab => \Selector4~0_combout\,
	combout => \Selector4~1_combout\);

ww_EnPc <= \EnPc~output_o\;

ww_RI <= \RI~output_o\;

ww_RegWr <= \RegWr~output_o\;

ww_RegDst <= \RegDst~output_o\;

ww_ALUSrc <= \ALUSrc~output_o\;

ww_ALUOp(0) <= \ALUOp[0]~output_o\;

ww_ALUOp(1) <= \ALUOp[1]~output_o\;

ww_ALUOp(2) <= \ALUOp[2]~output_o\;

ww_ALUOp(3) <= \ALUOp[3]~output_o\;

ww_MemWr <= \MemWr~output_o\;

ww_MemtoReg <= \MemtoReg~output_o\;
END structure;


