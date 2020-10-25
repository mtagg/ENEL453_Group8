-- 4:1 mux for lab 2, takes 4 inputs: 
--binary from SW(7:0), 
--BCD(15:0) from bcd module, 
--5a5a as a static input, 
--stored 16 bit input that will be saved using a 16-bit RAM module

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity displayMUX is 
	port (   clk 			 : in  STD_LOGIC;
				SW7_0			 : in  STD_LOGIC_VECTOR(7 downto 0);
				SW9_8			 : in  STD_LOGIC_VECTOR(1 downto 0);  -- control switches for mux operation
				BCD_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);
				SAVED_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
				); 
end entity;


architecture behavior of displayMUX is
	signal hexout : std_logic_vector(15 downto 0);
	
begin 
	hexout <= "00000000" & SW7_0 when rising_edge(clk) else hexout;
muxOperation : process (SW9_8)  
			begin
				 if    (SW9_8 = "00")  then  DATA_OUT  <=  BCD_IN;							      --BCD display			
				 elsif (SW9_8 = "00")  then  DATA_OUT  <=  hexout; 		   					--HEX display	 										
				 elsif (SW9_8 = "01")  then  DATA_OUT  <=  SAVED_IN;							   --Saved display 										
				 elsif (SW9_8 = "10")  then  DATA_OUT  <=  "0101101001011010";				   --0x5a5a display				
			end if;
	end process;
				
end architecture; -- end displayMUX entity