library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity Lab3MUX is 
	port ( 	SW9_8			 : in  STD_LOGIC_VECTOR(1 downto 0);  
				HEX_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				CM_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);	
				VOLT_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				VAVG_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
				); 
end entity;


architecture behavior of Lab3MUX is	
	 
begin 
muxOperation : process (SW9_8, HEX_IN, CM_IN, VOLT_IN, VAVG_IN)  
			begin
				case SW9_8 is
					when "00"    =>  DATA_OUT  <=  HEX_IN; 		   --HEX display	 										
				   when "01"    =>  DATA_OUT  <=  CM_IN;				--BCD Distance(cm) Display			
					when "10"    =>  DATA_OUT  <=  VOLT_IN;			--BCD Voltage display			
					when others  =>  DATA_OUT  <=  VAVG_IN;   		--HEX Voltage Avg Display

				end case;
	end process;
				
end architecture; -- end Lab3MUX entity