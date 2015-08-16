----------------------------------------------------------------------------------
-- Company:				EAH
-- Engineer: 			Tobias Junge
-- 
-- Create Date:    	12:21:55 08/15/2015 
-- Design Name: 		processor_design
-- Module Name:	  	alu_flags - behavioral 
-- Project Name: 
-- Target Devices:  	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 		generation an forwardinf of alu flags (COUT, OVFL, NEG, ZERO, COMP)
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
entity alu_flags is
    Port ( ALU_RESULT : in  BIT_VECTOR (7 downto 0);
           --OP_CODE : in  BIT_VECTOR (2 downto 0);
           OVFL : in  BIT;
           COUT : in  BIT;
           --OP_A_0 : in  BIT;
           FLAGS : out  BIT_VECTOR (3 downto 0));
end alu_flags;

-- architecture describes behavior of module
architecture behavioral of alu_flags is
begin

-- forward flags output vector
	FLAGS(0) <= ALU_RESULT(7);											-- negative 
	FLAGS(1) <= '1' when ALU_RESULT = "00000000" else '0';	-- zero
	FLAGS(2) <= OVFL; 													-- overflow
	FLAGS(3) <= COUT; 													-- carry

end behavioral;

