--------------------------------------------------------------------------------
-- Company: 		EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   21:43:19 08/31/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/sreg_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SREG
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
 
ENTITY sreg_tb IS
END sreg_tb;
 
ARCHITECTURE behavior OF sreg_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SREG
    PORT(
         FLAGS_IN : IN  std_logic_vector(4 downto 0);
         CLK : IN  std_logic;
         WE : IN  std_logic_vector(4 downto 0);
         FLAGS_OUT : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal FLAGS_IN : std_logic_vector(4 downto 0) := (others => '0');
   signal CLK : std_logic := '0';
   signal WE : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal FLAGS_OUT : std_logic_vector(4 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SREG PORT MAP (
          FLAGS_IN => FLAGS_IN,
          CLK => CLK,
          WE => WE,
          FLAGS_OUT => FLAGS_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

--      wait for CLK_period*10;
		-- insert stimulus here
		FLAGS_IN <= "00101";
		WE <= "00000";
		wait for 100 ns;
		
		WE <= "00100";
		wait for 50 ns;
		WE <= "00000";
		wait for 100 ns;
		
		FLAGS_IN <= "11101";
		wait for 200 ns;
		
		WE <= "11000";
		wait for 50 ns;
		WE <= "00000";
		wait for 100 ns;
		
		wait;
   end process;

END;
