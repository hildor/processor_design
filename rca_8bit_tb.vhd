--------------------------------------------------------------------------------
-- Company:				EAH 
-- Engineer:			Tobias Junge
--
-- Create Date:   	18:17:23 08/13/2015
-- Design Name:   
-- Module Name:   	/home/hildor/Workspace/processor_design/rca_8bit_tb.vhd
-- Project Name:  	processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: rca_8bit
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
 
ENTITY rca_8bit_tb IS
END rca_8bit_tb;
 
ARCHITECTURE behavior OF rca_8bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT rca_8bit
    PORT(
         OP_A : IN  bit_vector(7 downto 0);
         OP_B : IN  bit_vector(7 downto 0);
         CIN : IN  bit;
         SUM_RCA : OUT  bit_vector(7 downto 0);
         COUT : OUT  bit;
         OVFL : OUT  bit
        );
    END COMPONENT;
    

   --Inputs
   signal OP_A : bit_vector(7 downto 0) := (others => '0');
   signal OP_B : bit_vector(7 downto 0) := (others => '0');
   signal CIN : bit := '0';

 	--Outputs
   signal SUM_RCA : bit_vector(7 downto 0);
   signal COUT : bit;
   signal OVFL : bit;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: rca_8bit PORT MAP (
          OP_A => OP_A,
          OP_B => OP_B,
          CIN => CIN,
          SUM_RCA => SUM_RCA,
          COUT => COUT,
          OVFL => OVFL
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
		CIN <= '0';
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
		
		-- set carry in for subtraction
		CIN <= '1';
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
