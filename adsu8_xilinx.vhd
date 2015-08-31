----------------------------------------------------------------------------------
-- Company: 			EAH
-- Engineer: 			Tobias Junge
-- 
-- Create Date:    	16:04:21 08/25/2015 
-- Design Name: 		processor_design
-- Module Name:    	adsu8_xilinx - Behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 		fast working artihmetic unit base on xilinx adsu8
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
entity adsu8_xilinx is
    Port ( OP_A : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_B : in  STD_LOGIC_VECTOR (7 downto 0);
           SUB : in  STD_LOGIC;
           SUM : out  STD_LOGIC_VECTOR (7 downto 0);
           FLAGS : out  STD_LOGIC_VECTOR (4 downto 0));
end adsu8_xilinx;

architecture behavioral of adsu8_xilinx is
-- sub-module is declared
	component adsu8_xilinx_unit
   port ( A : in  STD_LOGIC;
    	    B : in  STD_LOGIC;
			 ADD : in STD_LOGIC;
			 CI : in  STD_LOGIC;
			 S : out  STD_LOGIC;
			 CO : out  STD_LOGIC
			);
	end component;
	component adsu8_xilinx_unit_l
   port ( A : in  STD_LOGIC;
    	    B : in  STD_LOGIC;
			 ADD : in STD_LOGIC;
			 CI : in  STD_LOGIC;
			 S : out  STD_LOGIC;
			 CO : out  STD_LOGIC
			);
	end component;
	component adsu8_xilinx_unit_d
   port ( A : in  STD_LOGIC;
    	    B : in  STD_LOGIC;
			 ADD : in STD_LOGIC;
			 CI : in  STD_LOGIC;
			 S : out  STD_LOGIC;
			 CO_O : out  STD_LOGIC;
			 CO_LO : out  STD_LOGIC
			);
	end component;
-- additional wires
	signal SIG_SUM,SIG_COUT : STD_LOGIC_VECTOR(7 downto 0);
	signal SIG_FLAGS : STD_LOGIC_VECTOR(4 downto 0);
	signal SIG_SUB_INV,SIG_COUT_O : STD_LOGIC;

begin
-- attach signal sub
	SIG_SUB_INV <= not SUB; 
-- instantiate and do port map
	ADSU8_UNIT0 : adsu8_xilinx_unit_l port map (OP_A(0),OP_B(0),SIG_SUB_INV,SUB,SIG_SUM(0),SIG_COUT(0));
	ADSU8_UNIT1 : adsu8_xilinx_unit_l port map (OP_A(1),OP_B(1),SIG_SUB_INV,SIG_COUT(0),SIG_SUM(1),SIG_COUT(1));
	ADSU8_UNIT2 : adsu8_xilinx_unit_l port map (OP_A(2),OP_B(2),SIG_SUB_INV,SIG_COUT(1),SIG_SUM(2),SIG_COUT(2));
	ADSU8_UNIT3 : adsu8_xilinx_unit_l port map (OP_A(3),OP_B(3),SIG_SUB_INV,SIG_COUT(2),SIG_SUM(3),SIG_COUT(3));
	ADSU8_UNIT4 : adsu8_xilinx_unit_l port map (OP_A(4),OP_B(4),SIG_SUB_INV,SIG_COUT(3),SIG_SUM(4),SIG_COUT(4));
	ADSU8_UNIT5 : adsu8_xilinx_unit_l port map (OP_A(5),OP_B(5),SIG_SUB_INV,SIG_COUT(4),SIG_SUM(5),SIG_COUT(5));
	ADSU8_UNIT6 : adsu8_xilinx_unit_d port map (OP_A(6),OP_B(6),SIG_SUB_INV,SIG_COUT(5),SIG_SUM(6),SIG_COUT_O,SIG_COUT(6));
	ADSU8_UNIT7 : adsu8_xilinx_unit port map (OP_A(7),OP_B(7),SIG_SUB_INV,SIG_COUT(6),SIG_SUM(7),SIG_COUT(7));
-- genrate flags
	SIG_FLAGS(0) <= '1' when SIG_SUM = "00000000" else '0';	-- Z
	SIG_FLAGS(1) <= SIG_COUT(7);										-- C
	SIG_FLAGS(2) <= SIG_SUM(7);										-- N
	SIG_FLAGS(3) <= SIG_COUT(7) xor SIG_COUT_O; 					-- V
	SIG_FLAGS(4) <= SIG_SUM(7) xor SIG_FLAGS(3);					-- S
-- assign signals to outputs	
	FLAGS <= SIG_FLAGS;
	SUM <= SIG_SUM;

end behavioral;

