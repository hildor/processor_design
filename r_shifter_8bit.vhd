----------------------------------------------------------------------------------
-- Company:				EAH 
-- Engineer: 			Tobias Junge
-- 	
-- Create Date:	   23:35:10 08/14/2015 
-- Design Name: 
-- Module Name:    	shifter_8STD_LOGIC - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 		single STD_LOGIC shifter is used to lsr and asr
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
entity r_shifter_8bit is
    Port ( OP_A : in  STD_LOGIC_VECTOR (7 downto 1);
			  LSR_ASR : in  STD_LOGIC;
			  RESULT_SHIFT : out  STD_LOGIC_VECTOR (7 downto 0));
end r_shifter_8bit;

-- architecture describes behavior of module
architecture behavioral of r_shifter_8bit is
-- additional wires
	signal 	SIG_MSB :  STD_LOGIC;

begin
-- catch msb for asr
	SIG_MSB <= LSR_ASR and OP_A(7);
-- right shift of word
	RESULT_SHIFT(0) <= OP_A(1);
	RESULT_SHIFT(1) <= OP_A(2);
	RESULT_SHIFT(2) <= OP_A(3);
	RESULT_SHIFT(3) <= OP_A(4);
	RESULT_SHIFT(4) <= OP_A(5);
	RESULT_SHIFT(5) <= OP_A(6);
	RESULT_SHIFT(6) <= OP_A(7);
	RESULT_SHIFT(7) <= SIG_MSB;

end behavioral;

