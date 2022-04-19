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
-- CREATED		"Wed Apr 08 19:17:19 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab9step3b IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		notQ :  OUT  STD_LOGIC
	);
END lab9step3b;

ARCHITECTURE bdf_type OF lab9step3b IS 

SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;


BEGIN 
Q <= SYNTHESIZED_WIRE_9;
notQ <= SYNTHESIZED_WIRE_6;



SYNTHESIZED_WIRE_2 <= NOT(SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_11);


SYNTHESIZED_WIRE_10 <= NOT(Clk AND SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_11 <= NOT(D AND SYNTHESIZED_WIRE_12);


SYNTHESIZED_WIRE_12 <= NOT(SYNTHESIZED_WIRE_10 AND Clk AND SYNTHESIZED_WIRE_11);


SYNTHESIZED_WIRE_9 <= NOT(SYNTHESIZED_WIRE_6 AND SYNTHESIZED_WIRE_10);


SYNTHESIZED_WIRE_6 <= NOT(SYNTHESIZED_WIRE_12 AND SYNTHESIZED_WIRE_9);


END bdf_type;