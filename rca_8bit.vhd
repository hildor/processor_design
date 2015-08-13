----------------------------------------------------------------------------------
-- Company:				EAH
-- Engineer: 			Tobias Junge
-- 
-- Create Date:   	17:38:02 08/13/2015 
-- Design Name: 		processor_design
-- Module Name:    	rca_8bit - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 		two operand eight bit ripple carry adder with carry and overflow flag
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
entity rca_8bit is
    Port ( OP_A : in  BIT_VECTOR (7 downto 0);
           OP_B : in  BIT_VECTOR (7 downto 0);
           CIN : in  BIT;
           SUM_RCA : out  BIT_VECTOR (7 downto 0);
			  COUT : out  BIT;
			  OVFL : out BIT );
end rca_8bit;

-- architecture describes behavior of module
architecture behavioral of rca_8bit is
-- sub-module is declared
	component full_adder
		port ( OP_A : in  BIT;
				 OP_B : in  BIT;
				 CIN : in  BIT;
				 SUM : out  BIT; 
				 COUT : out  BIT);
	end component;
	
-- additional wires
	signal 	SIG_FA1_COUT, SIG_FA2_COUT, SIG_FA3_COUT, SIG_FA4_COUT, 
				SIG_FA5_COUT, SIG_FA6_COUT, SIG_FA7_COUT, SIG_FA8_COUT : BIT;

begin
-- instantiate and do port map
	FA1 : full_adder port map (OP_A(0),OP_B(0),CIN, SUM_RCA(0), SIG_FA1_COUT);
	FA2 : full_adder port map (OP_A(1),OP_B(1),SIG_FA1_COUT, SUM_RCA(1), SIG_FA2_COUT);
	FA3 : full_adder port map (OP_A(2),OP_B(2),SIG_FA2_COUT, SUM_RCA(2), SIG_FA3_COUT);
	FA4 : full_adder port map (OP_A(3),OP_B(3),SIG_FA3_COUT, SUM_RCA(3), SIG_FA4_COUT);
	FA5 : full_adder port map (OP_A(4),OP_B(4),SIG_FA4_COUT, SUM_RCA(4), SIG_FA5_COUT);
	FA6 : full_adder port map (OP_A(5),OP_B(5),SIG_FA5_COUT, SUM_RCA(5), SIG_FA6_COUT);
	FA7 : full_adder port map (OP_A(6),OP_B(6),SIG_FA6_COUT, SUM_RCA(6), SIG_FA7_COUT);
	FA8 : full_adder port map (OP_A(7),OP_B(7),SIG_FA7_COUT, SUM_RCA(7),	SIG_FA8_COUT);
-- generate carry and overflow flag
	COUT <= SIG_FA8_COUT;
	OVFL <= CIN xor SIG_FA8_COUT;

end behavioral;

