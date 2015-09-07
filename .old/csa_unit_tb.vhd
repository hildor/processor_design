--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:59:02 08/22/2015
-- Design Name:   
-- Module Name:   /home/hildor/Workspace/processor_design/csa_unit_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: csa_unit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types BIT and
-- BIT_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY csa_unit_tb IS
END csa_unit_tb;
 
ARCHITECTURE behavior OF csa_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT csa_unit
    PORT( 
				A : in  BIT;
				B : in  BIT;
				CI : in  BIT;
				S : out  BIT;
				CO : out BIT
        );
    END COMPONENT;
    

   --Inputs
   signal A : BIT := '0';
   signal B : BIT := '0';
   signal CI : BIT := '0';

 	--Outputs
   signal S : BIT;
	signal CO : BIT;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: csa_unit PORT MAP (
          A => A,
          B => B,
          CI => CI,
          S => S,
			 CO => CO
			); 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		-- insert stimulus here
		-- 0+1
		A <= '0';
		B <= '1';
		wait for 100 ns;
		
		-- 1+1
		A <= '1';
		B <= '1';
		wait for 100 ns;
	
		-- 0+1+1
		A <= '0';
		B <= '1';
		CI <= '1';
		wait for 100 ns;
		
		-- 1+1+1
		A <= '1';
		B <= '1';
		CI <= '1';
		wait for 100 ns;
		
      wait;
   end process;

END;
