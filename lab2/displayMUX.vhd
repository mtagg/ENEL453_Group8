-- 4:1 mux for lab 2, takes 4 inputs: 
--binary from SW(7:0), 
--BCD(15:0) from bcd module, 
--5a5a as a static input, 
--stored 16 bit input that will be saved using a 16-bit RAM module

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity displayMUX is 
	port (   reset_n      : in  STD_LOGIC;
				save   		 : in  STD_LOGIC;
				SWsync		 : in  STD_LOGIC_VECTOR( 9 downto 0);	
				BCD_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);		
				DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
	); 
end entity;


architecture behavior of displayMUX is
	
component memory is
		port( save_n  		:in  STD_LOGIC;
				BITS_IN 		:in  STD_LOGIC_VECTOR(9 downto 0);
				BITS_OUT		:out STD_LOGIC_VECTOR(9 downto 0)
				);
	end component;
	
	-- include any internal signals
	signal STATIC   		: STD_LOGIC_VECTOR(15 downto 0); -- will hold 5A5A value				
	signal SavedData     : STD_LOGIC_VECTOR( 9 downto 0); -- Saved data bus for memory module
	signal HEX_OUT			: STD_LOGIC_VECTOR(15 downto 0);
	signal control			: STD_LOGIC_VECTOR( 1 downto 0);
	
		
	begin 

	STATIC  <= "0101101001011010"; 					--0x5a5a		
	HEX_OUT <= "00000000" & SWsync(7 downto 0);  --8bit SW input extended to 16bit for segment module
	control <= SWsync(9 downto 8);
	
	process (reset_n, control) 							--process for 4:1 mux
			begin
				--if reset										>>  reset == '0'	
				--else if 5a5a triggered   				>>  SW8_9 == "11"
				--else if stored memory is triggered 	>>  SW8_9 == "10"
 				--else if BCD triggered						>>  SW8_9 == "00"
				--else if HEx triggered						>>	 SW8_9 == "01"
			end process;

			
memory_ins: memory
	PORT MAP(
			save_n   => save,
			BITS_IN  => SWsync,
			BITS_OUT => SavedData
			);
			
			
					
end architecture; -- end displayMUX entity