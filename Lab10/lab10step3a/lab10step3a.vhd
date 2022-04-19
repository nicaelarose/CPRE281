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
-- CREATED		"Fri May 01 10:41:04 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab10step3a IS 
	PORT
	(
		Clk :  IN  STD_LOGIC;
		preset :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END lab10step3a;

ARCHITECTURE bdf_type OF lab10step3a IS 

SIGNAL	Q_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_7 <= '1';



PROCESS(Clk,preset,preset)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(0 TO 0);
BEGIN
IF (preset = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(0) := '0';
ELSIF (preset = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(0) := '1';
ELSIF (RISING_EDGE(Clk)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(0) := Q_ALTERA_SYNTHESIZED_synthesized_var(0) XOR SYNTHESIZED_WIRE_7;
END IF;
	Q_ALTERA_SYNTHESIZED(0) <= Q_ALTERA_SYNTHESIZED_synthesized_var(0);
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_2,preset,preset)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(1 TO 1);
BEGIN
IF (preset = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(1) := '0';
ELSIF (preset = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(1) := '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_2)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(1) := Q_ALTERA_SYNTHESIZED_synthesized_var(1) XOR SYNTHESIZED_WIRE_7;
END IF;
	Q_ALTERA_SYNTHESIZED(1) <= Q_ALTERA_SYNTHESIZED_synthesized_var(1);
END PROCESS;



SYNTHESIZED_WIRE_2 <= NOT(Q_ALTERA_SYNTHESIZED(0));



SYNTHESIZED_WIRE_4 <= NOT(Q_ALTERA_SYNTHESIZED(1));



SYNTHESIZED_WIRE_6 <= NOT(Q_ALTERA_SYNTHESIZED(2));



PROCESS(SYNTHESIZED_WIRE_4,preset,preset)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(2 TO 2);
BEGIN
IF (preset = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(2) := '0';
ELSIF (preset = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(2) := '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_4)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(2) := Q_ALTERA_SYNTHESIZED_synthesized_var(2) XOR SYNTHESIZED_WIRE_7;
END IF;
	Q_ALTERA_SYNTHESIZED(2) <= Q_ALTERA_SYNTHESIZED_synthesized_var(2);
END PROCESS;


PROCESS(SYNTHESIZED_WIRE_6,preset,preset)
VARIABLE Q_ALTERA_SYNTHESIZED_synthesized_var : STD_LOGIC_VECTOR(3 TO 3);
BEGIN
IF (preset = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(3) := '0';
ELSIF (preset = '0') THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(3) := '1';
ELSIF (RISING_EDGE(SYNTHESIZED_WIRE_6)) THEN
	Q_ALTERA_SYNTHESIZED_synthesized_var(3) := Q_ALTERA_SYNTHESIZED_synthesized_var(3) XOR SYNTHESIZED_WIRE_7;
END IF;
	Q_ALTERA_SYNTHESIZED(3) <= Q_ALTERA_SYNTHESIZED_synthesized_var(3);
END PROCESS;

Q <= Q_ALTERA_SYNTHESIZED;

END bdf_type;