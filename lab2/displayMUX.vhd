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
				save   		 : in  STD_LOGIC;
				SWsync		 : in  STD_LOGIC_VECTOR( 9 downto 0);	
				BCD_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);		
				DATA_OUT     : buffer STD_LOGIC_VECTOR(15 downto 0)
	); 
end entity;


architecture behavior of displayMUX is
	
component memory is
		port( save_n  		:in  STD_LOGIC;
				BITS_IN 		:in  STD_LOGIC_VECTOR(15 downto 0);
				BITS_OUT		:out STD_LOGIC_VECTOR(15 downto 0)
				);
	end component;
			
	signal SavedData     : STD_LOGIC_VECTOR(15 downto 0); -- Saved data bus for memory module
	signal SW8_9			: STD_LOGIC_VECTOR( 1 downto 0); --control switches for mux operation
	signal segmentData	: STD_LOGIC_VECTOR(15 downto 0); 
		
	begin 
	SW8_9 			<= SWsync(9 downto 8);		--	for 4:1 mux op, ie: '00' ; '01' ; '10' ; '11'
	segmentData 	<= DATA_OUT;					-- signal to feed memory's BITS_IN for 'save' feature
	
muxOperation : process (reset_n, SW8_9) 						
			begin
				if (reset_n = '0') then						-- reset pressed
						DATA_OUT <= (others => '0');     -- display all 0s regardless of input
				elsif rising_edge(clk) then
						if 	(SW8_9 = "00") then
										DATA_OUT <= BCD_IN;									--BCD display
						elsif (SW8_9 = "01") then
										DATA_OUT <= "00000000" & SWsync(7 downto 0); --HEX display
						elsif (SW8_9 = "10") then
										DATA_OUT <= SavedData;								--Saved display
						elsif (SW8_9 = "11") then		
										DATA_OUT <= "0101101001011010";					--0x5a5a display
						end if;
				end if;
			end process;

			
memory_ins: memory
	PORT MAP(
			save_n   => save,
			BITS_IN  => segmentData,
			BITS_OUT => SavedData
			);
			
			
					
end architecture; -- end displayMUX entity