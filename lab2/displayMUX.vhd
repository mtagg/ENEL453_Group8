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
				reset_n      : in  STD_LOGIC;
				save_n   		 : in  STD_LOGIC;
				SWsync		 : in  STD_LOGIC_VECTOR( 9 downto 0);	
				BCD_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);
				SAVED_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
	); 
end entity;


architecture behavior of displayMUX is
<<<<<<< Updated upstream
	
component memory is
		port( reset_n     :in  STD_LOGIC;
				save_n  		:in  STD_LOGIC;
				BITS_IN 		:in  STD_LOGIC_VECTOR(15 downto 0);
				BITS_OUT		:out STD_LOGIC_VECTOR(15 downto 0)
				);
end component;
			
	signal SavedData     : STD_LOGIC_VECTOR(15 downto 0); -- Saved data bus for memory module
	signal SW8_9			: STD_LOGIC_VECTOR( 1 downto 0); --control switches for mux operation
	signal DataToMem		: STD_LOGIC_VECTOR(15 downto 0); -- signal to branch off DATA_OUT to supply memory block
	
=======
		
	signal SW8_9 	: STD_LOGIC_VECTOR( 1 downto 0); --control switches for mux operation
>>>>>>> Stashed changes
	
begin 
	
	SW8_9 			<= SWsync(9 downto 8);		--	for 4:1 mux op, ie: '00' ; '01' ; '10' ; '11'
	
muxOperation : process ( SW8_9) 					
	begin
			case SW8_9 is	
				 when "00"    => 		DATA_OUT  <= BCD_IN;									--BCD display											
				 when "01"    => 		DATA_OUT  <= "00000000" & SWsync(7 downto 0); --HEX display											
				 when "10"    => 		DATA_OUT  <= SAVED_IN;								--Saved display				 
				 when others  => 		DATA_OUT  <= "0101101001011010";					--0x5a5a display

			end case; 
end process;
				
end architecture; -- end displayMUX entity