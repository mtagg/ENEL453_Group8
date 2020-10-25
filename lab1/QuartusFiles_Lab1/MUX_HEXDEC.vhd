
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

--MT START MODS

entity MUX_HEXDEC is  
				Port ( SLIDE		: in STD_LOGIC                       :='0'				 ;	
						 BCD_IN	 	: in STD_LOGIC_VECTOR (15 downto 0)  :=(others =>'0')  ; --BCD Input
						 HEX_IN	 	: in STD_LOGIC_VECTOR (15 downto 0)  :=(others =>'0')  ; --Binary input from slide switched 7:0
						 DATA_OUT 	: out STD_LOGIC_VECTOR(15 downto 0)  :=(others =>'0') ); --all ports initialized to '0'		
end MUX_HEXDEC;




architecture synth of MUX_HEXDEC is
	begin
		DATA_OUT <= BCD_IN when SLIDE = '0' else HEX_IN;
			--mux outputs decimal values when slide is on, else hex values
end;
				
				
--MT END MODS
	
	