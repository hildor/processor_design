----------------------------------------------------------------------------------
-- Company: 			EAH
-- Engineer: 			Tobias Junge
-- 
-- Create Date:    	12:27:51 08/22/2015 
-- Design Name: 		processor_design
-- Module Name:   	csa_unit - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 
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
entity csa_unit is
    Port ( A : in  BIT;
           B : in  BIT;
           CI : in  BIT;
           S : out  BIT;
			  CO : out BIT);
end csa_unit;

-- architecture describes behavior of module
architecture behavioral of csa_unit is
-- sub-module is declared
	component full_adder
		port ( OP_A : in  BIT;
				 OP_B : in  BIT;
				 CIN : in  BIT;
				 SUM : out  BIT; 
				 COUT : out  BIT);
	end component;
-- additional wires
	signal SIG_LA_S, SIG_HA_S, SIG_LA_CO, SIG_HA_CO : BIT;

begin
-- instantiate and do port map
	LA : full_adder port map (A,B,'0',SIG_LA_S,SIG_LA_CO);
	HA : full_adder port map (A,B,'1',SIG_HA_S,SIG_HA_CO);
-- generate sum and carry out with carry in sel
	with CI select   
		S <= SIG_LA_S when '0',
			  SIG_HA_S when '1';
	with CI select
		CO <= SIG_LA_CO when '0',
				SIG_HA_CO when '1';

end behavioral;

