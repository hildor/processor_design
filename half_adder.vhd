----------------------------------------------------------------------------------
-- Company:				EAH
-- Engineer: 			Tobias Junge
-- 
-- Create Date:    	12:34:14 08/13/2015 
-- Design Name: 	 	processor_design
-- Module Name:    	half_adder - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description:    	two operand single bit half adder 
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
entity half_adder is
    Port ( OP_A : in  BIT;
           OP_B : in  BIT;
           COUT : out  BIT;
           SUM : out  BIT );
end half_adder;

-- architecture describes behavior of module
architecture behavioral of half_adder is

begin
	SUM <= OP_A xor OP_B;
	COUT <= OP_A and OP_B;

end behavioral;

