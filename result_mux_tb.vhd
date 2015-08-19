--------------------------------------------------------------------------------
-- Company: 		EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   13:32:35 08/19/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/result_mux_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: result_mux
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
 
ENTITY result_mux_tb IS
END result_mux_tb;
 
ARCHITECTURE behavior OF result_mux_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT result_mux
    PORT(
         OP_CODE : IN  BIT_vector(2 downto 0);
         ARITHMETIC : IN  BIT_vector(7 downto 0);
         LOGIC : IN  BIT_vector(7 downto 0);
         SHIFT : IN  BIT_vector(7 downto 0);
         ALU_R : OUT  BIT_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP_CODE : BIT_vector(2 downto 0) := (others => '0');
   signal ARITHMETIC : BIT_vector(7 downto 0) := (others => '0');
   signal LOGIC : BIT_vector(7 downto 0) := (others => '0');
   signal SHIFT : BIT_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal ALU_R : BIT_vector(7 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: result_mux PORT MAP (
          OP_CODE => OP_CODE,
          ARITHMETIC => ARITHMETIC,
          LOGIC => LOGIC,
          SHIFT => SHIFT,
          ALU_R => ALU_R
        );

   -- Stimulus process
   stim_proc: process
   begin	
		-- insert stimulus here
		-- set input values
		ARITHMETIC <= "00000001";
		LOGIC <= "00000100";
		SHIFT <= "00010000";
		wait for 100 ns;
		
		-- arithmetic output
		OP_CODE <= "000";
		wait for 100 ns;
		
		OP_CODE <= "001";
		wait for 100 ns;
		
		-- logic output
		OP_CODE <= "010";
		wait for 100 ns;
		
		OP_CODE <= "011";
		wait for 100 ns;
		
		OP_CODE <= "100";
		wait for 100 ns;
		
		OP_CODE <= "101";
		wait for 100 ns;
		
		-- shift output
		OP_CODE <= "110";
		wait for 100 ns;
		
		OP_CODE <= "111";
		wait for 100 ns;
		
      wait;
   end process;

END;
