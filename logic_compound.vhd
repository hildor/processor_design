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
-- Description: 	 	8-bit compound of logical_units
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
    Port ( OP_A : in  BIT_VECTOR (7 downto 0);
           OP_B : in  BIT_VECTOR (7 downto 0);
           OP_CODE : in  BIT_VECTOR (2 downto 0);
           RESULT : out  BIT_VECTOR (7 downto 0));
end logic_compound;

-- architecture describes behavior of module
architecture behavioral of logic_compound is
-- sub-module is declared
	component logical_unit
		port(	OP_A : in BIT;
				OP_B : in BIT;
				OP_CODE : in BIT_VECTOR(2 downto 0);
				RESULT : out BIT );
	end component;
				
begin
--instantiate and do port map
	LU7 : logical_unit port map (OP_A(7),OP_B(7),OP_CODE,RESULT(7));
	LU6 : logical_unit port map (OP_A(6),OP_B(6),OP_CODE,RESULT(6));
	LU5 : logical_unit port map (OP_A(5),OP_B(5),OP_CODE,RESULT(5));
	LU4 : logical_unit port map (OP_A(4),OP_B(4),OP_CODE,RESULT(4));
	LU3 : logical_unit port map (OP_A(3),OP_B(3),OP_CODE,RESULT(3));
	LU2 : logical_unit port map (OP_A(2),OP_B(2),OP_CODE,RESULT(2));
	LU1 : logical_unit port map (OP_A(1),OP_B(1),OP_CODE,RESULT(1));
	LU0 : logical_unit port map (OP_A(0),OP_B(0),OP_CODE,RESULT(0));
	
end behavioral;

