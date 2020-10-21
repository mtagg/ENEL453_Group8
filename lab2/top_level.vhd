--Top level - Lab2


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
 
 

entity top_level is
    port ( clk                           : in  STD_LOGIC;
           reset_n                       : in  STD_LOGIC;
			  save_n							  	  : in  STD_LOGIC; -- used to save current binary value in memory for stored output functionality	
			  SW                            : in  STD_LOGIC_VECTOR (9 downto 0);
           LEDR                          : out STD_LOGIC_VECTOR (9 downto 0);
           HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 : out STD_LOGIC_VECTOR (7 downto 0) 
			);          
end;


architecture Behavioral of top_level is

	signal Num_Hex0, Num_Hex1, Num_Hex2, Num_Hex3, Num_Hex4, Num_Hex5 : STD_LOGIC_VECTOR (3 downto 0):= (others=>'0');   
	Signal DP_in, Blank		: STD_LOGIC_VECTOR ( 5 downto 0);
	Signal switch_inputs		: STD_LOGIC_VECTOR (12 downto 0);
	Signal bcd					: STD_LOGIC_VECTOR (15 DOWNTO 0);
	signal DATA_OUT			: STD_LOGIC_VECTOR (15 downto 0); 
	signal SWsync				: STD_LOGIC_VECTOR (9  downto 0);
	signal SAVED_IN			: STD_LOGIC_VECTOR (15 downto 0);
	signal DBsave_n			: STD_LOGIC;


component synchro is
		port ( clk		:in  STD_LOGIC;
				 syncIN 	:in  STD_LOGIC_VECTOR(9 downto 0);
				 syncOUT	:out STD_LOGIC_VECTOR(9 downto 0)
				);			
	end component;

component debounce is
		GENERIC( clk_freq    : INTEGER := 50_000_000;  --system clock frequency in Hz
					stable_time : INTEGER := 30);         --time button must remain stable in ms
		PORT(  clk     : IN  STD_LOGIC;  --input clock
				 reset_n : IN  STD_LOGIC;  --asynchronous active low reset
				 button  : IN  STD_LOGIC;  --input signal to be debounced
				 result  : OUT STD_LOGIC); --debounced signal
	end component;

component memory is
		port( reset_n     :in  STD_LOGIC;
				save_n  		:in  STD_LOGIC;
				BITS_IN 		:in  STD_LOGIC_VECTOR(15 downto 0);
				BITS_OUT		:out STD_LOGIC_VECTOR(15 downto 0)
				);
	end component;
	
component displayMUX is
	   port( clk 			 : in  STD_LOGIC;
				reset_n      : in  STD_LOGIC;
				SW7_0		 	 : in  STD_LOGIC_VECTOR( 7 downto 0);
				SW9_8 		 : in  STD_LOGIC_VECTOR( 1 downto 0); --control switches for mux operation	
				BCD_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);
				SAVED_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
				); 
	end component;
	
component SevenSegment is
    Port( Num_Hex0,Num_Hex1,Num_Hex2,Num_Hex3,Num_Hex4,Num_Hex5 : in  STD_LOGIC_VECTOR (3 downto 0);
          Hex0,Hex1,Hex2,Hex3,Hex4,Hex5                         : out STD_LOGIC_VECTOR (7 downto 0);
          DP_in,Blank                                           : in  STD_LOGIC_VECTOR (5 downto 0)
			);
	end component;


component binary_bcd IS
   PORT(
      clk     : IN  STD_LOGIC;                      --system clock
      reset_n : IN  STD_LOGIC;                      --active low asynchronus reset_n
      binary  : IN  STD_LOGIC_VECTOR(12 DOWNTO 0);  --binary number to convert
      bcd     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)   --resulting BCD number
		);           
	end component;


begin
   Num_Hex0 <= DATA_OUT(3  downto  0); -- Data output after 4:1 mux selection
   Num_Hex1 <= DATA_OUT(7  downto  4); --""
   Num_Hex2 <= DATA_OUT(11 downto  8); --""
   Num_Hex3 <= DATA_OUT(15 downto 12); --""
   Num_Hex4 <= "0000";						-- segment 4 off
   Num_Hex5 <= "0000";   					-- segment 5 off
   DP_in    <= "000000"; 					-- position of the decimal point in the display (1=LED on,0=LED off)
   Blank    <= "110000"; 					-- blank the 2 MSB 7-segment displays (1=7-seg display off, 0=7-seg display on)
	LEDR(9 downto 0) <= SWsync (9 downto 0); 					-- gives visual display of the switch inputs to the LEDs on board
	switch_inputs 	  <= "00000" & SWsync(7 downto 0);		-- extend to 13 bits for bcd module


SevenSegment_ins : SevenSegment  
      PORT MAP( 
			Num_Hex0  => Num_Hex0,
         Num_Hex1  => Num_Hex1,
         Num_Hex2  => Num_Hex2,
         Num_Hex3  => Num_Hex3,
			Num_Hex4  => Num_Hex4,
			Num_Hex5  => Num_Hex5,
			Hex0      => Hex0,
			Hex1      => Hex1,
			Hex2      => Hex2,
			Hex3      => Hex3,
			Hex4      => Hex4,
			Hex5      => Hex5,
			DP_in     => DP_in,
			Blank     => Blank
			);
                                     
binary_bcd_ins : binary_bcd                               		
		PORT MAP(
			clk       => clk,                          
			reset_n   => reset_n,                                 
			binary    => switch_inputs,    
			bcd       => bcd         
			);
			
displayMUX_ins : displayMUX		
		PORT MAP(
			clk 		  => clk,
			reset_n    => reset_n,    
			SW7_0	  	  => SWsync(7 downto 0),
			SW9_8	  	  => SWsync(9 downto 8),
			BCD_IN 	  => bcd,
			SAVED_IN   => SAVED_IN,
			DATA_OUT   => DATA_OUT
			);
			
synchro_ins : synchro
		PORT MAP(
			clk		 => clk,
			syncIN 	 => SW,
			syncOUT	 => SWsync
			);			   

debounce_ins : debounce
		PORT MAP(
			clk		 => clk,
			reset_n   => reset_n,
			button    => save_n,
			result    => DBsave_n
			);
			
memory_ins: memory
	PORT MAP(
			reset_n  => reset_n,
			save_n   => DBsave_n,
			BITS_IN  => DATA_OUT,
			BITS_OUT => SAVED_IN
			);
			

end architecture; --end of top_level 

