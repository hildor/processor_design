----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	13:44:24 09/01/2015 
-- Design Name: 		processor_design
-- Module Name:    	RF - behavioral 
-- Project Name: 		
-- Target Devices: 
-- Tool versions: 
-- Description: 		32 bit Register file which supply values for alu operations
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
entity RF is
    Port ( ADDR_OP_A : in  STD_LOGIC_VECTOR (4 downto 0);
           ADDR_OP_B : in  STD_LOGIC_VECTOR (4 downto 0);
           OP_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           WE : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           ADDR_MEM : out  STD_LOGIC_VECTOR (15 downto 0);
           OP_A : out  STD_LOGIC_VECTOR (7 downto 0);
           OP_B : out  STD_LOGIC_VECTOR (7 downto 0));
end RF;

architecture behavioral of RF is
-- register bank 32 x 8 bit 
-- ######################################################
signal REG0 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG1 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG2 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG3 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG4 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG5 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG6 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG7 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG8 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG9 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG10 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG11 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG12 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG13 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG14 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG15 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG16 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG17 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG18 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG19 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG20 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG21 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG22 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG23 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG24 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG25 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG26 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG27 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG28 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG29 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG30 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
signal REG31 : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
-- ######################################################

begin
-- set address for memory access
	ADDR_MEM(7 downto 0) <= REG30;
	ADDR_MEM(15 downto 8) <= REG31;

-- forward register value to operand output
	-- map operand a
	with ADDR_OP_A select
		OP_A <= REG0 when "00000",
				  REG1 when "00001",
				  REG2 when "00010",
				  REG3 when "00011",
				  REG4 when "00100",
				  REG5 when "00101",
				  REG6 when "00110",
				  REG7 when "00111",
				  REG8 when "01000",
				  REG9 when "01001",
				  REG10 when "01010",
				  REG11 when "01011",
				  REG12 when "01100",
				  REG13 when "01101",
				  REG14 when "01110",
				  REG15 when "01111",
				  REG16 when "10000",
				  REG17 when "10001",
				  REG18 when "10010",
				  REG19 when "10011",
				  REG20 when "10100",
				  REG21 when "10101",
				  REG22 when "10110",
				  REG23 when "10111",
				  REG24 when "11000",
				  REG25 when "11001",
				  REG26 when "11010",
				  REG27 when "11011",
				  REG28 when "11100",
				  REG29 when "11101",
				  REG30 when "11110",
				  REG31 when others;
	-- map operand b
	with ADDR_OP_B select
		OP_B <= REG0 when "00000",
				  REG1 when "00001",
				  REG2 when "00010",
				  REG3 when "00011",
				  REG4 when "00100",
				  REG5 when "00101",
				  REG6 when "00110",
				  REG7 when "00111",
				  REG8 when "01000",
				  REG9 when "01001",
				  REG10 when "01010",
				  REG11 when "01011",
				  REG12 when "01100",
				  REG13 when "01101",
				  REG14 when "01110",
				  REG15 when "01111",
				  REG16 when "10000",
				  REG17 when "10001",
				  REG18 when "10010",
				  REG19 when "10011",
				  REG20 when "10100",
				  REG21 when "10101",
				  REG22 when "10110",
				  REG23 when "10111",
				  REG24 when "11000",
				  REG25 when "11001",
				  REG26 when "11010",
				  REG27 when "11011",
				  REG28 when "11100",
				  REG29 when "11101",
				  REG30 when "11110",
				  REG31 when others;

-- write value into register if enabled	
process(CLK,WE,ADDR_OP_A,OP_IN) is
begin
	if (RISING_EDGE(CLK) and WE = '1') then
		case ADDR_OP_A is
			when "00000" => REG0 <= OP_IN;
			when "00001" => REG1 <= OP_IN;
			when "00010" => REG2 <= OP_IN;
			when "00011" => REG3 <= OP_IN;
			when "00100" => REG4 <= OP_IN;
			when "00101" => REG5 <= OP_IN;
			when "00110" => REG6 <= OP_IN;
			when "00111" => REG7 <= OP_IN;
			when "01000" => REG8 <= OP_IN;
			when "01001" => REG9 <= OP_IN;
			when "01010" => REG10 <= OP_IN;
			when "01011" => REG11 <= OP_IN;
			when "01100" => REG12 <= OP_IN;
			when "01101" => REG13 <= OP_IN;
			when "01110" => REG14 <= OP_IN;
			when "01111" => REG15 <= OP_IN;
			when "10000" => REG16 <= OP_IN;
			when "10001" => REG17 <= OP_IN;
			when "10010" => REG18 <= OP_IN;
			when "10011" => REG19 <= OP_IN;
			when "10100" => REG20 <= OP_IN;
			when "10101" => REG21 <= OP_IN;
			when "10110" => REG22 <= OP_IN;
			when "10111" => REG23 <= OP_IN;
			when "11000" => REG24 <= OP_IN;
			when "11001" => REG25 <= OP_IN;
			when "11010" => REG26 <= OP_IN;
			when "11011" => REG27 <= OP_IN;
			when "11100" => REG28 <= OP_IN;
			when "11101" => REG29 <= OP_IN;
			when "11110" => REG30 <= OP_IN;
			when others => REG31 <= OP_IN;
		end case;
	end if;
end process;

end behavioral;

