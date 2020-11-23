--Module to control the functionality of the buzzer as outlined in the lab4 technical requirement 3.3
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Buzzer_Controller is
		port ( clk					: in  STD_LOGIC;
				 reset_n				: in  STD_LOGIC;
				 BCD_Distance		: in  STD_LOGIC_VECTOR(15 downto 0);
				 Buzz_Out			: out STD_LOGIC
				 );
end Buzzer_Controller;


architecture behavior of Buzzer_Controller is
	
	constant width 		 	 : integer := 4;		-- small 4 bit base PWM counter size
	signal duty_cycle 	 	 : STD_LOGIC_VECTOR (width-1 downto 0) := "0111"; -- 50:50 PWM flash , counter 0-8 on, counter 9-15 off;
   signal zero, zero0, zero1, zero2, zero3, zero4, zero5, zero6, zero7, zero8, zero9 	: STD_LOGIC; 							 
	signal en : STD_LOGIC := '1';	--buzzer always enabled
	signal Buzzer_Out	: STD_LOGIC;
	signal pwm_out : STD_LOGIC;
	
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


	
buzz: process (clk, reset_n, BCD_Distance, zero, pwm_out)
	begin
		if (reset_n = '0') then
			Buzz_Out <= '0';
			zero <= '0';
		elsif rising_edge(clk) then
			zero <= zero0;
			if (BCD_Distance < "0011010100000001") then 		-- @35cm
				zero <= zero1;
				if (BCD_Distance < "0011000000000001") then 		-- @30cm
					zero <= zero2;
					if (BCD_Distance < "0010010100000001") then 		-- @25cm
						zero <= zero3;
						if (BCD_Distance < "0010000000000001") then 		-- @20cm
							zero <= zero4;
							if (BCD_Distance < "0001011000000001") then 		-- @16cm
								zero <= zero5;
								if (BCD_Distance < "0001001000000001") then 		-- @12cm
									zero <= zero6;
									if (BCD_Distance < "0000100000000001") then 		-- @8cm
										zero <= zero7;
										if (BCD_Distance < "0000010100000001") then 		-- @5cm
											zero <= zero8;
											end if;
										end if;
									end if;
								end if;
							end if;
						end if;
					end if;
				end if;
				
			end if;
			Buzz_Out <= pwm_out;
	end process;
				
										
					

	
	
	
	
	
	
	--component instances:
L0downcounter_ins : downcounter
GENERIC MAP( Period => 50000)	--1000 Hz
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero0
		);	
L1downcounter_ins : downcounter
GENERIC MAP( Period => 20000)	--2500 Hz
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero1
		);
L2downcounter_ins : downcounter
GENERIC MAP( Period => 10000)		--5000 Hz
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero2
		);
L3downcounter_ins : downcounter
GENERIC MAP( Period => 6667)		--7500 Hz
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero3
		);
L4downcounter_ins : downcounter
GENERIC MAP( Period => 5000)		--10000 Hz
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero4
		);	
L5downcounter_ins : downcounter
GENERIC MAP( Period => 4167)		--12000 Hz
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero5
		);	
L6downcounter_ins : downcounter
GENERIC MAP( Period => 3571)		--14000 Hz
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero6
		);
L7downcounter_ins : downcounter
GENERIC MAP( Period => 3125)		--16000 Hz	
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero7
		);
L8downcounter_ins : downcounter
GENERIC MAP( Period => 2778)		--18000 Hz
		PORT MAP (
				clk      	=> clk,
				reset_n 		=> reset_n,
				enable 		=> en,
				zero 			=> zero8
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