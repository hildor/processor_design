--------------------------------------------------------------------------------
-- Company:			EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   00:08:23 08/15/2015
-- Design Name:   
-- Module Name:   /home/hildor/Workspace/processor_design/r_shifter_8STD_LOGIC_tb.vhd
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
-- This testbench has been automatically generated using types STD_LOGIC and
-- STD_LOGIC_VECTOR for the ports of the unit under test.  Xilinx recommends
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
         OP_A : IN  STD_LOGIC_VECTOR(7 downto 0);
         ASR : IN  STD_LOGIC;
         RESULT_SHIFT : OUT  STD_LOGIC_VECTOR(7 downto 0);
			FLAGS : OUT  STD_LOGIC_VECTOR(4 downto 0)
			);
    END COMPONENT;
  
   --Inputs
   signal OP_A : STD_LOGIC_VECTOR(7 downto 0) := "00000000";
   signal ASR : STD_LOGIC := '0';

 	--Outputs
   signal RESULT_SHIFT : STD_LOGIC_VECTOR(7 downto 0);
	signal FLAGS : STD_LOGIC_VECTOR(4 downto 0);
	

 BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: r_shifter_8bit PORT MAP (
          OP_A => OP_A,
          ASR => ASR,
          RESULT_SHIFT => RESULT_SHIFT,
			 FLAGS => FLAGS
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		-- insert stimulus here 
		-- LSR
		ASR <= '0';
		OP_A <= "10001111";
		wait for 100 ns;
		
		-- ASR
		ASR <= '1';
		OP_A <= "10001111";
		wait for 100 ns;
		
      wait;
   end process;

END;
