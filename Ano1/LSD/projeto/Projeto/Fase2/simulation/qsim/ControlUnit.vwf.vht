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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/31/2020 03:28:03"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          ControlUnit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY ControlUnit_vhd_vec_tst IS
END ControlUnit_vhd_vec_tst;
ARCHITECTURE ControlUnit_arch OF ControlUnit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUOp : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL EnPc : STD_LOGIC;
SIGNAL func : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL MemtoReg : STD_LOGIC;
SIGNAL MemWr : STD_LOGIC;
SIGNAL opCode : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWr : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL RI : STD_LOGIC;
COMPONENT ControlUnit
	PORT (
	ALUOp : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALUSrc : BUFFER STD_LOGIC;
	clk : IN STD_LOGIC;
	EnPc : BUFFER STD_LOGIC;
	func : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	MemtoReg : BUFFER STD_LOGIC;
	MemWr : BUFFER STD_LOGIC;
	opCode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	RegDst : BUFFER STD_LOGIC;
	RegWr : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	RI : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : ControlUnit
	PORT MAP (
-- list connections between master ports and signals
	ALUOp => ALUOp,
	ALUSrc => ALUSrc,
	clk => clk,
	EnPc => EnPc,
	func => func,
	MemtoReg => MemtoReg,
	MemWr => MemWr,
	opCode => opCode,
	RegDst => RegDst,
	RegWr => RegWr,
	reset => reset,
	RI => RI
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 100000 ps;
	clk <= '1';
	WAIT FOR 100000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
-- func[3]
t_prcs_func_3: PROCESS
BEGIN
	func(3) <= '0';
	WAIT FOR 40000 ps;
	func(3) <= '1';
	WAIT FOR 40000 ps;
	func(3) <= '0';
	WAIT FOR 40000 ps;
	func(3) <= '1';
	WAIT FOR 80000 ps;
	func(3) <= '0';
	WAIT FOR 80000 ps;
	func(3) <= '1';
	WAIT FOR 160000 ps;
	func(3) <= '0';
	WAIT FOR 40000 ps;
	func(3) <= '1';
	WAIT FOR 40000 ps;
	func(3) <= '0';
	WAIT FOR 120000 ps;
	func(3) <= '1';
	WAIT FOR 40000 ps;
	func(3) <= '0';
	WAIT FOR 160000 ps;
	func(3) <= '1';
	WAIT FOR 40000 ps;
	func(3) <= '0';
WAIT;
END PROCESS t_prcs_func_3;
-- func[2]
t_prcs_func_2: PROCESS
BEGIN
	func(2) <= '0';
	WAIT FOR 40000 ps;
	func(2) <= '1';
	WAIT FOR 120000 ps;
	func(2) <= '0';
	WAIT FOR 40000 ps;
	func(2) <= '1';
	WAIT FOR 80000 ps;
	func(2) <= '0';
	WAIT FOR 40000 ps;
	func(2) <= '1';
	WAIT FOR 200000 ps;
	func(2) <= '0';
	WAIT FOR 320000 ps;
	func(2) <= '1';
	WAIT FOR 80000 ps;
	func(2) <= '0';
WAIT;
END PROCESS t_prcs_func_2;
-- func[1]
t_prcs_func_1: PROCESS
BEGIN
	func(1) <= '0';
	WAIT FOR 120000 ps;
	func(1) <= '1';
	WAIT FOR 80000 ps;
	func(1) <= '0';
	WAIT FOR 40000 ps;
	func(1) <= '1';
	WAIT FOR 40000 ps;
	func(1) <= '0';
	WAIT FOR 40000 ps;
	func(1) <= '1';
	WAIT FOR 120000 ps;
	func(1) <= '0';
	WAIT FOR 40000 ps;
	func(1) <= '1';
	WAIT FOR 40000 ps;
	func(1) <= '0';
	WAIT FOR 40000 ps;
	func(1) <= '1';
	WAIT FOR 80000 ps;
	func(1) <= '0';
	WAIT FOR 80000 ps;
	func(1) <= '1';
	WAIT FOR 40000 ps;
	func(1) <= '0';
	WAIT FOR 40000 ps;
	func(1) <= '1';
WAIT;
END PROCESS t_prcs_func_1;
-- func[0]
t_prcs_func_0: PROCESS
BEGIN
	func(0) <= '0';
	WAIT FOR 40000 ps;
	func(0) <= '1';
	WAIT FOR 160000 ps;
	func(0) <= '0';
	WAIT FOR 40000 ps;
	func(0) <= '1';
	WAIT FOR 80000 ps;
	func(0) <= '0';
	WAIT FOR 240000 ps;
	func(0) <= '1';
	WAIT FOR 40000 ps;
	func(0) <= '0';
	WAIT FOR 40000 ps;
	func(0) <= '1';
	WAIT FOR 40000 ps;
	func(0) <= '0';
	WAIT FOR 40000 ps;
	func(0) <= '1';
	WAIT FOR 40000 ps;
	func(0) <= '0';
	WAIT FOR 120000 ps;
	func(0) <= '1';
	WAIT FOR 80000 ps;
	func(0) <= '0';
WAIT;
END PROCESS t_prcs_func_0;
-- opCode[2]
t_prcs_opCode_2: PROCESS
BEGIN
	opCode(2) <= '0';
	WAIT FOR 160000 ps;
	opCode(2) <= '1';
	WAIT FOR 170000 ps;
	opCode(2) <= '0';
WAIT;
END PROCESS t_prcs_opCode_2;
-- opCode[1]
t_prcs_opCode_1: PROCESS
BEGIN
	opCode(1) <= '0';
	WAIT FOR 160000 ps;
	opCode(1) <= '1';
	WAIT FOR 170000 ps;
	opCode(1) <= '0';
WAIT;
END PROCESS t_prcs_opCode_1;
-- opCode[0]
t_prcs_opCode_0: PROCESS
BEGIN
	opCode(0) <= '1';
	WAIT FOR 160000 ps;
	opCode(0) <= '0';
WAIT;
END PROCESS t_prcs_opCode_0;
END ControlUnit_arch;
