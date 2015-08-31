--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:02:21 08/31/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/test_tb.vhd
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
 
ENTITY test_tb IS
END test_tb;
 
ARCHITECTURE behavior OF test_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT result_mux
    PORT(
         OP_CODE : IN  std_logic_vector(2 downto 0);
         ARITHMETIC : IN  std_logic_vector(7 downto 0);
         LOGIC : IN  std_logic_vector(7 downto 0);
         SHIFT : IN  std_logic_vector(7 downto 0);
         FLAGS_AR : IN  std_logic_vector(4 downto 0);
         FLAGS_LO : IN  std_logic_vector(4 downto 0);
         FLAGS_SH : IN  std_logic_vector(4 downto 0);
         ALU_R : OUT  std_logic_vector(7 downto 0);
         FLAGS : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal OP_CODE : std_logic_vector(2 downto 0) := (others => '0');
   signal ARITHMETIC : std_logic_vector(7 downto 0) := (others => '0');
   signal LOGIC : std_logic_vector(7 downto 0) := (others => '0');
   signal SHIFT : std_logic_vector(7 downto 0) := (others => '0');
   signal FLAGS_AR : std_logic_vector(4 downto 0) := (others => '0');
   signal FLAGS_LO : std_logic_vector(4 downto 0) := (others => '0');
   signal FLAGS_SH : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal ALU_R : std_logic_vector(7 downto 0);
   signal FLAGS : std_logic_vector(4 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: result_mux PORT MAP (
          OP_CODE => OP_CODE,
          ARITHMETIC => ARITHMETIC,
          LOGIC => LOGIC,
          SHIFT => SHIFT,
          FLAGS_AR => FLAGS_AR,
          FLAGS_LO => FLAGS_LO,
          FLAGS_SH => FLAGS_SH,
          ALU_R => ALU_R,
          FLAGS => FLAGS
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		-- insert stimulus here 
		ARITHMETIC <= "00000001";
		LOGIC <= "00000010";
		SHIFT <= "00000011";
		FLAGS_AR <= "00001";
		FLAGS_LO <= "00010";
		FLAGS_SH <= "00011";
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
