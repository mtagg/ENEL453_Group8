--Top level - Lab2


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
 
 

entity top_level is
    port ( clk                           : in  STD_LOGIC;
           reset_n                       : in  STD_LOGIC;
			  SW                            : in  STD_LOGIC_VECTOR (9 downto 0);
           LEDR                          : out STD_LOGIC_VECTOR (9 downto 0);
           HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 : out STD_LOGIC_VECTOR (7 downto 0)
          );          
end;




architecture Behavioral of top_level is

Signal Num_Hex0, Num_Hex1, Num_Hex2, Num_Hex3, Num_Hex4, Num_Hex5 : STD_LOGIC_VECTOR (3 downto 0):= (others=>'0');   
Signal DP_in, Blank		: STD_LOGIC_VECTOR (5 downto 0);
Signal switch_inputs		: STD_LOGIC_VECTOR (12 downto 0);
Signal bcd					: STD_LOGIC_VECTOR (15 DOWNTO 0);
signal SW9 					: STD_LOGIC;	
signal HEX_IN				: STD_LOGIC_VECTOR (15 downto 0); 
signal DATA_OUT			: STD_LOGIC_VECTOR (15 downto 0); 


component MUX_HEXDEC is
	port ( SLIDE 		: in  STD_LOGIC;
			 BCD_IN		: in  STD_LOGIC_VECTOR(15 downto 0);
			 HEX_IN		: in  STD_LOGIC_VECTOR(15 downto 0);
			 DATA_OUT 	: out STD_LOGIC_VECTOR(15 downto 0) );
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
   Num_Hex0 <= DATA_OUT(3  downto  0);--MT - switched to the MUX output 'DATA_OUT' instead of just the BCD output
   Num_Hex1 <= DATA_OUT(7  downto  4);--MT
   Num_Hex2 <= DATA_OUT(11 downto  8);--MT 
   Num_Hex3 <= DATA_OUT(15 downto 12);--MT
   Num_Hex4 <= "0000";
   Num_Hex5 <= "0000";   
   DP_in    <= "000000"; -- position of the decimal point in the display (1=LED on,0=LED off)
   Blank    <= "110000"; -- blank the 2 MSB 7-segment displays (1=7-seg display off, 0=7-seg display on)

	SW9 <= SW(9) when reset_n = '1' else '0';

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

HEX_IN <= "00000000" & SW(7 downto 0);

MUX_HEXDEC_ins: MUX_HEXDEC
	port map ( SLIDE 	   => SW9,
				  BCD_IN    => bcd,
				  HEX_IN    => HEX_IN,
				  DATA_OUT  => DATA_OUT);	
				  
--MT END MODS				  
end;

