--------------------------------------------------------------------------------
-- Company: 		EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   15:07:19 08/31/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/alu_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALU
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
 
ENTITY alu_tb IS
END alu_tb;
 
ARCHITECTURE behavior OF alu_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALU
    PORT(
         OP_A : IN  std_logic_vector(7 downto 0);
         OP_B : IN  std_logic_vector(7 downto 0);
         OP_CODE : IN  std_logic_vector(2 downto 0);
         OP_R : OUT  std_logic_vector(7 downto 0);
         FLAGS : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP_A : std_logic_vector(7 downto 0) := (others => '0');
   signal OP_B : std_logic_vector(7 downto 0) := (others => '0');
   signal OP_CODE : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal OP_R : std_logic_vector(7 downto 0);
   signal FLAGS : std_logic_vector(4 downto 0);
	
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALU PORT MAP (
          OP_A => OP_A,
          OP_B => OP_B,
          OP_CODE => OP_CODE,
          OP_R => OP_R,
          FLAGS => FLAGS
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		-- insert stimulus here 
		-- set operands
		OP_A <= "10000111";
		OP_B <= "00011100";
		
		-- add
		OP_CODE <= "000";
		wait for 100 ns;
		-- sub
		OP_CODE <= "001";
		wait for 100 ns;
		-- and
		OP_CODE <= "010";
		wait for 100 ns;
		-- eor
		OP_CODE <= "011";
		wait for 100 ns;
		-- or
		OP_CODE <= "100";
		wait for 100 ns;
		-- com
		OP_CODE <= "101";
		wait for 100 ns;
		-- lsr
		OP_CODE <= "110";
		wait for 100 ns;
		-- asr
		OP_CODE <= "111";
		wait for 100 ns;
		
		
      wait;
   end process;

END;
