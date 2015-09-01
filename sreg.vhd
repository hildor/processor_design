----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	19:32:38 08/31/2015 
-- Design Name: 		processor_design
-- Module Name:    	SREG - behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:      status register for storage of alu flags
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
entity SREG is
    Port ( FLAGS_IN 	: in  STD_LOGIC_VECTOR (4 downto 0);
           CLK 		: in  STD_LOGIC;
           WE 			: in  STD_LOGIC_VECTOR (4 downto 0);
           FLAGS_OUT : out  STD_LOGIC_VECTOR (4 downto 0));
end SREG;

architecture behavioral of SREG is
-- register
signal REG :  STD_LOGIC_VECTOR(4 downto 0) := "00000";

begin
-- forward register to output
	FLAGS_OUT <= REG;
-- process to catch rising edge
	process(CLK,WE,FLAGS_IN) is
	begin 
		if (RISING_EDGE(CLK)) then
			if (WE(0) = '1') then
				REG(0) <= FLAGS_IN(0); 
			end if;
			if (WE(1) = '1') then
				REG(1) <= FLAGS_IN(1); 
			end if;
			if (WE(2) = '1') then
				REG(2) <= FLAGS_IN(2); 
			end if;
			if (WE(3) = '1') then
				REG(3) <= FLAGS_IN(3); 
			end if;
			if (WE(4) = '1') then
				REG(4) <= FLAGS_IN(4); 
			end if;
		end if;
	end process;

end behavioral;