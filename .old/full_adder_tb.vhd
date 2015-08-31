--------------------------------------------------------------------------------
-- Company: 		EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   14:56:16 08/13/2015
-- Design Name:   
-- Module Name:   /home/hildor/Workspace/processor_design/full_adder_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
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
 
ENTITY full_adder_tb IS
END full_adder_tb;
 
ARCHITECTURE behavior OF full_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
         OP_A : IN  BIT;
         OP_B : IN  BIT;
         CIN : IN  BIT;
         SUM : OUT  BIT;
         COUT : OUT  BIT
        );
    END COMPONENT;
    

   --Inputs
   signal OP_A : BIT := '0';
   signal OP_B : BIT := '0';
   signal CIN : BIT := '0';

 	--Outputs
   signal SUM : BIT;
   signal COUT : BIT;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          OP_A => OP_A,
          OP_B => OP_B,
          CIN => CIN,
          SUM => SUM,
          COUT => COUT
        );
 
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		-- insert stimulus here 
		-- reset operators
		OP_A <= '0';
		OP_B <= '0';
		CIN <= '0';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '0';
		OP_B <= '1';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '1';
		wait for 100 ns;
		
		-- reset operators and set CIN 
		OP_A <= '0';
		OP_B <= '0';
		CIN <= '1';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '0';
		OP_B <= '1';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '1';
		wait for 100 ns;
		
      wait;
   end process;

END;
