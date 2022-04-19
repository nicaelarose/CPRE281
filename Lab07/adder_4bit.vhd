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
-- CREATED		"Mon Mar 30 13:00:18 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY adder_4bit IS 
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
		Ci :  IN  STD_LOGIC;
		S3 :  OUT  STD_LOGIC;
		Co :  OUT  STD_LOGIC;
		S2 :  OUT  STD_LOGIC;
		S1 :  OUT  STD_LOGIC;
		S0 :  OUT  STD_LOGIC;
		Overflow :  OUT  STD_LOGIC
	);
END adder_4bit;

ARCHITECTURE bdf_type OF adder_4bit IS 

COMPONENT full_adder
	PORT(X : IN STD_LOGIC;
		 Y : IN STD_LOGIC;
		 Ci : IN STD_LOGIC;
		 SUM : OUT STD_LOGIC;
		 Co : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
Co <= SYNTHESIZED_WIRE_1;



b2v_inst : full_adder
PORT MAP(X => X3,
		 Y => Y3,
		 Ci => SYNTHESIZED_WIRE_5,
		 SUM => S3,
		 Co => SYNTHESIZED_WIRE_1);


Overflow <= SYNTHESIZED_WIRE_1 XOR SYNTHESIZED_WIRE_5;


b2v_inst6 : full_adder
PORT MAP(X => X2,
		 Y => Y2,
		 Ci => SYNTHESIZED_WIRE_3,
		 SUM => S2,
		 Co => SYNTHESIZED_WIRE_5);


b2v_inst7 : full_adder
PORT MAP(X => X1,
		 Y => Y1,
		 Ci => SYNTHESIZED_WIRE_4,
		 SUM => S1,
		 Co => SYNTHESIZED_WIRE_3);


b2v_inst8 : full_adder
PORT MAP(X => X0,
		 Y => Y0,
		 Ci => Ci,
		 SUM => S0,
		 Co => SYNTHESIZED_WIRE_4);


END bdf_type;