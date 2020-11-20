
--Module to control the dimming functionality for the 10 LEDs on the DE10-Lite board
-- completes Technical Requirement 3.1 of Lab 4


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity Light_Controller is
		port    (	clk 		: in  STD_LOGIC;
						reset_n  : in  STD_LOGIC;
						Distance : in  STD_LOGIC_VECTOR (12 downto 0); --this is the distance signal BEFORE it converts to BCD
						LEDR		: out STD_LOGIC_VECTOR ( 9 downto 0)
					
		);				
end Light_Controller;
								
architecture behavior of Light_Controller is

constant width 		 : integer := 12;		-- to account for the 13 bit distance signal (less the 13th bit
signal pwm_out 		 : STD_LOGIC;
signal duty_cycle 	 : STD_LOGIC_VECTOR (width-1 downto 0);
signal Invert_Distance: STD_LOGIC_VECTOR (width-1 downto 0);

component PWM_DAC is
		Generic ( width : integer := 12);
		Port    ( reset_n    : in  STD_LOGIC;
					 clk        : in  STD_LOGIC;
					 duty_cycle : in  STD_LOGIC_VECTOR (width-1 downto 0);
					 pwm_out    : out STD_LOGIC
		);
end component;


begin

PWM_DAC_ins : PWM_DAC  
		PORT MAP (
					 reset_n 	=> reset_n,
					 clk    		=> clk,
					 duty_cycle => duty_cycle,
					 pwm_out  	=> pwm_out
		);
		

Invert_Distance <= "111111111111" XOR Distance(width-1 downto 0); --Invert_Distance will recieve 4095 minus current distance
								

LEDR_Dimming: process (Invert_Distance, pwm_out) is 
	begin
		if (reset_n = '0') then					--reset behavior
			LEDR <= (others=>'0');				--LEDs off upon reset
		elsif rising_edge(clk) then			--synchronized default behavior
			duty_cycle <= Invert_Distance;	--duty cycle scaled by distance, larger distance == smaller Invert_Distance == smaller duty cycle 
			LEDR <= (others => (pwm_out));	--LEDR output will be determined by the pulse width calculated
		end if;		
	end process;
		
end behavior;
	
	

					
					