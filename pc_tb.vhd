--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:36:46 09/01/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/pc_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: PC
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY pc_tb IS
END pc_tb;
 
ARCHITECTURE behavior OF pc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT PC
    PORT(
         ADDR_IN : IN  std_logic_vector(9 downto 0);
         WE : IN  std_logic;
         CLK : IN  std_logic;
         ADDR_OUT : OUT  std_logic_vector(9 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ADDR_IN : std_logic_vector(9 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal ADDR_OUT : std_logic_vector(9 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: PC PORT MAP (
          ADDR_IN => ADDR_IN,
          WE => WE,
          CLK => CLK,
          ADDR_OUT => ADDR_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 20 ns;	

      wait for CLK_period*10;

      -- insert stimulus here
		ADDR_IN <= "0000010000";
		wait for 20 ns;
		
		ADDR_IN <= "0000000001";
		WE <= '1';
		wait for 10 ns;
		WE <= '0';
		
		ADDR_IN <= "1111111000";
		wait for 20 ns;
		
		wait;
   end process;

END;
