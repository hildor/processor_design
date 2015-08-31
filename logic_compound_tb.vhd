--------------------------------------------------------------------------------
-- Company: 		EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   21:08:35 08/12/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/logic_compound_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: logic_compound
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
 
ENTITY logic_compound_tb IS
END logic_compound_tb;
 
ARCHITECTURE behavior OF logic_compound_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT logic_compound
    PORT(
         OP_A : IN  STD_LOGIC_vector(7 downto 0);
         OP_B : IN  STD_LOGIC_vector(7 downto 0);
         OP_CODE : IN  STD_LOGIC_vector(2 downto 0);
         RESULT_LOGIC : OUT  STD_LOGIC_vector(7 downto 0);
			FLAGS : OUT STD_LOGIC_VECTOR(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP_A : STD_LOGIC_vector(7 downto 0) := (others => '0');
   signal OP_B : STD_LOGIC_vector(7 downto 0) := (others => '0');
   signal OP_CODE : STD_LOGIC_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal RESULT_LOGIC : STD_LOGIC_vector(7 downto 0);
	signal FLAGS : STD_LOGIC_vector(4 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: logic_compound PORT MAP (
          OP_A => OP_A,
          OP_B => OP_B,
          OP_CODE => OP_CODE,
          RESULT_LOGIC => RESULT_LOGIC,
			 FLAGS => FLAGS
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		-- insert stimulus here 
		-- logical and
		OP_CODE <= "010";
	
		OP_A <= "01010101";
		OP_B <= "10101010";
		wait for 100 ns;
		
		OP_A <= "10101010";
		OP_B <= "10101010";
		wait for 100 ns;
		
		-- logical xor
		OP_CODE <= "011";
		
		OP_A <= "01010101";
		OP_B <= "10101010";
		wait for 100 ns;
		
		OP_A <= "10101010";
		OP_B <= "10101010";
		wait for 100 ns;
		
		-- logical or
		OP_CODE <= "100";
		
		OP_A <= "01010101";
		OP_B <= "10101010";
		wait for 100 ns;
		
		OP_A <= "10101010";
		OP_B <= "10101010";
		wait for 100 ns;
		
		-- logical OP_A com
		OP_CODE <= "101";
		-- reset operators
		OP_A <= "00000000";
		OP_B <= "00000000";
		wait for 100 ns;
		
		OP_A <= "01010101";
		wait for 100 ns;
		
      wait;
   end process;

END;
