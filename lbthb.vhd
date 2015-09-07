----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	17:31:45 09/07/2015 
-- Design Name: 		processor_design
-- Module Name:    	LBTHB - behavioral 
-- Project Name: 	 
-- Target Devices: 
-- Tool versions: 
-- Description:   	twist lower and higher byte of instruction
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
entity LBTHB is
    Port ( INS_HILO: in  STD_LOGIC_VECTOR (15 downto 0);
           INS_LOHI : out  STD_LOGIC_VECTOR (15 downto 0));
end LBTHB;

architecture behavioral of LBTHB is
begin
	-- twist lower and higher byte of instruction
	INS_LOHI <= INS_HILO(7 downto 0) & INS_HILO(15 downto 8);
end behavioral;

