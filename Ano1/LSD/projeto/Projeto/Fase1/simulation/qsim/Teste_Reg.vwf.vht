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
-- Generated on "05/30/2020 22:31:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DataPath
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DataPath_vhd_vec_tst IS
END DataPath_vhd_vec_tst;
ARCHITECTURE DataPath_arch OF DataPath_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL ALUOp : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL ALUSrc : STD_LOGIC;
SIGNAL clk : STD_LOGIC;
SIGNAL EnPc : STD_LOGIC;
SIGNAL MemToReg : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL MemWr : STD_LOGIC;
SIGNAL RegDst : STD_LOGIC;
SIGNAL RegWr : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL RI : STD_LOGIC;
COMPONENT DataPath
	PORT (
	ALUOp : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ALUSrc : IN STD_LOGIC;
	clk : IN STD_LOGIC;
	EnPc : IN STD_LOGIC;
	MemToReg : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	MemWr : IN STD_LOGIC;
	RegDst : IN STD_LOGIC;
	RegWr : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	RI : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : DataPath
	PORT MAP (
-- list connections between master ports and signals
	ALUOp => ALUOp,
	ALUSrc => ALUSrc,
	clk => clk,
	EnPc => EnPc,
	MemToReg => MemToReg,
	MemWr => MemWr,
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
END DataPath_arch;
