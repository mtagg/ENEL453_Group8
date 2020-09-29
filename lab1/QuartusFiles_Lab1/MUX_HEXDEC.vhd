
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

--MT START MODS

entity MUX_HEXDEC is
				Port ( SLIDE		: in STD_LOGIC;
						 DEC_IN	 	: in STD_LOGIC_VECTOR(15 downto 0); 
						 HEX_IN	 	: in STD_LOGIC_VECTOR(15 downto 0);
						 DATA_OUT 	: out STD_LOGIC_VECTOR(15 downto 0));				
end MUX_HEXDEC;




architecture synth of MUX_HEXDEC is
		
	-- NO EXTRA COMPONENTS  or signals needed for this mux
	begin
		DATA_OUT <= DEC_IN when SLIDE = '0' else HEX_IN; 
			--mux outputs decimal values when slide is on, else hex values
end;
				
				
--MT END MODS
	
	