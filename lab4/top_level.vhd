--Top level - Lab4


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
 
 
entity top_level is
    port ( clk                           : in  STD_LOGIC;
           reset_n                       : in  STD_LOGIC;
			  hold_n							  	  : in  STD_LOGIC; 	
			  SW                            : in  STD_LOGIC_VECTOR (9 downto 0);
           LEDR                          : out STD_LOGIC_VECTOR (9 downto 0);
           HEX0,HEX1,HEX2,HEX3,HEX4,HEX5 : out STD_LOGIC_VECTOR (7 downto 0);
			  Buzz_Out							  : out STD_LOGIC
          );
end;


architecture Behavioral of top_level is

	signal Num_Hex0, Num_Hex1, Num_Hex2, Num_Hex3, Num_Hex4, Num_Hex5 : STD_LOGIC_VECTOR (3 downto 0):= (others=>'0');   
	Signal DP_in, Blank		: STD_LOGIC_VECTOR (5  downto 0);
	signal DATA_MID			: STD_LOGIC_VECTOR (15 downto 0); 
	signal DATA_OUT			: STD_LOGIC_VECTOR (15 downto 0); 
	signal SWsync				: STD_LOGIC_VECTOR (9  downto 0);
	signal hex_buffer			: STD_LOGIC_VECTOR (15 downto 0);
	signal DBhold_n			: STD_LOGIC;
	
   signal voltage				: STD_LOGIC_VECTOR (12 downto 0); 
	signal Distance			: STD_LOGIC_VECTOR (12 downto 0);
	signal ADC_raw 			: STD_LOGIC_VECTOR (11 downto 0);
   signal ADC_out 			: STD_LOGIC_VECTOR (11 downto 0); --average ADC voltage values in binary
	signal ADC_buffer			: STD_LOGIC_VECTOR (15 downto 0);

	signal CM_IN            : STD_LOGIC_VECTOR (15 downto 0);-- in BCD, decimal pt placed on segment 2
   signal VOLT_IN				: STD_LOGIC_VECTOR (15 downto 0);-- decimal voltage value, decimal pt on segment 3
	signal Blank_Mid1			: STD_LOGIC_VECTOR (5  downto 0);-- to freeze module
	signal DP_mid				: STD_LOGIC_VECTOR (5  downto 0);-- to freeze module
	
	--Lab 4 additions:
	signal Blank_Mid2			: STD_LOGIC_VECTOR (5  downto 0); -- takes the output of displaymanager and delivers to the flash_controller
																				 -- flash controller will then be the last stop before SevenSegment.vhd module
																				 -- recieves the the "Blank" signal, flashing all signals at the appropriate
																				 -- distance measurements outlined in the Lab4 instructions
	
	component Buzzer_Controller is
		port ( clk					: in  STD_LOGIC;
				 reset_n				: in  STD_LOGIC;
				 BCD_Distance		: in  STD_LOGIC_VECTOR(15 downto 0);
				 Buzz_Out			: out STD_LOGIC
				 );
	end component;
	
	component Flash_Controller is
			port (  clk 			: in  STD_LOGIC;
					  reset_n 		: in  STD_LOGIC;
					  BCD_Distance : in  STD_LOGIC_VECTOR (15 downto 0);
					  Blank_In		: in  STD_LOGIC_VECTOR ( 5 downto 0);
					  Blank_Out 	: out STD_LOGIC_VECTOR ( 5 downto 0)
				);
	end  component;
	
	component Light_Controller is
			port(		clk 		: in  STD_LOGIC;
						reset_n  : in  STD_LOGIC;
						Distance : in  STD_LOGIC_VECTOR (12 downto 0); --this is the distance signal BEFORE it converts to BCD
						LEDR		: out STD_LOGIC_VECTOR ( 9 downto 0)				
				);
	end component;
	
	component freeze is 
			port(		clk			:in  STD_LOGIC;
						reset_n		:in  STD_LOGIC;
						enable 		:in  STD_LOGIC;
						BLANK_IN 	:in  STD_LOGIC_VECTOR(5 downto 0);
						BLANK_OUT	:out STD_LOGIC_VECTOR(5 downto 0);
						DP_IN			:in  STD_LOGIC_VECTOR(5 downto 0);	
						DP_OUT		:out STD_LOGIC_VECTOR(5 downto 0);
						D_IN			:in  STD_LOGIC_VECTOR(15 downto 0);
						D_OUT 		:out STD_LOGIC_VECTOR(15 downto 0)
				);	
	end component;
	
	component ADC_Data is
			port(    clk      : in STD_LOGIC;
						reset_n  : in STD_LOGIC; -- active-low
						voltage  : out STD_LOGIC_VECTOR (12 downto 0); -- Voltage in milli-volts
						distance : out STD_LOGIC_VECTOR (12 downto 0); -- distance in 10^-4 cm (e.g. if distance = 33 cm, then 3300 is the value)
						ADC_raw  : out STD_LOGIC_VECTOR (11 downto 0); -- the latest 12-bit ADC value
						ADC_out  : out STD_LOGIC_VECTOR (11 downto 0)  -- moving average of ADC value, over 256 samples,
				);                                              -- number of samples defined by the averager module
		end component;
	
	component Display_Manager is
			port ( 	SW9_8   		: in  STD_LOGIC_VECTOR ( 1 downto 0);
						Dist_Disp	: in  STD_LOGIC_VECTOR (15 downto 0);
						HexADC_Disp : in  STD_LOGIC_VECTOR (15 downto 0);
						DP_IN 	   : out STD_LOGIC_VECTOR ( 5 downto 0);
						Blank			: out STD_LOGIC_VECTOR ( 5 downto 0)
					);
					
	end component;
					 
		
	component Lab3MUX is 
			port ( 	SW9_8			 : in  STD_LOGIC_VECTOR(1 downto 0);  
						HEX_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
						CM_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);	
						VOLT_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
						VAVG_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
						DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
						); 
		end component;


	component synchro is
			port ( 	clk		:in  STD_LOGIC;
						syncIN 	:in  STD_LOGIC_VECTOR(9 downto 0);
						syncOUT	:out STD_LOGIC_VECTOR(9 downto 0)
					);			
		end component;

	
	component debounce is
			GENERIC( clk_freq    : INTEGER := 50_000_000;  --system clock frequency in Hz
						stable_time : INTEGER := 30);         --time button must remain stable in ms
			PORT(    clk     : IN  STD_LOGIC;  				  --input clock
						reset_n : IN  STD_LOGIC;  				  --asynchronous active low reset
						button  : IN  STD_LOGIC;  				  --input signal to be debounced
						result  : OUT STD_LOGIC); 				  --debounced signal
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
   
	Num_Hex0 <= DATA_OUT(3  downto  0); 
   Num_Hex1 <= DATA_OUT(7  downto  4); 
   Num_Hex2 <= DATA_OUT(11 downto  8); 
   Num_Hex3 <= DATA_OUT(15 downto 12); 
   Num_Hex4 <= "0000";						
   Num_Hex5 <= "0000";   					
	hex_buffer  	  <= "00000000" & SWsync(7 downto 0);  --extend 0s for 2byte bus
	ADC_buffer       <= "0000" & ADC_out;
	
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
			button    => hold_n,
			result    => DBhold_n
			);
                                     
Lab3MUX_ins : Lab3MUX		
		PORT MAP(			
			SW9_8	  	  => SWsync(9 downto 8),										
			HEX_IN     => hex_buffer,
			CM_IN 	  => CM_IN,
			VOLT_IN	  => VOLT_IN,
			VAVG_IN	  => ADC_buffer,
			DATA_OUT   => DATA_MID
			);
						
ADC_Data_ins : ADC_Data
		PORT MAP(
			clk       => clk,
         reset_n   => reset_n,
         voltage   => voltage,
			distance  => Distance, --output of ADC_Data
			ADC_raw   => ADC_raw,
         ADC_out   => ADC_out
			);
		
CM_binary_bcd_ins : binary_bcd                               		
		PORT MAP(
			clk       => clk,                          
			reset_n   => reset_n,                                 
			binary    => Distance, --input from ADC_Data 
			bcd       => CM_IN         
			);
	
VOLT_binary_bcd_ins : binary_bcd                               		
		PORT MAP(
			clk       => clk,                          
			reset_n   => reset_n,                                 
			binary    => voltage,    
			bcd       => VOLT_IN         
			);	
		
Display_Manager_ins : Display_Manager 
		PORT MAP( 	
			SW9_8   	   => SWsync(9 downto 8),
			Dist_Disp   => CM_IN,
			HexADC_Disp	=> ADC_buffer,		
			DP_IN  	   => DP_mid,
			Blank       => Blank_Mid1 
			);		
		
freeze_ins : freeze  
		PORT MAP(	
			clk			=> clk,
			reset_n		=> reset_n,
			enable 		=> DBhold_n,
			BLANK_IN 	=> Blank_mid1,
			BLANK_OUT	=> Blank_mid2,-- update for lab 4, this now outputs to an intermediate signal and sends to Flash_Controller
			DP_IN			=> DP_mid,	
			DP_OUT		=> DP_IN,
			D_IN			=> DATA_MID,
			D_OUT    	=> DATA_OUT
			);				
		
light_controller_ins : Light_Controller 
		PORT MAP(	
			clk 		=> clk,
			reset_n  =>	reset_n,
			Distance => Distance,
			LEDR		=>	LEDR		
			);
			
flash_controller_ins : Flash_Controller
		PORT MAP(
			clk 		 		=> clk,
			reset_n   		=> reset_n,
			BCD_Distance  	=> CM_IN,
			Blank_In	 		=> Blank_Mid2,
			Blank_Out 		=> Blank
			);
			
buzzer_controller_ins : Buzzer_Controller
		PORT MAP(
			clk				=>	clk,		 
			reset_n			=>	reset_n,
			BCD_Distance	=>	CM_IN,
			Buzz_Out			=> Buzz_Out
			);
			
end Behavioral; --end of top_level 
























               