--MT START 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tb_top_level is
	end tb_top_level;
	
	
architecture behaviour of tb_top_level is
	component top_level
			port ( clk 									 : in STD_LOGIC;
					 reset_n 	                   : in STD_LOGIC;
					 SW									 : in STD_LOGIC_VECTOR(9 downto 0);
					 LEDR									 : out STD_LOGIC_VECTOR(9 downto 0);
					 HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 : out STD_LOGIC_VECTOR(9 downto 0) );
	end component;
	
	signal clk 									 :  STD_LOGIC;
	signal reset_n 	                   :  STD_LOGIC;
	signal SW									 :  STD_LOGIC_VECTOR(9 downto 0);
	signal LEDR									 :  STD_LOGIC_VECTOR(9 downto 0);
	signal HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 :  STD_LOGIC_VECTOR(7 downto 0);
	
	constant TbPeriod : time	 		:= 20ns;
	signal TbClk 		: STD_LOGIC    := '0';
	signal TbSimEnd	: STD_LOGIC 	:= '0';
	
			begin		
				dut : top_level
					port map (clk 		=> clk,
							 reset_n => reset_n,
							 SW      => SW);
							 
			--Clock will invert signal every Tbperiod until simulation ends
				clk <= TbClk;
				TbClk <= not TbClk after TbPeriod when TbSimEnd /= '1' else '0' ;
			
			
			stimuli : Process begin
				
				--checking operation of reset
					reset_n <= '1';
					wait for 40 ns;
					reset_n <= '0';
					wait for 40 ns;
				
				--initialize signals
					SW 	<= "0000000000";
					--LEDR 	<= '0000000000';
					--HEX0	<= '0000000000';
					--HEX1 	<= '00000000';
					--HEX2   <= '00000000';  
					--HEX3 	<= '00000000';
					--HEX4	<= '00000000';
					--HEX5 	<= '00000000';
				--end initial
					
					
				--begin input signal simulations
					wait for 40 * TbPeriod;
				end process;
					
end behaviour;				
--MT END