----------------------------------------------------------------------------------
-- Company:				EAH
-- Engineer: 			Tobias Junge
-- 
-- Create Date:    	21:42:34 08/24/2015 
-- Design Name: 		processor_design
-- Module Name:    	adsu8_xilinx - behavioral 
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
LIBRARY UNISIM;
USE UNISIM.Vcomponents.ALL;

-- entity of module
entity adsu8_xilinx_unit_d is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  ADD : in STD_LOGIC;
           CI : in  STD_LOGIC;
           S : out  STD_LOGIC;
           CO_O : out  STD_LOGIC;
			  CO_LO : out  STD_LOGIC);
end adsu8_xilinx_unit_d;

-- architecture describes behavior of module
architecture behavioral of adsu8_xilinx_unit_d is
-- additional wires
	signal SIG_XOR3_OUT : STD_LOGIC;

begin
-- implement xor3	
	SIG_XOR3_OUT <= A xor B xor (not ADD);
-- instantiate from UNISIM and do port map
	CC_MUX : MUXCY_D port map ( LO => CO_LO,
										 O => CO_O,
										 CI => CI,
										 DI => A,
										 S => SIG_XOR3_OUT );
	CC_XOR : XORCY port map ( O => S,
									  CI => CI,
									  LI => SIG_XOR3_OUT );
									  
end behavioral;

