--------------------------------------------------------------------------------
-- Company:			EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   10:52:02 08/12/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/logical_unit_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: logical_unit
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
 
ENTITY logical_unit_tb IS
END logical_unit_tb;
 
ARCHITECTURE behavior OF logical_unit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logical_unit
    PORT(
         OP_A : IN  bit;
         OP_B : IN  bit;
         OP_CODE : IN  bit_vector(2 downto 0);
         RESULT : OUT  bit
        );
    END COMPONENT;
    

   --Inputs
   signal OP_A : bit := '0';
   signal OP_B : bit := '0';
   signal OP_CODE : bit_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal RESULT : bit;


BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logical_unit PORT MAP (
          OP_A => OP_A,
          OP_B => OP_B,
          OP_CODE => OP_CODE,
          RESULT => RESULT
        );


 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here
		-- logical and
		OP_CODE <= "000";
		-- reset operators
		OP_A <= '0';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '0';
		OP_B <= '1';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '1';
		wait for 100 ns;
			
		-- logical or
		OP_CODE <= "001";
		-- reset operators
		OP_A <= '0';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '0';
		OP_B <= '1';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '1';
		wait for 100 ns;
		
		-- logical xor
		OP_CODE <= "010";
		-- reset operators
		OP_A <= '0';
		OP_B <= '0';
		wait for 100 ns;
				
		OP_A <= '0';
		OP_B <= '1';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '1';
		wait for 100 ns;
		
		-- logical OP_A not
		OP_CODE <= "011";
		-- reset operators
		OP_A <= '0';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '0';
		OP_B <= '1';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '0';
		wait for 100 ns;
		
		OP_A <= '1';
		OP_B <= '1';
		wait for 100 ns;
		
		-- simulation end
		wait;
		
   end process;

END;
