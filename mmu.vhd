----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	02:55:38 09/04/2015 
-- Design Name: 		processor_design
-- Module Name:    	MMU - behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		memory management unit controls external sram and ports
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- entity of module
entity MMU is
    Port ( DATA_PTR : in  STD_LOGIC_VECTOR (15 downto 0);
           DATA_IN : in  STD_LOGIC_VECTOR (7 downto 0);
			  DATA_IN_SRAM : in  STD_LOGIC_VECTOR (7 downto 0);
			  DATA_IN_PORT :  STD_LOGIC_VECTOR (7 downto 0);
			  WE : in  STD_LOGIC;
			  ADDR_SRAM : out  STD_LOGIC_VECTOR (8 downto 0);
			  ADDR_PORT : out  STD_LOGIC_VECTOR (6 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
           DATA_OUT_SRAM : out  STD_LOGIC_VECTOR (7 downto 0);
			  DATA_OUT_PORT : out  STD_LOGIC_VECTOR (7 downto 0);
			  WE_SRAM : out  STD_LOGIC;
			  WE_PORT : out  STD_LOGIC);
end MMU;

architecture behavioral of MMU is
constant SRAM :  STD_LOGIC_VECTOR (15 downto 0):= x"0060" ;

begin
-- forward the signals to periphere sram(0x060 -  0x1FF) or port(0x00 - 0x05F)
process(DATA_PTR,DATA_IN,DATA_IN_SRAM,DATA_IN_PORT,WE)
	begin
		
		if ((DATA_PTR < SRAM) and (WE = '1')) then 
			-- forward to port
			ADDR_SRAM <= "000000000";
			ADDR_PORT <= DATA_PTR(6 downto 0);
			DATA_OUT <= "00000000";
			DATA_OUT_SRAM <= "00000000";
			DATA_OUT_PORT <= DATA_IN;
			WE_SRAM <= '0';
			WE_PORT <= '1';
		elsif ((DATA_PTR = SRAM) and (WE = '0')) then
			-- forward from port
			ADDR_SRAM <= "000000000";
			ADDR_PORT <= DATA_PTR(6 downto 0);
			DATA_OUT <= DATA_IN_PORT;
			DATA_OUT_SRAM <= "00000000";
			DATA_OUT_PORT <= "00000000";
			WE_SRAM <= '0';
			WE_PORT <= '0';
		elsif ((DATA_PTR >= SRAM) and (WE = '1')) then 
			-- forward to sram
			ADDR_SRAM <= DATA_PTR(8 downto 0);
			ADDR_PORT <= "0000000";
			DATA_OUT <= "00000000";
			DATA_OUT_SRAM <= DATA_IN;
			DATA_OUT_PORT <= "00000000";
			WE_SRAM <= '1';
			WE_PORT <= '0';
		elsif ((DATA_PTR >= SRAM) and (WE = '0')) then
			-- forward from sram
			ADDR_SRAM <= DATA_PTR(8 downto 0);
			ADDR_PORT <= "0000000";
			DATA_OUT <= DATA_IN_SRAM;
			DATA_OUT_SRAM <= "00000000";
			DATA_OUT_PORT <= "00000000";
			WE_SRAM <= '0';
			WE_PORT <= '0';
		else
			-- CATCH OTHERS 
			ADDR_SRAM <= "000000000";
			ADDR_PORT <= "0000000";
			DATA_OUT <= "00000000";
			DATA_OUT_SRAM <= "00000000";
			DATA_OUT_PORT <= "00000000";
			WE_SRAM <= '0';
			WE_PORT <= '0';
		end if;
	end process;

end behavioral;

