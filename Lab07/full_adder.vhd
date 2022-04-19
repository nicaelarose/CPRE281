-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.1.0 Build 625 09/12/2018 SJ Standard Edition"
-- CREATED		"Mon Mar 30 13:00:46 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY full_adder IS 
	PORT
	(
		X :  IN  STD_LOGIC;
		Y :  IN  STD_LOGIC;
		Ci :  IN  STD_LOGIC;
		SUM :  OUT  STD_LOGIC;
		Co :  OUT  STD_LOGIC
	);
END full_adder;

ARCHITECTURE bdf_type OF full_adder IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= X XOR Y;


SUM <= SYNTHESIZED_WIRE_0 XOR Ci;


Co <= SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_3 <= X AND Ci;


SYNTHESIZED_WIRE_1 <= X AND Y;


SYNTHESIZED_WIRE_2 <= Y AND Ci;


END bdf_type;