-- 4:1 mux for lab 2, takes 4 inputs: 
--binary from SW(7:0), 
--BCD(15:0) from bcd module, 
--5a5a as a static input, 
--stored 16 bit input that will be saved using a 16-bit RAM module

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity displayMUX is 
	port ( 	SW9_8			 : in  STD_LOGIC_VECTOR(1 downto 0);  
				BCD_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);
				HEX_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				SAVED_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
				); 
end entity;


architecture behavior of displayMUX is	
	 
begin 
muxOperation : process (BCD_IN, HEX_IN, SAVED_IN, SW9_8)  
			begin
				case SW9_8 is
				  when "00"    =>  DATA_OUT  <=  BCD_IN;							      --BCD display			
				  when "01"    =>  DATA_OUT  <=  HEX_IN; 		   					--HEX display	 										
				  when "10"    =>  DATA_OUT  <=  SAVED_IN;							   --Saved display 										
				  when others  =>  DATA_OUT  <=  "0101101001011010";				   --0x5a5a display	

				end case;
	end process;
				
end architecture; -- end displayMUX entity