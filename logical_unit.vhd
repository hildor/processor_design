----------------------------------------------------------------------------------
-- Company:				EAH 
-- Engineer:			Tobias Junge 
-- 
-- Create Date:    	15:13:06 08/11/2015 
-- Design Name: 		processor_design
-- Module Name:    	test - Behavioral 
-- Project Name: 		
-- Target Devices:	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description:		logical unit that provides arithmetical operations
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL; -- basic IEEE library

-- entity of module
entity logical_unit is
    Port ( OP_A : in  BIT;
           OP_B : in  BIT;
           OP_CODE : in  BIT_VECTOR (2 downto 0);
           RESULT : out  BIT);
end logical_unit;

-- architecture describes behavior of module
architecture behavioral of logical_unit is

begin 
	process(OP_CODE,OP_A,OP_B)
		begin 
			case OP_CODE is	
				when "000" => RESULT <= OP_A and OP_B;
				when "001" => RESULT <= OP_A or OP_B; 
				when "010" => RESULT <= OP_A xor OP_B;
				when "011" => RESULT <= not OP_A;
				when others => RESULT <= '0';
			end case;
		end process;

end behavioral;

