----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	13:45:23 08/12/2015 
-- Design Name:    	processor_design
-- Module Name:    	logic_module - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 	 	8 bit compound of logical_units
--
-- Dependencies: 		
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- entity of module
entity logic_compound is
    port ( OP_A : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_B : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_CODE : in  STD_LOGIC_VECTOR (2 downto 0);
           RESULT_LOGIC : out  STD_LOGIC_VECTOR (7 downto 0);
			  FLAGS : out  STD_LOGIC_VECTOR(4 downto 0));
end logic_compound;

-- architecture describes behavior of module
architecture behavioral of logic_compound is
-- sub-module is declared
	component logical_unit
		port(	OP_A : in STD_LOGIC;
				OP_B : in STD_LOGIC;
				OP_CODE : in STD_LOGIC_VECTOR(2 downto 0);
				RESULT : out STD_LOGIC );
	end component;
-- additional wires
	signal SIG_RESULT_LOGIC:  STD_LOGIC_VECTOR(7 downto 0);
	signal SIG_FLAGS :  STD_LOGIC_VECTOR(4 downto 0);
				
begin
-- instantiate and do port map
	LU7 : logical_unit port map (OP_A(7),OP_B(7),OP_CODE,SIG_RESULT_LOGIC(7));
	LU6 : logical_unit port map (OP_A(6),OP_B(6),OP_CODE,SIG_RESULT_LOGIC(6));
	LU5 : logical_unit port map (OP_A(5),OP_B(5),OP_CODE,SIG_RESULT_LOGIC(5));
	LU4 : logical_unit port map (OP_A(4),OP_B(4),OP_CODE,SIG_RESULT_LOGIC(4));
	LU3 : logical_unit port map (OP_A(3),OP_B(3),OP_CODE,SIG_RESULT_LOGIC(3));
	LU2 : logical_unit port map (OP_A(2),OP_B(2),OP_CODE,SIG_RESULT_LOGIC(2));
	LU1 : logical_unit port map (OP_A(1),OP_B(1),OP_CODE,SIG_RESULT_LOGIC(1));
	LU0 : logical_unit port map (OP_A(0),OP_B(0),OP_CODE,SIG_RESULT_LOGIC(0));
-- generate flags
	with OP_CODE select SIG_FLAGS(0) <= '1' when "101", '0' when others;	-- C - only set when COM active
	SIG_FLAGS(1) <= '1' when SIG_RESULT_LOGIC = "00000000" else '0';		-- Z
	SIG_FLAGS(2) <= SIG_RESULT_LOGIC(7);											-- N
	SIG_FLAGS(3) <= '0'; 																-- V
	SIG_FLAGS(4) <= SIG_RESULT_LOGIC(7) xor SIG_FLAGS(3);						-- S
-- assign signals to outputs
	FLAGS <= SIG_FLAGS;
	RESULT_LOGIC <= SIG_RESULT_LOGIC;
	
end behavioral;

