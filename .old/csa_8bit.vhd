----------------------------------------------------------------------------------
-- Company:				EAH
-- Engineer: 			Tobias Junge
-- 
-- Create Date:    	13:57:25 08/24/2015 
-- Design Name:		processor_design 
-- Module Name:    	csa_8bit - behavioral 
-- Project Name: 
-- Target Devices: 
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
entity csa_8bit is
    Port ( OP_A : in  BIT_VECTOR (7 downto 0);
           OP_B : in  BIT_VECTOR (7 downto 0);
           CI : in  BIT;
           SUM : out  BIT_VECTOR (7 downto 0);
           CO : out  BIT);
end csa_8bit;
-- architecture describes behavior of module
architecture behavioral of csa_8bit is
-- sub-module is declared
	component csa_unit
		port ( A : in  BIT;
				 B : in  BIT;
				 CI : in  BIT;
				 S : out  BIT; 
				 CO : out  BIT);
	end component;
-- additional wirese
	signal SIG_CO : BIT_VECTOR (6 downto 0);
	
begin
-- instantiate and do port map
	CSA_U0 : csa_unit port map (OP_A(0),OP_B(0),CI,SUM(0),SIG_CO(0));
	CSA_U1 : csa_unit port map (OP_A(1),OP_B(1),SIG_CO(0),SUM(1),SIG_CO(1));
	CSA_U2 : csa_unit port map (OP_A(2),OP_B(2),SIG_CO(1),SUM(2),SIG_CO(2));
	CSA_U3 : csa_unit port map (OP_A(3),OP_B(3),SIG_CO(2),SUM(3),SIG_CO(3));
	CSA_U4 : csa_unit port map (OP_A(4),OP_B(4),SIG_CO(3),SUM(4),SIG_CO(4));
	CSA_U5 : csa_unit port map (OP_A(5),OP_B(5),SIG_CO(4),SUM(5),SIG_CO(5));
	CSA_U6 : csa_unit port map (OP_A(6),OP_B(6),SIG_CO(5),SUM(6),SIG_CO(6));
	CSA_U7 : csa_unit port map (OP_A(7),OP_B(7),SIG_CO(6),SUM(7),CO);

end behavioral;

