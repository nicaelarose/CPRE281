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
-- CREATED		"Tue Mar 31 14:30:04 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab8step2 IS 
	PORT
	(
		X3 :  IN  STD_LOGIC;
		X2 :  IN  STD_LOGIC;
		X1 :  IN  STD_LOGIC;
		X0 :  IN  STD_LOGIC;
		X_1 :  IN  STD_LOGIC;
		X_2 :  IN  STD_LOGIC;
		X_3 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		F :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END lab8step2;

ARCHITECTURE bdf_type OF lab8step2 IS 

COMPONENT mux4to1
	PORT(W0 : IN STD_LOGIC;
		 W1 : IN STD_LOGIC;
		 W2 : IN STD_LOGIC;
		 W3 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 F : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	F_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(3 DOWNTO 0);


BEGIN 



b2v_inst : mux4to1
PORT MAP(W0 => X3,
		 W1 => X2,
		 W2 => X1,
		 W3 => X0,
		 S1 => S1,
		 S0 => S0,
		 F => F_ALTERA_SYNTHESIZED(3));


b2v_inst2 : mux4to1
PORT MAP(W0 => X2,
		 W1 => X1,
		 W2 => X0,
		 W3 => X_1,
		 S1 => S1,
		 S0 => S0,
		 F => F_ALTERA_SYNTHESIZED(2));


b2v_inst3 : mux4to1
PORT MAP(W0 => X1,
		 W1 => X0,
		 W2 => X_1,
		 W3 => X_2,
		 S1 => S1,
		 S0 => S0,
		 F => F_ALTERA_SYNTHESIZED(1));


b2v_inst4 : mux4to1
PORT MAP(W0 => X0,
		 W1 => X_1,
		 W2 => X_2,
		 W3 => X_3,
		 S1 => S1,
		 S0 => S0,
		 F => F_ALTERA_SYNTHESIZED(0));

F <= F_ALTERA_SYNTHESIZED;

END bdf_type;