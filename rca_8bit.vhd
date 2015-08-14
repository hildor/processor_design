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
	signal	SIG_SW_ADDSUB : BIT_VECTOR (7 downto 0);
	signal	SIG_CIN : BIT_VECTOR (7 downto 0);

begin
-- generate complement of two 
	SIG_CIN(0) <= CIN;
	SIG_CIN(1) <= CIN;
	SIG_CIN(2) <= CIN;
	SIG_CIN(3) <= CIN;
	SIG_CIN(4) <= CIN;
	SIG_CIN(5) <= CIN;
	SIG_CIN(6) <= CIN;
	SIG_CIN(7) <= CIN;
	SIG_SW_ADDSUB <= SIG_CIN xor OP_B;
-- instantiate and do port map
	FA1 : full_adder port map (OP_A(0),SIG_SW_ADDSUB(0),CIN, SUM_RCA(0), SIG_FA1_COUT);
	FA2 : full_adder port map (OP_A(1),SIG_SW_ADDSUB(1),SIG_FA1_COUT, SUM_RCA(1), SIG_FA2_COUT);
	FA3 : full_adder port map (OP_A(2),SIG_SW_ADDSUB(2),SIG_FA2_COUT, SUM_RCA(2), SIG_FA3_COUT);
	FA4 : full_adder port map (OP_A(3),SIG_SW_ADDSUB(3),SIG_FA3_COUT, SUM_RCA(3), SIG_FA4_COUT);
	FA5 : full_adder port map (OP_A(4),SIG_SW_ADDSUB(4),SIG_FA4_COUT, SUM_RCA(4), SIG_FA5_COUT);
	FA6 : full_adder port map (OP_A(5),SIG_SW_ADDSUB(5),SIG_FA5_COUT, SUM_RCA(5), SIG_FA6_COUT);
	FA7 : full_adder port map (OP_A(6),SIG_SW_ADDSUB(6),SIG_FA6_COUT, SUM_RCA(6), SIG_FA7_COUT);
	FA8 : full_adder port map (OP_A(7),SIG_SW_ADDSUB(7),SIG_FA7_COUT, SUM_RCA(7),	SIG_FA8_COUT);
-- generate carry and overflow flag
	COUT <= SIG_FA8_COUT;
	OVFL <= SIG_FA7_COUT xor SIG_FA8_COUT;

end behavioral;

