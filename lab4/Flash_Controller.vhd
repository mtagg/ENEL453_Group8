--Module to execute the flashing segment functionality outlined in lab4's Technical Requirement 3.2

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Flash_Controller is
		port ( clk 				: in  STD_LOGIC;
				 reset_n 		: in  STD_LOGIC;
				 BCD_Distance 	: in  STD_LOGIC_VECTOR (15 downto 0);
				 Blank_In		: in  STD_LOGIC_VECTOR ( 5 downto 0);
				 Blank_Out 		: out STD_LOGIC_VECTOR ( 5 downto 0)
				);
end Flash_Controller;

architecture behavior of Flash_Controller is
	
	constant width 		 	 : integer := 4;	-- small 4 bit base PWM counter size
	constant flash_distance	 : STD_LOGIC_VECTOR (15 downto 0) := "0010000000000001";	-- (BCD "2001")compare this to current distance to determine if flash is necessary
	
	signal pwm_out 			 : STD_LOGIC;
	signal duty_cycle 	 	 : STD_LOGIC_VECTOR (width-1 downto 0) := "0111"; -- 50:50 PWM flash , counter 0-8 on, counter 9-15 off;
	signal flash_en			 : STD_LOGIC;	
   signal zero,zero1,zero2,zero3,zero4,zero5 	: STD_LOGIC; 					  -- each will yield different clock dividing frequencies

	
	
component downcounter is
		Generic ( period  : natural := 1000); -- number to count       
		PORT    ( clk     : in  STD_LOGIC; -- clock to be divided
					 reset_n : in  STD_LOGIC; -- active-high reset
					 enable  : in  STD_LOGIC; -- active-high enable
					 zero    : out STD_LOGIC  -- creates a positive pulse every time current_count hits zero
		);
	end component;
	
component PWM_DAC is	
		Generic ( width : integer := 12);		--use bit patters specific for this module
		Port    ( reset_n    : in  STD_LOGIC;
					 clk        : in  STD_LOGIC;
					 counter_en : in  STD_LOGIC;
					 duty_cycle : in  STD_LOGIC_VECTOR (width-1 downto 0);
					 pwm_out    : out STD_LOGIC
		);
	end component;	
		
begin

	Segment_Flashing : process (BCD_Distance, Blank_In, clk, reset_n, pwm_out, zero)
		begin	
			if (reset_n = '0') then 					-- reset behavior
				Flash_EN 	 <= '0';						-- disable all PWM & clear registers 
				Blank_Out    <= (others => '0');  	-- clear Blank register
				zero <= '0';								-- clear zero
			elsif rising_edge(clk) then	
				if (BCD_Distance < flash_distance) then							-- Flash enabled at 20cm distance
					Flash_EN 	<= '1';													-- starts all PWM counters	
					zero <= zero1;													--speed1
					if (BCD_Distance < "0001011000000001") then 				--distance < 16.01cm
						zero <= zero2;													--speed2
						if (BCD_Distance < "0001000100000001") then 				--distance < 11.01cm
							zero <= zero3;													--speed3
					    	if (BCD_Distance < "0000011100000001") then 				--distance < 07.01cm
								zero <= zero4;													--speed4
								if (BCD_Distance < "0000000000000001") then 				--distance < 00.01cm
									zero <= zero5;													--speed5
									end if;
								end if;
							end if;
						end if;	
					
					if (pwm_out = '0') then Blank_Out <= (others=>'1'); 		-- Flashing behavior controlled by "pwm_out" signal
					else Blank_Out <= Blank_In;	
					end if;
				else																		-- distance is greater than 20:
					Flash_EN 	<= '0';													-- flash disabled
					Blank_Out <= Blank_In;												-- Blank will default to lab3 behavior	
				end if;
			end if;
		end process;	

	
	
	
--component instances: scaled by 1/50000 for testbench
	
L1downcounter_ins : downcounter
GENERIC MAP( Period => 100) --1.6ms
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> flash_en,
				zero 			=> zero1
		);
L2downcounter_ins : downcounter
GENERIC MAP( Period => 60)
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> flash_en,
				zero 			=> zero2
		);
L3downcounter_ins : downcounter
GENERIC MAP( Period => 30)
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> flash_en,
				zero 			=> zero3
		);
L4downcounter_ins : downcounter
GENERIC MAP( Period => 20)
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> flash_en,
				zero 			=> zero4
		);
		
L5downcounter_ins : downcounter
GENERIC MAP( Period => 10) --16us
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> flash_en,
				zero 			=> zero5
		);
					
PWM_DAC_ins : PWM_DAC 
GENERIC MAP( width => width) 
		PORT MAP (
				reset_n 		=> reset_n,
				clk    		=> clk,
				counter_en  => zero,
				duty_cycle 	=> duty_cycle,
				pwm_out  	=> pwm_out
		);


end behavior;
