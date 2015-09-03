----------------------------------------------------------------------------------
-- Company: EAH 
-- Engineer: Tobias Junge 
-- 
-- Create Date:    15:09:47 09/02/2015 
-- Design Name: 
-- Module Name:    test - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity test is
    Port ( ADD1 : in  STD_LOGIC_VECTOR (7 downto 0);
           ADD2 : in  STD_LOGIC_VECTOR (7 downto 0);
           OUT1 : out  STD_LOGIC_VECTOR (7 downto 0);
			  OUT2 : out  STD_LOGIC_VECTOR (7 downto 0));
end test;

architecture Behavioral of test is

begin
	OUT1 <= (ADD1(7),ADD1(6),ADD1(5),ADD1(4),ADD2(3),ADD2(2),ADD2(1),ADD2(0));
	OUT2 <= ADD1(7 downto 4) & ADD2(3 downto 0);


end Behavioral;

