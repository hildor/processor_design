--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:21:31 09/02/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/test_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: test
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
 
ENTITY test_tb IS
END test_tb;
 
ARCHITECTURE behavior OF test_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test
    PORT(
         ADD1 : IN  std_logic_vector(7 downto 0);
         ADD2 : IN  std_logic_vector(7 downto 0);
         OUT1 : OUT  std_logic_vector(7 downto 0);
         OUT2 : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ADD1 : std_logic_vector(7 downto 0) := (others => '0');
   signal ADD2 : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal OUT1 : std_logic_vector(7 downto 0);
   signal OUT2 : std_logic_vector(7 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test PORT MAP (
          ADD1 => ADD1,
          ADD2 => ADD2,
          OUT1 => OUT1,
          OUT2 => OUT2
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      -- insert stimulus here 
		ADD1 <= "11000000";
		ADD2 <= "00000000";

      wait;
   end process;

END;
