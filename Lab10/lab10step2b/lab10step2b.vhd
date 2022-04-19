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
-- CREATED		"Fri May 01 10:56:07 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab10step2b IS 
	PORT
	(
		Clk :  IN  STD_LOGIC;
		preset :  IN  STD_LOGIC;
		Q0 :  OUT  STD_LOGIC;
		Q3 :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC
	);
END lab10step2b;

ARCHITECTURE bdf_type OF lab10step2b IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	TFF_inst1 :  STD_LOGIC;
SIGNAL	TFF_inst2 :  STD_LOGIC;


BEGIN 
Q0 <= SYNTHESIZED_WIRE_4;
Q2 <= TFF_inst2;
Q1 <= TFF_inst1;
SYNTHESIZED_WIRE_0 <= '1';



PROCESS(Clk,preset,preset)
VARIABLE SYNTHESIZED_WIRE_4_synthesized_var : STD_LOGIC;
BEGIN
IF (preset = '0') THEN
	SYNTHESIZED_WIRE_4_synthesized_var := '0';
ELSIF (preset = '0') THEN
	SYNTHESIZED_WIRE_4_synthesized_var := '1';
ELSIF (RISING_EDGE(Clk)) THEN
	SYNTHESIZED_WIRE_4_synthesized_var := SYNTHESIZED_WIRE_4_synthesized_var XOR SYNTHESIZED_WIRE_0;
END IF;
	SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_4_synthesized_var;
END PROCESS;


PROCESS(Clk,preset,preset)
VARIABLE TFF_inst1_synthesized_var : STD_LOGIC;
BEGIN
IF (preset = '0') THEN
	TFF_inst1_synthesized_var := '0';
ELSIF (preset = '0') THEN
	TFF_inst1_synthesized_var := '1';
ELSIF (RISING_EDGE(Clk)) THEN
	TFF_inst1_synthesized_var := TFF_inst1_synthesized_var XOR SYNTHESIZED_WIRE_4;
END IF;
	TFF_inst1 <= TFF_inst1_synthesized_var;
END PROCESS;


PROCESS(Clk,preset,preset)
VARIABLE TFF_inst2_synthesized_var : STD_LOGIC;
BEGIN
IF (preset = '0') THEN
	TFF_inst2_synthesized_var := '0';
ELSIF (preset = '0') THEN
	TFF_inst2_synthesized_var := '1';
ELSIF (RISING_EDGE(Clk)) THEN
	TFF_inst2_synthesized_var := TFF_inst2_synthesized_var XOR SYNTHESIZED_WIRE_5;
END IF;
	TFF_inst2 <= TFF_inst2_synthesized_var;
END PROCESS;


PROCESS(Clk,preset,preset)
VARIABLE Q3_synthesized_var : STD_LOGIC;
BEGIN
IF (preset = '0') THEN
	Q3_synthesized_var := '0';
ELSIF (preset = '0') THEN
	Q3_synthesized_var := '1';
ELSIF (RISING_EDGE(Clk)) THEN
	Q3_synthesized_var := Q3_synthesized_var XOR SYNTHESIZED_WIRE_2;
END IF;
	Q3 <= Q3_synthesized_var;
END PROCESS;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_4 AND TFF_inst1;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_5 AND TFF_inst2;



END bdf_type;