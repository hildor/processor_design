----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	10:24:56 09/01/2015 
-- Design Name: 		processor_design
-- Module Name:    	PC - behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		program counter
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
--entity of module
entity PC is
    Port ( ADDR_IN : in  STD_LOGIC_VECTOR (9 downto 0);
           WE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           ADDR_OUT : out  STD_LOGIC_VECTOR (9 downto 0));
end PC;

architecture behavioral of PC is
-- additional register
	signal REG :  STD_LOGIC_VECTOR(9 downto 0) := "0000000000";

begin
-- forward register to output
	ADDR_OUT <= REG;
-- process to catch rising edge
-- increment address
	process(CLK,WE,ADDR_IN) is
	begin
		if (rising_edge(CLK)) then
			if (WE = '1') then
				REG <= ADDR_IN;
			elsif (WE = '0') then
				REG <= REG + '1';
			end if;
		end if;
	end process;
	
end behavioral;

