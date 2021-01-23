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
-- Generated on "06/03/2020 11:50:23"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          PC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY PC_vhd_vec_tst IS
END PC_vhd_vec_tst;
ARCHITECTURE PC_arch OF PC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cnt : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL En : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
COMPONENT PC
	PORT (
	clk : IN STD_LOGIC;
	cnt : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	En : IN STD_LOGIC;
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : PC
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cnt => cnt,
	En => En,
	reset => reset
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

-- En
t_prcs_En: PROCESS
BEGIN
	En <= '0';
	WAIT FOR 40000 ps;
	En <= '1';
	WAIT FOR 40000 ps;
	En <= '0';
	WAIT FOR 40000 ps;
	En <= '1';
	WAIT FOR 120000 ps;
	En <= '0';
	WAIT FOR 40000 ps;
	En <= '1';
	WAIT FOR 40000 ps;
	En <= '0';
	WAIT FOR 160000 ps;
	En <= '1';
	WAIT FOR 240000 ps;
	En <= '0';
	WAIT FOR 200000 ps;
	En <= '1';
WAIT;
END PROCESS t_prcs_En;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END PC_arch;
