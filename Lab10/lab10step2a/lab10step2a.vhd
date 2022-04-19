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
-- CREATED		"Tue Apr 21 19:46:41 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab10step2a IS 
	PORT
	(
		EN :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		preset :  IN  STD_LOGIC;
		Z :  OUT  STD_LOGIC;
		Q3 :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC;
		Q0 :  OUT  STD_LOGIC
	);
END lab10step2a;

ARCHITECTURE bdf_type OF lab10step2a IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;


BEGIN 
Q3 <= SYNTHESIZED_WIRE_12;
Q2 <= SYNTHESIZED_WIRE_10;
Q1 <= SYNTHESIZED_WIRE_15;
Q0 <= SYNTHESIZED_WIRE_14;



PROCESS(Clk,preset,preset)
BEGIN
IF (preset = '0') THEN
	SYNTHESIZED_WIRE_14 <= '0';
ELSIF (preset = '0') THEN
	SYNTHESIZED_WIRE_14 <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_0;
END IF;
END PROCESS;


PROCESS(Clk,preset,preset)
BEGIN
IF (preset = '0') THEN
	SYNTHESIZED_WIRE_15 <= '0';
ELSIF (preset = '0') THEN
	SYNTHESIZED_WIRE_15 <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	SYNTHESIZED_WIRE_15 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_10 AND SYNTHESIZED_WIRE_11;


Z <= SYNTHESIZED_WIRE_12 AND SYNTHESIZED_WIRE_13;


PROCESS(Clk,preset,preset)
BEGIN
IF (preset = '0') THEN
	SYNTHESIZED_WIRE_10 <= '0';
ELSIF (preset = '0') THEN
	SYNTHESIZED_WIRE_10 <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_4;
END IF;
END PROCESS;


PROCESS(Clk,preset,preset)
BEGIN
IF (preset = '0') THEN
	SYNTHESIZED_WIRE_12 <= '0';
ELSIF (preset = '0') THEN
	SYNTHESIZED_WIRE_12 <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	SYNTHESIZED_WIRE_12 <= SYNTHESIZED_WIRE_5;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_14 XOR EN;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_15 XOR SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_10 XOR SYNTHESIZED_WIRE_11;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_12 XOR SYNTHESIZED_WIRE_13;


SYNTHESIZED_WIRE_16 <= SYNTHESIZED_WIRE_14 AND EN;


SYNTHESIZED_WIRE_11 <= SYNTHESIZED_WIRE_15 AND SYNTHESIZED_WIRE_16;


END bdf_type;