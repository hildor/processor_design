----------------------------------------------------------------------------------
-- Company: 			EAH
-- Engineer: 			Tobias Junge
-- 
-- Create Date:    	12:51:14 08/13/2015 
-- Design Name:		processor_design 
-- Module Name:    	full_adder - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 		two operand single bit full adder
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
entity full_adder is
    port ( OP_A : in  BIT;
           OP_B : in  BIT;
           CIN : in  BIT;
           SUM : out  BIT;
           COUT : out  BIT);
end full_adder;

-- architecture describes behavior of module
architecture behavioral of full_adder is
-- sub-module is declared
	component half_adder
		port ( OP_A : in BIT;
				 OP_B : in BIT;
				 COUT : out BIT;
				 SUM : out BIT );
	end component;
	
-- additional wires
	signal SIG_HA1_SUM, SIG_HA1_COUT, SIG_HA2_COUT : BIT;

begin
-- instantiate and do port map
	HA1 : half_adder port map (OP_A,OP_B,SIG_HA1_COUT, SIG_HA1_SUM);
	HA2 : half_adder port map (SIG_HA1_SUM, CIN, SIG_HA2_COUT, SUM);
	COUT <= SIG_HA1_COUT or SIG_HA2_COUT;
	
end behavioral;

