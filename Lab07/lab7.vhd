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
-- CREATED		"Mon Mar 30 13:48:21 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab7 IS 
	PORT
	(
		X3 :  IN  STD_LOGIC;
		Y3 :  IN  STD_LOGIC;
		X2 :  IN  STD_LOGIC;
		Y2 :  IN  STD_LOGIC;
		X1 :  IN  STD_LOGIC;
		Y1 :  IN  STD_LOGIC;
		X0 :  IN  STD_LOGIC;
		Y0 :  IN  STD_LOGIC;
		Control :  IN  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		Overflow :  OUT  STD_LOGIC;
		Cout :  OUT  STD_LOGIC
	);
END lab7;

ARCHITECTURE bdf_type OF lab7 IS 

COMPONENT adder_4bit
	PORT(X3 : IN STD_LOGIC;
		 Y3 : IN STD_LOGIC;
		 X2 : IN STD_LOGIC;
		 Y2 : IN STD_LOGIC;
		 X1 : IN STD_LOGIC;
		 Y1 : IN STD_LOGIC;
		 X0 : IN STD_LOGIC;
		 Y0 : IN STD_LOGIC;
		 Ci : IN STD_LOGIC;
		 S0 : OUT STD_LOGIC;
		 S1 : OUT STD_LOGIC;
		 S2 : OUT STD_LOGIC;
		 S3 : OUT STD_LOGIC;
		 Co : OUT STD_LOGIC;
		 Overflow : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= Control XOR Y3;


SYNTHESIZED_WIRE_1 <= Control XOR Y2;


SYNTHESIZED_WIRE_2 <= Control XOR Y1;


SYNTHESIZED_WIRE_3 <= Control XOR Y0;


b2v_inst5 : adder_4bit
PORT MAP(X3 => X3,
		 Y3 => SYNTHESIZED_WIRE_0,
		 X2 => X2,
		 Y2 => SYNTHESIZED_WIRE_1,
		 X1 => X1,
		 Y1 => SYNTHESIZED_WIRE_2,
		 X0 => X0,
		 Y0 => SYNTHESIZED_WIRE_3,
		 Ci => Control,
		 S0 => S0,
		 S1 => S1,
		 S2 => S2,
		 S3 => S3,
		 Co => Cout,
		 Overflow => Overflow);


END bdf_type;