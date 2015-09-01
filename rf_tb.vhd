--------------------------------------------------------------------------------
-- Company: 		EAH
-- Engineer:		Tobias Junge
--
-- Create Date:   15:10:25 09/01/2015
-- Design Name:   
-- Module Name:   /home/hildor/Documents/TBD/processor_design/rf_tb.vhd
-- Project Name:  processor_design
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RF
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
 
ENTITY rf_tb IS
END rf_tb;
 
ARCHITECTURE behavior OF rf_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RF
    PORT(
         ADDR_OP_A : IN  std_logic_vector(4 downto 0);
         ADDR_OP_B : IN  std_logic_vector(4 downto 0);
         OP_IN : IN  std_logic_vector(7 downto 0);
         WE : IN  std_logic;
         CLK : IN  std_logic;
         ADDR_MEM : OUT  std_logic_vector(15 downto 0);
         OP_A : OUT  std_logic_vector(7 downto 0);
         OP_B : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ADDR_OP_A : std_logic_vector(4 downto 0) := (others => '0');
   signal ADDR_OP_B : std_logic_vector(4 downto 0) := (others => '0');
   signal OP_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal WE : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal ADDR_MEM : std_logic_vector(15 downto 0);
   signal OP_A : std_logic_vector(7 downto 0);
   signal OP_B : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RF PORT MAP (
          ADDR_OP_A => ADDR_OP_A,
          ADDR_OP_B => ADDR_OP_B,
          OP_IN => OP_IN,
          WE => WE,
          CLK => CLK,
          ADDR_MEM => ADDR_MEM,
          OP_A => OP_A,
          OP_B => OP_B
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

      wait for CLK_period;

      -- insert stimulus here
		-- write on address
		WE <= '1';
		ADDR_OP_A <= "00010";
		OP_IN <= "00101010";
		wait for 10 ns;
		WE <= '0';
		wait for 100 ns;
		
		-- read address 00010 on op a
		ADDR_OP_A <= "00010";
		wait for 100 ns;
		
		-- read adress 00010 on op b
		ADDR_OP_B <= "00010";
		wait for 100 ns;
		
		wait;
   end process;

END;
