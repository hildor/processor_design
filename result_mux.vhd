----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	12:50:17 08/19/2015 
-- Design Name: 		processor_design
-- Module Name:    	result_mux - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 		result multiplexer of alu wich selects the output
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
entity result_mux is
    Port ( OP_CODE : in  STD_LOGIC_VECTOR (2 downto 0);
           ARITHMETIC : in  STD_LOGIC_VECTOR (7 downto 0);
           LOGIC : in  STD_LOGIC_VECTOR (7 downto 0);
           SHIFT : in  STD_LOGIC_VECTOR (7 downto 0);
           ALU_R : out  STD_LOGIC_VECTOR (7 downto 0));
end result_mux;

-- architecture describes behavior of module
architecture behavioral of result_mux is
begin
	-- select ALU_R from OP_CODE
	with OP_CODE select
		ALU_R <= ARITHMETIC when "000",
					ARITHMETIC when "001",
					LOGIC when "010",
					LOGIC when "011",
					LOGIC when "100",
					LOGIC when "101",
					SHIFT when "110", 
					SHIFT when "111",
					"00000000" when others;
					
end behavioral;

