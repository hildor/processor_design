----------------------------------------------------------------------------------
-- Company: 			EAH 
-- Engineer: 			Tobias Junge 
-- 
-- Create Date:    	17:35:02 09/01/2015 
-- Design Name: 		processor_design
-- Module Name:    	DEC - behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 		decoder for control unit that translates the instructionset
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- entity of module
entity DEC is
    Port ( INS : in  STD_LOGIC_VECTOR (15 downto 0);
           ADDR_INS : in  STD_LOGIC_VECTOR (9 downto 0);
           SREG : in  STD_LOGIC_VECTOR (4 downto 0);
           ADDR_PC : out  STD_LOGIC_VECTOR (9 downto 0);
           ADDR_OP_A : out  STD_LOGIC_VECTOR (4 downto 0);
           ADDR_OP_B : out  STD_LOGIC_VECTOR (4 downto 0);
           OP_CODE : out  STD_LOGIC_VECTOR (2 downto 0);
           OP_IMMED : out  STD_LOGIC_VECTOR (7 downto 0);
			  WE_PC : out  STD_LOGIC;
           WE_SREG : out  STD_LOGIC_VECTOR(4 downto 0);
           WE_RF : out  STD_LOGIC;
           WE_MMU : out  STD_LOGIC;
           SEL_IMMED : out  STD_LOGIC;
			  SEL_MOV : out  STD_LOGIC;
           SEL_RF_IN : out  STD_LOGIC);
end DEC;

architecture behavioral of DEC is
-- defines for better code handling
-- OP_CODE
constant OP_ADD : STD_LOGIC_VECTOR (2 downto 0):="000";
constant OP_SUB : STD_LOGIC_VECTOR (2 downto 0):="001";
constant OP_AND : STD_LOGIC_VECTOR (2 downto 0):="010";
constant OP_EOR : STD_LOGIC_VECTOR (2 downto 0):="011";
constant OP_OR  : STD_LOGIC_VECTOR (2 downto 0):="100";
constant OP_COM : STD_LOGIC_VECTOR (2 downto 0):="101";
constant OP_LSR : STD_LOGIC_VECTOR (2 downto 0):="110";
constant OP_ASR : STD_LOGIC_VECTOR (2 downto 0):="111";
constant OP_NOP : STD_LOGIC_VECTOR (2 downto 0):="000";
-- IMMEDIATE ZERO
constant IMMED_NULL : STD_LOGIC_VECTOR (7 downto 0):="00000000";

begin
	process(SREG, ADDR_INS, INS)
	begin			-- ! = noch nicht fertig ? = noch nicht getestet
		case INS(15 downto 12) is
			-- ###########################################
			-- #					NOP, LSL, ADD 					#
			-- ###########################################
			when "0000" => 
				case INS(11 downto 10) is
					-- NOP
					when "00" =>	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= "00000";
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_NOP;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "00000"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '0';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';
					-- LSL (add of two equal values result in left shift -> also known as multiplied by 2) 	
					-- ADD
					when "11" => 	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= INS(9) & INS(3 downto 0);			
										OP_CODE  	<= OP_ADD;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11111"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';
					-- CATCH OTHERS
					when others => ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= "00000";
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_NOP;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "00000"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '0';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';
				end case; 
-- ! + ?
			-- ###########################################
			--	#						CP, SUB						#
			-- ###########################################
			when "0001" => 
				case INS(11 downto 10) is
					-- CP
					when "01" =>	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= INS(9) & INS(3 downto 0);				
										OP_CODE  	<= OP_SUB;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11111"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '0';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';
					-- SUB
					when "10" =>	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= INS(9) & INS(3 downto 0);					
										OP_CODE  	<= OP_SUB;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11111"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';	

					-- CATCH OTHERS
					when others => ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= "00000";
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_NOP;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "00000"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '0';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';
				end case;
-- ! + ?
			-- ###########################################
			--	#					AND, EOR, OR, MOV				#
			-- ###########################################
			when "0010" => 
				case INS(11 downto 10) is
					-- AND
					when "00" =>	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= INS(9) & INS(3 downto 0);					
										OP_CODE  	<= OP_AND;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11110"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';	
					-- EOR
					when "01" => 	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= INS(9) & INS(3 downto 0);					
										OP_CODE  	<= OP_EOR;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11110"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';
					-- OR
					when "10" =>	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= INS(9) & INS(3 downto 0);				
										OP_CODE  	<= OP_OR;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11110"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';
					-- MOV (add operand b(Rr) with zero and write to rf(Rd))
					when others => ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= INS(9) & INS(3 downto 0);					
										OP_CODE  	<= OP_NOP;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "00000"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '1';
										SEL_RF_IN 	<= '0';
-- ! + ?		
				end case;
				
			-- ###########################################
			--	#			CPI, SUBI, ORI, ANDI, LD, ST		#
			-- ###########################################
			-- CPI
			when "0011" =>	ADDR_PC		<= "0000000000";
								ADDR_OP_A 	<= INS(8 downto 4);
								ADDR_OP_B 	<= "00000";					
								OP_CODE  	<= OP_SUB;	
								OP_IMMED		<= INS(11 downto 8) & INS(3 downto 0); -- K -> constant
								WE_SREG 		<= "11111"; -- S V N Z C
								WE_PC 	   <= '0';	
								WE_RF 		<= '0';
								WE_MMU 		<= '0';
								SEL_IMMED	<= '1';
								SEL_MOV		<= '0';
								SEL_RF_IN 	<= '0';
			-- SUBI					
			when "0101" =>	ADDR_PC		<= "0000000000";
								ADDR_OP_A 	<= INS(8 downto 4);
								ADDR_OP_B 	<= "00000";					
								OP_CODE  	<= OP_SUB;	
								OP_IMMED		<= INS(11 downto 8) & INS(3 downto 0); -- K -> constant
								WE_SREG 		<= "11111"; -- S V N Z C
								WE_PC 	   <= '0';	
								WE_RF 		<= '1';
								WE_MMU 		<= '0';
								SEL_IMMED	<= '1';
								SEL_MOV		<= '0';
								SEL_RF_IN 	<= '0';
			-- ORI					
			when "0110" =>	ADDR_PC		<= "0000000000";
								ADDR_OP_A 	<= INS(8 downto 4);
								ADDR_OP_B 	<= "00000";					
								OP_CODE  	<= OP_OR;	
								OP_IMMED		<= INS(11 downto 8) & INS(3 downto 0); -- K -> constant
								WE_SREG 		<= "11110"; -- S V N Z C
								WE_PC 	   <= '0';	
								WE_RF 		<= '1';
								WE_MMU 		<= '0';
								SEL_IMMED	<= '1';
								SEL_MOV		<= '0';
								SEL_RF_IN 	<= '0';
			-- ANDI
			when "0111" => ADDR_PC		<= "0000000000";
								ADDR_OP_A 	<= INS(8 downto 4);
								ADDR_OP_B 	<= "00000";					
								OP_CODE  	<= OP_AND;	
								OP_IMMED		<= INS(11 downto 8) & INS(3 downto 0); -- K -> constant
								WE_SREG 		<= "11110"; -- S V N Z C
								WE_PC 	   <= '0';	
								WE_RF 		<= '1';
								WE_MMU 		<= '0';
								SEL_IMMED	<= '1';
								SEL_MOV		<= '0';
								SEL_RF_IN 	<= '0';
			when "1000" =>
				-- LD (load operand value from ram -> indirect addressing -> set stack pointer first)
				if (INS(9) = '0') then
					ADDR_PC		<= "0000000000";
					ADDR_OP_A 	<= INS(8 downto 4);					
					ADDR_OP_B 	<= "00000";
					OP_CODE  	<= OP_NOP;	
					OP_IMMED		<= IMMED_NULL;
					WE_SREG 		<= "00000"; -- S V N Z C
					WE_PC 	   <= '0';	
					WE_RF 		<= '1';
					WE_MMU 		<= '0';
					SEL_IMMED	<= '0';
					SEL_MOV		<= '0';
					SEL_RF_IN 	<= '1';
				-- ST (store operand value in ram -> indirect addressing -> set stack pointer first)
				elsif (INS(9) = '1')then
					ADDR_PC		<= "0000000000";
					ADDR_OP_A 	<= "00000";
					ADDR_OP_B 	<= INS(8 downto 4);					
					OP_CODE  	<= OP_ADD;	
					OP_IMMED		<= IMMED_NULL;
					WE_SREG 		<= "00000"; -- S V N Z C
					WE_PC 	   <= '0';	
					WE_RF 		<= '0';
					WE_MMU 		<= '1';
					SEL_IMMED	<= '0';
					SEL_MOV		<= '1';
					SEL_RF_IN 	<= '0';	
				-- CATCH OTHERS
				else
					ADDR_PC		<= "0000000000";
					ADDR_OP_A 	<= "00000";
					ADDR_OP_B 	<= "00000";					
					OP_CODE  	<= OP_NOP;	
					OP_IMMED		<= IMMED_NULL;
					WE_SREG 		<= "00000"; -- S V N Z C
					WE_PC 	   <= '0';	
					WE_RF 		<= '0';
					WE_MMU 		<= '0';
					SEL_IMMED	<= '0';
					SEL_MOV		<= '0';
					SEL_RF_IN 	<= '0';	
				end if;
				
			-- ###########################################
			--	#				COM ASR DEC INC LSR				#
			-- ###########################################
			when "1001" =>
				case INS(2 downto 0) is
					-- COM
					when "000" =>	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_COM;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11111"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';
					-- ASR
					when "101" =>	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_ASR;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11111"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';		
					-- DEC
					when "010" => 	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_SUB;	
										OP_IMMED		<= "00000001";
										WE_SREG 		<= "11110"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '1';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';			
					-- INC
					when "011" => 	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_ADD;	
										OP_IMMED		<= "00000001";
										WE_SREG 		<= "11110"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '1';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';	
					-- LSR
					when "110" => 	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= INS(8 downto 4);
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_LSR;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "11111"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '1';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';	
					-- CATCH OTHERS
					when others =>	ADDR_PC		<= "0000000000";
										ADDR_OP_A 	<= "00000";
										ADDR_OP_B 	<= "00000";				
										OP_CODE  	<= OP_NOP;	
										OP_IMMED		<= IMMED_NULL;
										WE_SREG 		<= "00000"; -- S V N Z C
										WE_PC 	   <= '0';	
										WE_RF 		<= '0';
										WE_MMU 		<= '0';
										SEL_IMMED	<= '0';
										SEL_MOV		<= '0';
										SEL_RF_IN 	<= '0';	
				end case;
			-- ###########################################
			--	#						RJMP, LDI					#
			-- ###########################################				
			-- RJMP (relative jump -> PC + K, distance is limited to size of instruction set)
			when "1100" =>	ADDR_PC		<= std_logic_vector(signed(ADDR_INS) + signed(INS(9 downto 0)));
								ADDR_OP_A 	<= "00000";
								ADDR_OP_B 	<= "00000";				
								OP_CODE  	<= OP_NOP;	
								OP_IMMED		<= IMMED_NULL;
								WE_SREG 		<= "00000"; -- S V N Z C
								WE_PC 	   <= '1';	
								WE_RF 		<= '0';
								WE_MMU 		<= '0';
								SEL_IMMED	<= '0';
								SEL_MOV		<= '0';
								SEL_RF_IN 	<= '0';	
			-- LDI (add operand b(IM) with zero and write to rf(Rd))
			when "1110" => ADDR_PC		<= "0000000000";
								ADDR_OP_A 	<= INS(8 downto 4);					
								ADDR_OP_B 	<= "00000";
								OP_CODE  	<= OP_NOP;	
								OP_IMMED		<= INS(11 downto 8) & INS(3 downto 0); -- K -> constant
								WE_SREG 		<= "00000"; -- S V N Z C
								WE_PC 	   <= '0';	
								WE_RF 		<= '1';
								WE_MMU 		<= '0';
								SEL_IMMED	<= '1';
								SEL_MOV		<= '1';
								SEL_RF_IN 	<= '0';
								
			-- ###########################################
			--	#				BRBS, BRBC							#
			-- ###########################################								
			when "1111" =>	
				-- BRBS
				if (INS(11 downto 10) = "00") then
					-- if flag x is set
					if ((INS(2 downto 0) = "000" and SREG(0) = '1') or    	--carry 					Z
						(INS(2 downto 0) = "001" and SREG(1) = '1') or 			--zero					C
						(INS(2 downto 0) = "010" and SREG(2) = '1') or 			--negative				N
						(INS(2 downto 0) = "011" and SREG(3) = '1') or 			--overflow				V
						(INS(2 downto 0) = "100" and SREG(4) = '1')) then 		--sign					S
						-- than do RJMP
						ADDR_PC		<= std_logic_vector(signed(ADDR_INS) + signed(INS(9 downto 3)));
						ADDR_OP_A 	<= "00000";
						ADDR_OP_B 	<= "00000";				
						OP_CODE  	<= OP_NOP;	
						OP_IMMED		<= IMMED_NULL;
						WE_SREG 		<= "00000"; -- S V N Z C
						WE_PC 	   <= '1';	
						WE_RF 		<= '0';
						WE_MMU 		<= '0';
						SEL_IMMED	<= '0';
						SEL_MOV		<= '0';
						SEL_RF_IN 	<= '0';	
					else
						ADDR_PC		<= "0000000000";
						ADDR_OP_A 	<= "00000";
						ADDR_OP_B 	<= "00000";				
						OP_CODE  	<= OP_NOP;	
						OP_IMMED		<= IMMED_NULL;
						WE_SREG 		<= "00000"; -- S V N Z C
						WE_PC 	   <= '0';	
						WE_RF 		<= '0';
						WE_MMU 		<= '0';
						SEL_IMMED	<= '0';
						SEL_MOV		<= '0';
						SEL_RF_IN 	<= '0';	
					end if;
				-- BRBC
				elsif (INS(11 downto 10) = "01") then 
					-- if flag x is cleared
					if ((INS(2 downto 0) = "000" and SREG(0) = '0') or    	--carry				Z
						(INS(2 downto 0) = "001" and SREG(1) = '0') or 			--zero				C	
						(INS(2 downto 0) = "010" and SREG(2) = '0') or 			--negative			N
						(INS(2 downto 0) = "011" and SREG(3) = '0') or 			--overflow			V
						(INS(2 downto 0) = "100" and SREG(4) = '0')) then 		--sign				S
						-- then do RJMP
						ADDR_PC		<= std_logic_vector(signed(ADDR_INS) + signed(INS(9 downto 3)));
						ADDR_OP_A 	<= "00000";
						ADDR_OP_B 	<= "00000";				
						OP_CODE  	<= OP_NOP;	
						OP_IMMED		<= IMMED_NULL;
						WE_SREG 		<= "00000"; -- S V N Z C
						WE_PC 	   <= '1';	
						WE_RF 		<= '0';
						WE_MMU 		<= '0';
						SEL_IMMED	<= '0';
						SEL_MOV		<= '0';
						SEL_RF_IN 	<= '0';
					else 
						ADDR_PC		<= "0000000000";
						ADDR_OP_A 	<= "00000";
						ADDR_OP_B 	<= "00000";				
						OP_CODE  	<= OP_NOP;	
						OP_IMMED		<= IMMED_NULL;
						WE_SREG 		<= "00000"; -- S V N Z C
						WE_PC 	   <= '0';	
						WE_RF 		<= '0';
						WE_MMU 		<= '0';
						SEL_IMMED	<= '0';
						SEL_MOV		<= '0';
						SEL_RF_IN 	<= '0';	
					end if;
				else
					ADDR_PC		<= "0000000000";
					ADDR_OP_A 	<= "00000";
					ADDR_OP_B 	<= "00000";				
					OP_CODE  	<= OP_NOP;	
					OP_IMMED		<= IMMED_NULL;
					WE_SREG 		<= "00000"; -- S V N Z C
					WE_PC 	   <= '0';	
					WE_RF 		<= '0';
					WE_MMU 		<= '0';
					SEL_IMMED	<= '0';
					SEL_MOV		<= '0';
					SEL_RF_IN 	<= '0';	
				end if;
			when others => 
				ADDR_PC		<= "0000000000";
				ADDR_OP_A 	<= "00000";
				ADDR_OP_B 	<= "00000";				
				OP_CODE  	<= OP_NOP;	
				OP_IMMED		<= IMMED_NULL;
				WE_SREG 		<= "00000"; -- S V N Z C
				WE_PC 	   <= '0';	
				WE_RF 		<= '0';
				WE_MMU 		<= '0';
				SEL_IMMED	<= '0';
				SEL_MOV		<= '0';
				SEL_RF_IN 	<= '0';	
		end case;
	end process;

end behavioral;

