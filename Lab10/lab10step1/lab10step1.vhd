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
-- CREATED		"Tue Apr 21 19:00:34 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab10step1 IS 
	PORT
	(
		input :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		preset :  IN  STD_LOGIC;
		Q0 :  OUT  STD_LOGIC;
		Q3 :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC
	);
END lab10step1;

ARCHITECTURE bdf_type OF lab10step1 IS 

SIGNAL	DFF_inst3 :  STD_LOGIC;
SIGNAL	DFF_inst20 :  STD_LOGIC;
SIGNAL	DFF_inst :  STD_LOGIC;


BEGIN 
Q3 <= DFF_inst;
Q2 <= DFF_inst3;
Q1 <= DFF_inst20;



PROCESS(Clk,preset,preset)
BEGIN
IF (preset = '0') THEN
	DFF_inst <= '0';
ELSIF (preset = '0') THEN
	DFF_inst <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	DFF_inst <= input;
END IF;
END PROCESS;


PROCESS(Clk,preset,preset)
BEGIN
IF (preset = '0') THEN
	DFF_inst20 <= '0';
ELSIF (preset = '0') THEN
	DFF_inst20 <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	DFF_inst20 <= DFF_inst3;
END IF;
END PROCESS;


PROCESS(Clk,preset,preset)
BEGIN
IF (preset = '0') THEN
	Q0 <= '0';
ELSIF (preset = '0') THEN
	Q0 <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	Q0 <= DFF_inst20;
END IF;
END PROCESS;


PROCESS(Clk,preset,preset)
BEGIN
IF (preset = '0') THEN
	DFF_inst3 <= '0';
ELSIF (preset = '0') THEN
	DFF_inst3 <= '1';
ELSIF (RISING_EDGE(Clk)) THEN
	DFF_inst3 <= DFF_inst;
END IF;
END PROCESS;


END bdf_type;