----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	23:33:03 09/07/2015 
-- Design Name: 		processor_design
-- Module Name:    	M2_8 - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 		8-bit multiplexer
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
entity M2_8 is
    Port ( D0 : in  STD_LOGIC_VECTOR (7 downto 0);
           D1 : in  STD_LOGIC_VECTOR (7 downto 0);
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (7 downto 0));
end M2_8;

-- architecture describes behavior of module
architecture behavioral of M2_8 is

begin
	O <= D0 when S = '0' else D1;
			
end behavioral;

