--------------------------------------------------------------------------------
--
--   FileName:         debounce.vhd
--   Dependencies:     none
--   Design Software:  Quartus Prime Version 17.0.0 Build 595 SJ Lite Edition
--
--   HDL CODE IS PROVIDED "AS IS."  DIGI-KEY EXPRESSLY DISCLAIMS ANY
--   WARRANTY OF ANY KIND, WHETHER EXPRESS OR IMPLIED, INCLUDING BUT NOT
--   LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
--   PARTICULAR PURPOSE, OR NON-INFRINGEMENT. IN NO EVENT SHALL DIGI-KEY
--   BE LIABLE FOR ANY INCIDENTAL, SPECIAL, INDIRECT OR CONSEQUENTIAL
--   DAMAGES, LOST PROFITS OR LOST DATA, HARM TO YOUR EQUIPMENT, COST OF
--   PROCUREMENT OF SUBSTITUTE GOODS, TECHNOLOGY OR SERVICES, ANY CLAIMS
--   BY THIRD PARTIES (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF),
--   ANY CLAIMS FOR INDEMNITY OR CONTRIBUTION, OR OTHER SIMILAR COSTS.
--
--   Version History
--   Version 2.0 6/28/2019 Scott Larson
--     Added asynchronous active-low reset
--     Made stable time higher resolution and simpler to specify
--   Version 1.0 3/26/2012 Scott Larson
--     Initial Public Release
--
--------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY debounce IS
	GENERIC( clk_freq    : INTEGER := 50_000_000;  --system clock frequency in Hz
				stable_time : INTEGER := 30);         --time button must remain stable in ms
	PORT( 
			clk     : IN  STD_LOGIC;  --input clock
			reset_n : IN  STD_LOGIC;  --asynchronous active low reset
			button  : IN  STD_LOGIC;  --input signal to be debounced
			result  : OUT STD_LOGIC := '1'); --debounced signal out --initialize at 1
END debounce;

ARCHITECTURE logic OF debounce IS
	CONSTANT  MAXCOUNT    : INTEGER := 1_500_000;   		-- desired debounce clock cycles - [ 50MHz * 30ms ] 
	SIGNAL 	 flipflops   : STD_LOGIC_VECTOR(1 DOWNTO 0); -- input flip flops
	SIGNAL 	 counter_set : STD_LOGIC;                    -- sync reset to zero
	SIGNAL    count 		 : INTEGER;	                     -- internal signal for simulation debugging
	
BEGIN
  counter_set <= flipflops(0) xor flipflops(1);  		 -- counter reset when flip flops are non-equivalent
  
PROCESS(clk, reset_n)
  BEGIN
    IF(reset_n = '0') THEN                       		-- reset pressed:
      flipflops(1 DOWNTO 0) <= "00";                 		-- clear input flipflops and,
      result <= '0';                                 		-- clear result register
		
    ELSIF rising_edge(clk) THEN           		 		-- rising clock edge
			flipflops(0) <= button;                   	  	-- store button value in 1st flipflop
			flipflops(1) <= flipflops(0);               	  	-- store 1st flipflop value in 2nd flipflop
			If(counter_set = '1') THEN                   	-- if flip flops are not set equal then:	
					count  <= 0;                     	 -- reset counter because input is changing
			ELSIF(count > MAXCOUNT) THEN 							-- if count has passed the desired stable time, then:		
					result <= flipflops(1);                       -- output the stable value
			ELSE                                           	-- if count is shy of stable time, then:					
					count <= count + 1;										 -- increment count	
			END IF; 
    END IF;
  END PROCESS;
  
END logic;
