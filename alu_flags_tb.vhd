--------------------------------------------------------------------------------
-- Company: 		EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   00:05:15 08/17/2015
-- Design Name:   
-- Module Name:   /home/hildor/Workspace/processor_design/alu_flags_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: alu_flags
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
 
ENTITY alu_flags_tb IS
END alu_flags_tb;
 
ARCHITECTURE behavior OF alu_flags_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT alu_flags
    PORT(
         ALU_RESULT : IN  bit_vector(7 downto 0);
         OVFL : IN  bit;
         COUT : IN  bit;
			HCOUT : IN  bit;
         FLAGS : OUT  bit_vector(5 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALU_RESULT : bit_vector(7 downto 0) := (others => '0');
   signal OVFL : bit := '0';
   signal COUT : bit := '0';
	signal HCOUT : bit := '0';

 	--Outputs
   signal FLAGS : bit_vector(5 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: alu_flags PORT MAP (
          ALU_RESULT => ALU_RESULT,
          OVFL => OVFL,
          COUT => COUT,
			 HCOUT => HCOUT,
          FLAGS => FLAGS
        );
		  
   -- Stimulus process
   stim_proc: process
   begin		      
		-- insert stimulus here 
		ALU_RESULT <= "00000000";
		wait for 100 ns;
		ALU_RESULT <= "10000000";
		wait for 100 ns;
		ALU_RESULT <= "00000111";
		wait for 100 ns;
		ALU_RESULT <= "10011001";
		wait for 100 ns;
		HCOUT <= HCOUT;
		
      wait;
   end process;

END;
