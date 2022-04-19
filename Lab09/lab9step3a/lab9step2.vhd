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
-- CREATED		"Wed Apr 08 19:11:18 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab9step2 IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		notQ :  OUT  STD_LOGIC
	);
END lab9step2;

ARCHITECTURE bdf_type OF lab9step2 IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
Q <= SYNTHESIZED_WIRE_4;
notQ <= SYNTHESIZED_WIRE_1;



SYNTHESIZED_WIRE_2 <= NOT(Clk AND D);


SYNTHESIZED_WIRE_3 <= NOT(SYNTHESIZED_WIRE_0 AND Clk);


SYNTHESIZED_WIRE_4 <= NOT(SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2);


SYNTHESIZED_WIRE_1 <= NOT(SYNTHESIZED_WIRE_3 AND SYNTHESIZED_WIRE_4);


SYNTHESIZED_WIRE_0 <= NOT(D);



END bdf_type;