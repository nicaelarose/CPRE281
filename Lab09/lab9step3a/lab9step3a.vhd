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
-- CREATED		"Wed Apr 08 19:15:19 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY lab9step3a IS 
	PORT
	(
		D :  IN  STD_LOGIC;
		Clk :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC;
		notQ :  OUT  STD_LOGIC
	);
END lab9step3a;

ARCHITECTURE bdf_type OF lab9step3a IS 

COMPONENT lab9step2
	PORT(D : IN STD_LOGIC;
		 Clk : IN STD_LOGIC;
		 Q : OUT STD_LOGIC;
		 notQ : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



b2v_inst : lab9step2
PORT MAP(D => SYNTHESIZED_WIRE_0,
		 Clk => SYNTHESIZED_WIRE_1,
		 Q => Q,
		 notQ => notQ);


b2v_inst1 : lab9step2
PORT MAP(D => D,
		 Clk => Clk,
		 Q => SYNTHESIZED_WIRE_0);


SYNTHESIZED_WIRE_1 <= NOT(Clk);



END bdf_type;