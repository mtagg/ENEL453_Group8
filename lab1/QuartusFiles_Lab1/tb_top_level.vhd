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
	
	constant TbPeriod : time	 		:=  150 ns;
	signal TbClk 		: STD_LOGIC    := '0';
	signal TbSimEnd	: STD_LOGIC 	:= '0';
	
			begin		
				dut : top_level
					port map 
								(clk 		  => clk,
								 reset_n   => reset_n,
								 SW        => SW );
									
			--Clock will invert signal every Tbperiod until simulation ends
				clk <= TbClk;
				TbClk <= not TbClk after TbPeriod/2 when TbSimEnd /= '1' else '0' ;
			
			
			SIMULATION_STIMULI: Process begin
			
							--initialize switches all to '0'
					SW 	<= "0000000000";

				
				--checking operation of reset
					reset_n <= '0';
					wait for 400 ns;
					reset_n <= '1';
					
				
			--begin input switch stimulus (for SW)
			wait for 100*TbPeriod; --add spacing to the waveform display
					
					--clock is already initialized and reset has been tested above
					--only SW (pull switches) need to be simulated at this point
					--Note: SW(9), the far left bit, is used to toggle hex or dec display,
					-- the right most 8 bits, SW(7:0) are used for modifying the display value
					
			assert false report "top_level testbench start"; -- terminal display message in ModelSim
				
				SW <= "0000000001"; -- binary - 1
				wait for 200*TbPeriod;      -- these lines will just delay the switching so we can see the output in steps
				SW <= "0000000010"; -- binary - 2
				wait for 200*TbPeriod;
				SW <= "0000000100"; -- binary - 4
				wait for 200*TbPeriod;
				
				--TI START 
				reset_n <= '0';     --added reset to demonstrate values resetting
				wait for 200*TbPeriod;
				reset_n <= '1';	  --reset button no longer pressed
				wait for 200*TbPeriod;
				--TI END
									
				SW <= "0000001000"; -- binary - 8
				wait for 200*TbPeriod;
				SW <= "0000010000"; -- binary - 16
				wait for 200*TbPeriod;
				SW <= "0010000000"; -- binary - 128
				wait for 200*TbPeriod;
				
				SW <= "1000000001"; --hex - 1
				wait for 200*TbPeriod;
				SW <= "1000000010"; --hex - 2
				wait for 200*TbPeriod;
				SW <= "1000000100"; --hex - 4
				wait for 200*TbPeriod;
				SW <= "1000001000"; --hex - 8
				wait for 200*TbPeriod;
				SW <= "1000010000"; --hex - 16
				wait for 200*TbPeriod;
				SW <= "1010000000"; --hex - 80 (binary 128)
				wait for 200*TbPeriod;
				TbSimEnd <= '1';
				wait for 200*TbPeriod;
			assert false report "testbench complete"; -- another terminal display
			wait; -- prevents the test bench from looping back to the start
				
	end process;
					
end behaviour;				
--MT END