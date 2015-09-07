----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	14:43:03 08/31/2015 
-- Design Name:      processor_design 
-- Module Name:    	ALU - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description:      8 bit arithmetic logical unit (add,sub,and,or,xor,com,lsr,asr) 
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
entity ALU is
    Port ( OP_A : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_B : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_CODE : in  STD_LOGIC_VECTOR (2 downto 0);
           OP_R : out  STD_LOGIC_VECTOR (7 downto 0);
           FLAGS : out  STD_LOGIC_VECTOR (4 downto 0));
end ALU;

-- architecture describes behavior of module
architecture behavioral of ALU is
-- sub-module is declared
-- arithmetic
	component adsu8_xilinx
   port (  OP_A : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_B : in  STD_LOGIC_VECTOR (7 downto 0);
           SUB : in  STD_LOGIC;
           SUM : out  STD_LOGIC_VECTOR (7 downto 0);
           FLAGS : out  STD_LOGIC_VECTOR (4 downto 0)
			);
	end component;
-- logic
	component logic_compound
   port (  OP_A : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_B : in  STD_LOGIC_VECTOR (7 downto 0);
           OP_CODE : in  STD_LOGIC_VECTOR (2 downto 0);
           RESULT_LOGIC : out  STD_LOGIC_VECTOR (7 downto 0);
			  FLAGS : out  STD_LOGIC_VECTOR(4 downto 0)
			);
	end component;
-- shift
	component r_shifter_8bit
   port (  OP_A : in  STD_LOGIC_VECTOR (7 downto 0);
			  ASR : in  STD_LOGIC;
			  RESULT_SHIFT : out  STD_LOGIC_VECTOR (7 downto 0);
			  FLAGS : out  STD_LOGIC_VECTOR (4 downto 0)
			);
	end component;
-- result
	component result_mux
   port (  OP_CODE : in  STD_LOGIC_VECTOR (2 downto 0);
           ARITHMETIC : in  STD_LOGIC_VECTOR (7 downto 0);
           LOGIC : in  STD_LOGIC_VECTOR (7 downto 0);
           SHIFT : in  STD_LOGIC_VECTOR (7 downto 0);
			  FLAGS_AR : in STD_LOGIC_VECTOR (4 downto 0);
			  FLAGS_LO : in STD_LOGIC_VECTOR (4 downto 0);
			  FLAGS_SH : in STD_LOGIC_VECTOR (4 downto 0);
           ALU_R : out  STD_LOGIC_VECTOR (7 downto 0);
			  FLAGS : out  STD_LOGIC_VECTOR (4 downto 0)
			);
	end component;
			
-- additonal wires
	signal SIG_RESULT_AR,SIG_RESULT_LO,SIG_RESULT_SH :  STD_LOGIC_VECTOR(7 downto 0);
	signal SIG_FLAGS_AR,SIG_FLAGS_LO,SIG_FLAGS_SH :  STD_LOGIC_VECTOR(4 downto 0);
	

begin
	ARITHMETIC : adsu8_xilinx port map (OP_A,OP_B,OP_CODE(0),SIG_RESULT_AR,SIG_FLAGS_AR);
	LOGIC : logic_compound port map (OP_A,OP_B,OP_CODE,SIG_RESULT_LO,SIG_FLAGS_LO);
	SHIFT : r_shifter_8bit port map (OP_A,OP_CODE(0),SIG_RESULT_SH,SIG_FLAGS_SH);
	RESULT : result_mux port map (OP_CODE,SIG_RESULT_AR,SIG_RESULT_LO,SIG_RESULT_SH,SIG_FLAGS_AR,SIG_FLAGS_LO,SIG_FLAGS_SH,OP_R,FLAGS) ;

end behavioral;

