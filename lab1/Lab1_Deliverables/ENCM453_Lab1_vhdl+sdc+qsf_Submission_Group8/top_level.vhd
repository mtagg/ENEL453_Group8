library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
 
entity top_level is
    Port ( clk                           : in  STD_LOGIC;
           reset_n                       : in  STD_LOGIC;
			  SW                            : in  STD_LOGIC_VECTOR (9 downto 0);
           LEDR                          : out STD_LOGIC_VECTOR (9 downto 0);
           HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 : out STD_LOGIC_VECTOR (7 downto 0)
          );
           
end top_level;

architecture Behavioral of top_level is

Signal Num_Hex0, Num_Hex1, Num_Hex2, Num_Hex3, Num_Hex4, Num_Hex5 : STD_LOGIC_VECTOR (3 downto 0):= (others=>'0');   
Signal DP_in, Blank:  STD_LOGIC_VECTOR (5 downto 0);
Signal switch_inputs: STD_LOGIC_VECTOR (12 downto 0);
Signal bcd:           STD_LOGIC_VECTOR (15 DOWNTO 0);
signal muxSW : 		 STD_LOGIC;	--MT 
signal hex_input:		 STD_LOGIC_VECTOR (15 downto 0); --MT ; binary representation of number
signal DATA_OUT:		 STD_LOGIC_VECTOR (15 downto 0); --MT
	--MT - muxSW and DATA_OUT are now going to be what determines the display output instead of auto decimal

--MT START MODS

Component MUX_HEXDEC is
	port ( SLIDE 		: in  STD_LOGIC;
			 DEC_IN		: in  STD_LOGIC_VECTOR(15 downto 0);
			 HEX_IN		: in  STD_LOGIC_VECTOR(15 downto 0);
			 DATA_OUT 	: out STD_LOGIC_VECTOR(15 downto 0) );
end ComPonENt;

--MT END MODS
Component SevenSegment is
    Port( Num_Hex0,Num_Hex1,Num_Hex2,Num_Hex3,Num_Hex4,Num_Hex5 : in  STD_LOGIC_VECTOR (3 downto 0);
          Hex0,Hex1,Hex2,Hex3,Hex4,Hex5                         : out STD_LOGIC_VECTOR (7 downto 0);
          DP_in,Blank                                           : in  STD_LOGIC_VECTOR (5 downto 0)
			);
End Component ;

Component binary_bcd IS
   PORT(
      clk     : IN  STD_LOGIC;                      --system clock
      reset_n : IN  STD_LOGIC;                      --active low asynchronus reset_n
      binary  : IN  STD_LOGIC_VECTOR(12 DOWNTO 0);  --binary number to convert
      bcd     : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)   --resulting BCD number
		);           
END Component;

begin
   Num_Hex0 <= DATA_OUT(3  downto  0);--MT - switched to the MUX output 'DATA_OUT' instead of just the BCD output
   Num_Hex1 <= DATA_OUT(7  downto  4);--MT
   Num_Hex2 <= DATA_OUT(11 downto  8);--MT 
   Num_Hex3 <= DATA_OUT(15 downto 12);--MT
   Num_Hex4 <= "0000";
   Num_Hex5 <= "0000";   
   DP_in    <= "000000"; -- position of the decimal point in the display (1=LED on,0=LED off)
   Blank    <= "110000"; -- blank the 2 MSB 7-segment displays (1=7-seg display off, 0=7-seg display on)

	-- MT BEGIN MODS
reset_process: process (reset_n) begin
	if (reset_n = '0') then 
				muxSW <= '0';
			else 
				muxSW <= SW(9);
			end if;
	end process;
--MT END MODS

SevenSegment_ins: SevenSegment  

                  PORT MAP( Num_Hex0 => Num_Hex0,
                            Num_Hex1 => Num_Hex1,
                            Num_Hex2 => Num_Hex2,
                            Num_Hex3 => Num_Hex3,
                            Num_Hex4 => Num_Hex4,
                            Num_Hex5 => Num_Hex5,
                            Hex0     => Hex0,
                            Hex1     => Hex1,
                            Hex2     => Hex2,
                            Hex3     => Hex3,
                            Hex4     => Hex4,
                            Hex5     => Hex5,
                            DP_in    => DP_in,
									 Blank    => Blank
                          );
                                     
 
LEDR(9 downto 0) <=SW(9 downto 0); -- gives visual display of the switch inputs to the LEDs on board
switch_inputs <= "00000" & SW(7 downto 0);


binary_bcd_ins: binary_bcd                               
   PORT MAP(
      clk      => clk,                          
      reset_n  => reset_n,                                 
      binary   => switch_inputs,    
      bcd      => bcd         
      );
		
		
--MT START MODS		

hex_input <= "00000000" & SW(7 downto 0);

MUX_HEXDEC_ins: MUX_HEXDEC
	port map ( SLIDE 	   => muxSW,
				  DEC_IN    => bcd,
				  HEX_IN    => hex_input,
				  DATA_OUT  => DATA_OUT);	
				  
--MT END MODS				  
end Behavioral;

