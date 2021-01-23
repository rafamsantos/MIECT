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
-- Generated on "05/30/2020 01:31:24"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux8_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux8_1_vhd_vec_tst IS
END Mux8_1_vhd_vec_tst;
ARCHITECTURE Mux8_1_arch OF Mux8_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dataIn0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn3 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn4 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn5 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn6 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataIn7 : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Mux8_1
	PORT (
	dataIn0 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn1 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn2 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn3 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn4 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn5 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn6 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataIn7 : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux8_1
	PORT MAP (
-- list connections between master ports and signals
	dataIn0 => dataIn0,
	dataIn1 => dataIn1,
	dataIn2 => dataIn2,
	dataIn3 => dataIn3,
	dataIn4 => dataIn4,
	dataIn5 => dataIn5,
	dataIn6 => dataIn6,
	dataIn7 => dataIn7,
	dataOut => dataOut,
	sel => sel
	);
-- dataIn0[7]
t_prcs_dataIn0_7: PROCESS
BEGIN
	dataIn0(7) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(7) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_7;
-- dataIn0[6]
t_prcs_dataIn0_6: PROCESS
BEGIN
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_6;
-- dataIn0[5]
t_prcs_dataIn0_5: PROCESS
BEGIN
	dataIn0(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 240000 ps;
	dataIn0(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(5) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_5;
-- dataIn0[4]
t_prcs_dataIn0_4: PROCESS
BEGIN
	dataIn0(4) <= '1';
	WAIT FOR 160000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_4;
-- dataIn0[3]
t_prcs_dataIn0_3: PROCESS
BEGIN
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 160000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_3;
-- dataIn0[2]
t_prcs_dataIn0_2: PROCESS
BEGIN
	dataIn0(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 160000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_2;
-- dataIn0[1]
t_prcs_dataIn0_1: PROCESS
BEGIN
	dataIn0(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 120000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 240000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_1;
-- dataIn0[0]
t_prcs_dataIn0_0: PROCESS
BEGIN
	dataIn0(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn0(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn0_0;
-- dataIn1[7]
t_prcs_dataIn1_7: PROCESS
BEGIN
	dataIn1(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 160000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(7) <= '1';
	WAIT FOR 200000 ps;
	dataIn1(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(7) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_7;
-- dataIn1[6]
t_prcs_dataIn1_6: PROCESS
BEGIN
	dataIn1(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 200000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(6) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_6;
-- dataIn1[5]
t_prcs_dataIn1_5: PROCESS
BEGIN
	dataIn1(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 200000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(5) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_5;
-- dataIn1[4]
t_prcs_dataIn1_4: PROCESS
BEGIN
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(4) <= '0';
	WAIT FOR 160000 ps;
	dataIn1(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_4;
-- dataIn1[3]
t_prcs_dataIn1_3: PROCESS
BEGIN
	dataIn1(3) <= '0';
	WAIT FOR 280000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 160000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 160000 ps;
	dataIn1(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_3;
-- dataIn1[2]
t_prcs_dataIn1_2: PROCESS
BEGIN
	dataIn1(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 200000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_2;
-- dataIn1[1]
t_prcs_dataIn1_1: PROCESS
BEGIN
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 280000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_1;
-- dataIn1[0]
t_prcs_dataIn1_0: PROCESS
BEGIN
	dataIn1(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn1(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn1_0;
-- dataIn2[7]
t_prcs_dataIn2_7: PROCESS
BEGIN
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_7;
-- dataIn2[6]
t_prcs_dataIn2_6: PROCESS
BEGIN
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 200000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_6;
-- dataIn2[5]
t_prcs_dataIn2_5: PROCESS
BEGIN
	dataIn2(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(5) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_5;
-- dataIn2[4]
t_prcs_dataIn2_4: PROCESS
BEGIN
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 160000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 200000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_4;
-- dataIn2[3]
t_prcs_dataIn2_3: PROCESS
BEGIN
	dataIn2(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_3;
-- dataIn2[2]
t_prcs_dataIn2_2: PROCESS
BEGIN
	dataIn2(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 240000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 160000 ps;
	dataIn2(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_2;
-- dataIn2[1]
t_prcs_dataIn2_1: PROCESS
BEGIN
	dataIn2(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 120000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 160000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_1;
-- dataIn2[0]
t_prcs_dataIn2_0: PROCESS
BEGIN
	dataIn2(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 240000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn2(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_0;
-- dataIn3[7]
t_prcs_dataIn3_7: PROCESS
BEGIN
	dataIn3(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(7) <= '0';
	WAIT FOR 320000 ps;
	dataIn3(7) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_7;
-- dataIn3[6]
t_prcs_dataIn3_6: PROCESS
BEGIN
	dataIn3(6) <= '1';
	WAIT FOR 280000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 160000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_6;
-- dataIn3[5]
t_prcs_dataIn3_5: PROCESS
BEGIN
	dataIn3(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 280000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(5) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_5;
-- dataIn3[4]
t_prcs_dataIn3_4: PROCESS
BEGIN
	dataIn3(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_4;
-- dataIn3[3]
t_prcs_dataIn3_3: PROCESS
BEGIN
	dataIn3(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 160000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 200000 ps;
	dataIn3(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_3;
-- dataIn3[2]
t_prcs_dataIn3_2: PROCESS
BEGIN
	dataIn3(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn3(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_2;
-- dataIn3[1]
t_prcs_dataIn3_1: PROCESS
BEGIN
	dataIn3(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 200000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_1;
-- dataIn3[0]
t_prcs_dataIn3_0: PROCESS
BEGIN
	dataIn3(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn3(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_0;
-- dataIn4[7]
t_prcs_dataIn4_7: PROCESS
BEGIN
	dataIn4(7) <= '1';
	WAIT FOR 120000 ps;
	dataIn4(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '1';
	WAIT FOR 200000 ps;
	dataIn4(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_7;
-- dataIn4[6]
t_prcs_dataIn4_6: PROCESS
BEGIN
	dataIn4(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(6) <= '1';
	WAIT FOR 160000 ps;
	dataIn4(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(6) <= '1';
	WAIT FOR 120000 ps;
	dataIn4(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(6) <= '1';
	WAIT FOR 120000 ps;
	dataIn4(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(6) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_6;
-- dataIn4[5]
t_prcs_dataIn4_5: PROCESS
BEGIN
	dataIn4(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(5) <= '0';
	WAIT FOR 120000 ps;
	dataIn4(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn4(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn4(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_5;
-- dataIn4[4]
t_prcs_dataIn4_4: PROCESS
BEGIN
	dataIn4(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(4) <= '0';
	WAIT FOR 160000 ps;
	dataIn4(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn4(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(4) <= '0';
	WAIT FOR 280000 ps;
	dataIn4(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn4_4;
-- dataIn4[3]
t_prcs_dataIn4_3: PROCESS
BEGIN
	dataIn4(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(3) <= '1';
	WAIT FOR 160000 ps;
	dataIn4(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(3) <= '1';
	WAIT FOR 200000 ps;
	dataIn4(3) <= '0';
	WAIT FOR 240000 ps;
	dataIn4(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_3;
-- dataIn4[2]
t_prcs_dataIn4_2: PROCESS
BEGIN
	dataIn4(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(2) <= '0';
	WAIT FOR 200000 ps;
	dataIn4(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn4(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn4(2) <= '0';
	WAIT FOR 160000 ps;
	dataIn4(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_2;
-- dataIn4[1]
t_prcs_dataIn4_1: PROCESS
BEGIN
	dataIn4(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(1) <= '0';
	WAIT FOR 280000 ps;
	dataIn4(1) <= '1';
	WAIT FOR 160000 ps;
	dataIn4(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(1) <= '0';
	WAIT FOR 120000 ps;
	dataIn4(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn4_1;
-- dataIn4[0]
t_prcs_dataIn4_0: PROCESS
BEGIN
	dataIn4(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn4(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn4(0) <= '1';
	WAIT FOR 200000 ps;
	dataIn4(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn4(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn4(0) <= '1';
	WAIT FOR 160000 ps;
	dataIn4(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn4(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn4_0;
-- dataIn5[7]
t_prcs_dataIn5_7: PROCESS
BEGIN
	dataIn5(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(7) <= '0';
	WAIT FOR 280000 ps;
	dataIn5(7) <= '1';
	WAIT FOR 120000 ps;
	dataIn5(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn5(7) <= '1';
WAIT;
END PROCESS t_prcs_dataIn5_7;
-- dataIn5[6]
t_prcs_dataIn5_6: PROCESS
BEGIN
	dataIn5(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(6) <= '0';
	WAIT FOR 160000 ps;
	dataIn5(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(6) <= '1';
	WAIT FOR 160000 ps;
	dataIn5(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(6) <= '1';
WAIT;
END PROCESS t_prcs_dataIn5_6;
-- dataIn5[5]
t_prcs_dataIn5_5: PROCESS
BEGIN
	dataIn5(5) <= '0';
	WAIT FOR 120000 ps;
	dataIn5(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(5) <= '0';
	WAIT FOR 320000 ps;
	dataIn5(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(5) <= '0';
	WAIT FOR 160000 ps;
	dataIn5(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(5) <= '1';
WAIT;
END PROCESS t_prcs_dataIn5_5;
-- dataIn5[4]
t_prcs_dataIn5_4: PROCESS
BEGIN
	dataIn5(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(4) <= '0';
	WAIT FOR 160000 ps;
	dataIn5(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn5_4;
-- dataIn5[3]
t_prcs_dataIn5_3: PROCESS
BEGIN
	dataIn5(3) <= '1';
	WAIT FOR 120000 ps;
	dataIn5(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(3) <= '0';
	WAIT FOR 120000 ps;
	dataIn5(3) <= '1';
	WAIT FOR 160000 ps;
	dataIn5(3) <= '0';
WAIT;
END PROCESS t_prcs_dataIn5_3;
-- dataIn5[2]
t_prcs_dataIn5_2: PROCESS
BEGIN
	dataIn5(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '1';
	WAIT FOR 160000 ps;
	dataIn5(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '1';
	WAIT FOR 200000 ps;
	dataIn5(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn5_2;
-- dataIn5[1]
t_prcs_dataIn5_1: PROCESS
BEGIN
	dataIn5(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn5(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(1) <= '0';
	WAIT FOR 120000 ps;
	dataIn5(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(1) <= '1';
	WAIT FOR 160000 ps;
	dataIn5(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn5_1;
-- dataIn5[0]
t_prcs_dataIn5_0: PROCESS
BEGIN
	dataIn5(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(0) <= '1';
	WAIT FOR 160000 ps;
	dataIn5(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn5(0) <= '1';
	WAIT FOR 160000 ps;
	dataIn5(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn5(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn5(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn5(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn5_0;
-- dataIn6[7]
t_prcs_dataIn6_7: PROCESS
BEGIN
	dataIn6(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(7) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(7) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn6(7) <= '1';
	WAIT FOR 160000 ps;
	dataIn6(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn6(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn6_7;
-- dataIn6[6]
t_prcs_dataIn6_6: PROCESS
BEGIN
	dataIn6(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn6(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn6(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn6(6) <= '1';
	WAIT FOR 160000 ps;
	dataIn6(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(6) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn6(6) <= '1';
WAIT;
END PROCESS t_prcs_dataIn6_6;
-- dataIn6[5]
t_prcs_dataIn6_5: PROCESS
BEGIN
	dataIn6(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(5) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn6(5) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(5) <= '0';
	WAIT FOR 80000 ps;
	dataIn6(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(5) <= '0';
	WAIT FOR 280000 ps;
	dataIn6(5) <= '1';
WAIT;
END PROCESS t_prcs_dataIn6_5;
-- dataIn6[4]
t_prcs_dataIn6_4: PROCESS
BEGIN
	dataIn6(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(4) <= '0';
	WAIT FOR 200000 ps;
	dataIn6(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(4) <= '1';
	WAIT FOR 120000 ps;
	dataIn6(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(4) <= '0';
	WAIT FOR 120000 ps;
	dataIn6(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(4) <= '0';
WAIT;
END PROCESS t_prcs_dataIn6_4;
-- dataIn6[3]
t_prcs_dataIn6_3: PROCESS
BEGIN
	dataIn6(3) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(3) <= '0';
	WAIT FOR 120000 ps;
	dataIn6(3) <= '1';
	WAIT FOR 120000 ps;
	dataIn6(3) <= '0';
	WAIT FOR 320000 ps;
	dataIn6(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn6_3;
-- dataIn6[2]
t_prcs_dataIn6_2: PROCESS
BEGIN
	dataIn6(2) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(2) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(2) <= '0';
	WAIT FOR 280000 ps;
	dataIn6(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn6(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn6_2;
-- dataIn6[1]
t_prcs_dataIn6_1: PROCESS
BEGIN
	dataIn6(1) <= '1';
	WAIT FOR 360000 ps;
	dataIn6(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn6(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn6(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(1) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn6_1;
-- dataIn6[0]
t_prcs_dataIn6_0: PROCESS
BEGIN
	dataIn6(0) <= '0';
	WAIT FOR 200000 ps;
	dataIn6(0) <= '1';
	WAIT FOR 120000 ps;
	dataIn6(0) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(0) <= '0';
	WAIT FOR 160000 ps;
	dataIn6(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn6(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn6(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn6(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn6(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn6_0;
-- dataIn7[7]
t_prcs_dataIn7_7: PROCESS
BEGIN
	dataIn7(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(7) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '1';
	WAIT FOR 120000 ps;
	dataIn7(7) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '0';
	WAIT FOR 120000 ps;
	dataIn7(7) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(7) <= '0';
WAIT;
END PROCESS t_prcs_dataIn7_7;
-- dataIn7[6]
t_prcs_dataIn7_6: PROCESS
BEGIN
	dataIn7(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(6) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(6) <= '1';
	WAIT FOR 160000 ps;
	dataIn7(6) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(6) <= '1';
	WAIT FOR 160000 ps;
	dataIn7(6) <= '0';
	WAIT FOR 320000 ps;
	dataIn7(6) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(6) <= '0';
	WAIT FOR 120000 ps;
	dataIn7(6) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_6;
-- dataIn7[5]
t_prcs_dataIn7_5: PROCESS
BEGIN
	dataIn7(5) <= '0';
	WAIT FOR 120000 ps;
	dataIn7(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(5) <= '1';
	WAIT FOR 120000 ps;
	dataIn7(5) <= '0';
	WAIT FOR 160000 ps;
	dataIn7(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(5) <= '0';
	WAIT FOR 120000 ps;
	dataIn7(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(5) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(5) <= '0';
	WAIT FOR 160000 ps;
	dataIn7(5) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(5) <= '0';
WAIT;
END PROCESS t_prcs_dataIn7_5;
-- dataIn7[4]
t_prcs_dataIn7_4: PROCESS
BEGIN
	dataIn7(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(4) <= '0';
	WAIT FOR 240000 ps;
	dataIn7(4) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(4) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(4) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(4) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(4) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_4;
-- dataIn7[3]
t_prcs_dataIn7_3: PROCESS
BEGIN
	dataIn7(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(3) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(3) <= '1';
	WAIT FOR 160000 ps;
	dataIn7(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(3) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(3) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(3) <= '1';
	WAIT FOR 120000 ps;
	dataIn7(3) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_3;
-- dataIn7[2]
t_prcs_dataIn7_2: PROCESS
BEGIN
	dataIn7(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '1';
	WAIT FOR 120000 ps;
	dataIn7(2) <= '0';
	WAIT FOR 120000 ps;
	dataIn7(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(2) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_2;
-- dataIn7[1]
t_prcs_dataIn7_1: PROCESS
BEGIN
	dataIn7(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(1) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(1) <= '0';
	WAIT FOR 200000 ps;
	dataIn7(1) <= '1';
	WAIT FOR 120000 ps;
	dataIn7(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(1) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(1) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(1) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_1;
-- dataIn7[0]
t_prcs_dataIn7_0: PROCESS
BEGIN
	dataIn7(0) <= '0';
	WAIT FOR 120000 ps;
	dataIn7(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(0) <= '0';
	WAIT FOR 40000 ps;
	dataIn7(0) <= '1';
	WAIT FOR 80000 ps;
	dataIn7(0) <= '0';
	WAIT FOR 200000 ps;
	dataIn7(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(0) <= '0';
	WAIT FOR 160000 ps;
	dataIn7(0) <= '1';
	WAIT FOR 40000 ps;
	dataIn7(0) <= '0';
	WAIT FOR 80000 ps;
	dataIn7(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn7_0;
-- sel[2]
t_prcs_sel_2: PROCESS
BEGIN
	sel(2) <= '0';
	WAIT FOR 80000 ps;
	sel(2) <= '1';
	WAIT FOR 160000 ps;
	sel(2) <= '0';
	WAIT FOR 40000 ps;
	sel(2) <= '1';
	WAIT FOR 80000 ps;
	sel(2) <= '0';
	WAIT FOR 40000 ps;
	sel(2) <= '1';
	WAIT FOR 40000 ps;
	sel(2) <= '0';
	WAIT FOR 40000 ps;
	sel(2) <= '1';
	WAIT FOR 40000 ps;
	sel(2) <= '0';
	WAIT FOR 120000 ps;
	sel(2) <= '1';
	WAIT FOR 80000 ps;
	sel(2) <= '0';
	WAIT FOR 40000 ps;
	sel(2) <= '1';
	WAIT FOR 80000 ps;
	sel(2) <= '0';
WAIT;
END PROCESS t_prcs_sel_2;
-- sel[1]
t_prcs_sel_1: PROCESS
BEGIN
	sel(1) <= '1';
	WAIT FOR 40000 ps;
	sel(1) <= '0';
	WAIT FOR 120000 ps;
	sel(1) <= '1';
	WAIT FOR 120000 ps;
	sel(1) <= '0';
	WAIT FOR 80000 ps;
	sel(1) <= '1';
	WAIT FOR 80000 ps;
	sel(1) <= '0';
	WAIT FOR 40000 ps;
	sel(1) <= '1';
	WAIT FOR 40000 ps;
	sel(1) <= '0';
	WAIT FOR 80000 ps;
	sel(1) <= '1';
	WAIT FOR 40000 ps;
	sel(1) <= '0';
	WAIT FOR 40000 ps;
	sel(1) <= '1';
	WAIT FOR 120000 ps;
	sel(1) <= '0';
	WAIT FOR 40000 ps;
	sel(1) <= '1';
	WAIT FOR 40000 ps;
	sel(1) <= '0';
WAIT;
END PROCESS t_prcs_sel_1;
-- sel[0]
t_prcs_sel_0: PROCESS
BEGIN
	sel(0) <= '1';
	WAIT FOR 120000 ps;
	sel(0) <= '0';
	WAIT FOR 160000 ps;
	sel(0) <= '1';
	WAIT FOR 160000 ps;
	sel(0) <= '0';
	WAIT FOR 240000 ps;
	sel(0) <= '1';
	WAIT FOR 40000 ps;
	sel(0) <= '0';
	WAIT FOR 80000 ps;
	sel(0) <= '1';
	WAIT FOR 80000 ps;
	sel(0) <= '0';
	WAIT FOR 40000 ps;
	sel(0) <= '1';
WAIT;
END PROCESS t_prcs_sel_0;
END Mux8_1_arch;
