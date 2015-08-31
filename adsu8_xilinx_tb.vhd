--------------------------------------------------------------------------------
-- Company: 		EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   17:17:47 08/25/2015
-- Design Name:   
-- Module Name:   /home/hildor/Workspace/processor_design/adsu8_xilinx_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adsu8_xilinx
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
 
ENTITY adsu8_xilinx_tb IS
END adsu8_xilinx_tb;
 
ARCHITECTURE behavior OF adsu8_xilinx_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adsu8_xilinx
    PORT(
         OP_A : IN  std_logic_vector(7 downto 0);
         OP_B : IN  std_logic_vector(7 downto 0);
         SUB : IN  std_logic;
         SUM : OUT  std_logic_vector(7 downto 0);
         FLAGS : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP_A : std_logic_vector(7 downto 0) := (others => '0');
   signal OP_B : std_logic_vector(7 downto 0) := (others => '0');
   signal SUB : std_logic := '0';

 	--Outputs
   signal SUM : std_logic_vector(7 downto 0);
   signal FLAGS : std_logic_vector(4 downto 0);
  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adsu8_xilinx PORT MAP (
          OP_A => OP_A,
          OP_B => OP_B,
          SUB => SUB,
          SUM => SUM,
          FLAGS => FLAGS
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
      -- insert stimulus here 
		-- reset operators
		OP_A <= "00000000";
		OP_B <= "00000000";
		SUB <= '0';
		wait for 100 ns;
		
		-- 3+1 
		OP_A <= "00000011";
		OP_B <= "00000001";
		wait for 100 ns;
		
		-- -128+7
		OP_A <= "10000000";
		OP_B <= "00000111";
		wait for 100 ns;
		
		-- 127+1
		OP_A <= "01111111";
		OP_B <= "00000001";
		wait for 100 ns;
		
		-- 15+1
		OP_A <= "00001111";
		OP_B <= "00000001";
		wait for 100 ns;
		
		-- set carry in for subtraction
		SUB <= '1';		
		-- 3-1 
		OP_A <= "00000011";
		OP_B <= "00000001";
		wait for 100 ns;
		
		-- -128-7
		OP_A <= "10000000";
		OP_B <= "00000111";
		wait for 100 ns;
		
		-- 255-3
		OP_A <= "01111111";
		OP_B <= "00000011";
		wait for 100 ns;

      wait;
   end process;

END;
