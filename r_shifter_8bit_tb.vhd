--------------------------------------------------------------------------------
-- Company:			EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   00:08:23 08/15/2015
-- Design Name:   
-- Module Name:   /home/hildor/Workspace/processor_design/r_shifter_8bit_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: r_shifter_8bit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types bit and
-- bit_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY r_shifter_8bit_tb IS
END r_shifter_8bit_tb;
 
ARCHITECTURE behavior OF r_shifter_8bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT r_shifter_8bit
    PORT(
         OP_A : IN  bit_vector(7 downto 1);
         LSR_ASR : IN  bit;
         RESULT_SHIFT : OUT  bit_vector(7 downto 0)
        );
    END COMPONENT;
  
   --Inputs
   signal OP_A : bit_vector(7 downto 1) := (others => '0');
   signal LSR_ASR : bit := '0';

 	--Outputs
   signal RESULT_SHIFT : bit_vector(7 downto 0);

 BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: r_shifter_8bit PORT MAP (
          OP_A => OP_A,
          LSR_ASR => LSR_ASR,
          RESULT_SHIFT => RESULT_SHIFT
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		-- insert stimulus here 
		-- LSR
		LSR_ASR <= '0';
		OP_A <= "1000111";
		wait for 100 ns;
		
		-- ASR
		LSR_ASR <= '1';
		OP_A <= "1000111";
		
      wait;
   end process;

END;
