----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	16:24:23 09/05/2015 
-- Design Name: 		processor_design
-- Module Name:    	PORTS - behavioral 
-- Project Name: 
-- Target Devices: 	XUP Virtex-II Pro Development System (Virtex2P)
-- Tool versions: 
-- Description: 		port register management
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
entity PORTS is
    Port ( ADDR_PORT : in  STD_LOGIC_VECTOR (6 downto 0);
           DATA_IN : in  STD_LOGIC_VECTOR (3 downto 0);
			  WE :  in STD_LOGIC;
			  CLK : in  STD_LOGIC;
           PBT : in  STD_LOGIC_VECTOR (4 downto 0);
           DATA_OUT :  out STD_LOGIC_VECTOR (4 downto 0);
			  LED : out  STD_LOGIC_VECTOR (3 downto 0));
end PORTS;

architecture behavioral of PORTS is
-- defines for better code handling
-- PORTC and PIND (low active)
constant PORTC : STD_LOGIC_VECTOR (6 downto 0):= "0110101"; -- 0x35
constant PIND : STD_LOGIC_VECTOR (6 downto 0):= "0110000"; -- 0x30
constant RESET_PBT : STD_LOGIC_VECTOR(4 downto 0) := "00000"; 
-- register for ports (high active)
-- ######################################################
signal REG_LED : STD_LOGIC_VECTOR(3 downto 0) := "0000";
signal REG_PBT : STD_LOGIC_VECTOR(4 downto 0) := "00000";


begin
-- forward led register to output (high active register -> low active output)
	LED <= not REG_LED;
	
	process (CLK,ADDR_PORT,DATA_IN,WE,PBT,REG_LED,REG_PBT) is
	begin
		-- set pbt and led (low active input -> high active register)
		if(rising_edge(CLK)) then
			if (ADDR_PORT = PORTC and WE = '1') then
				REG_LED <= DATA_IN(3 downto 0);
			end if;
			REG_PBT <= not PBT;
		end if;
		-- read pbt and led
		if(ADDR_PORT = PIND and WE = '0') then
			DATA_OUT <= REG_PBT;
		elsif (ADDR_PORT = PORTC and WE = '0') then
			DATA_OUT <= '0' & REG_LED;
		else
			DATA_OUT <= "00000";
		end if;
	end process;

end behavioral;

