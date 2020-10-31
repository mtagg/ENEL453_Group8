--There should be sufficient notes, this test bench should operate more similarily to the 4:1 mux, except instead of only outputting 
--one set of data, it will be outputting controls for de-illuminating(blanking) segments and placing decimal points

library ieee;
use ieee.std_logic_1164.all;

entity tb_Display_Manager is
end tb_Display_Manager;

architecture tb of tb_Display_Manager is

    component Display_Manager
        port (SW9_8       : in std_logic_vector (1 downto 0);	-- same as lab 2, but different outputs for lab 3 vs lab2	
              Dist_Disp   : in std_logic_vector (15 downto 0);   --BCD input in centimeters/100, a decimal should be placed to display cm correctly
              HexADC_Disp : in std_logic_vector (15 downto 0);	  --12 bit binary input from the ADC module without conversion to BCD	
              DP_IN       : out std_logic_vector (5 downto 0);	  --this is what top_level will send to segment modules to trigger decimal points	
              Blank       : out std_logic_vector (5 downto 0));  --this is what top_level will send to segment modules to trigger blank segments		
    end component;

    signal SW9_8       : std_logic_vector (1 downto 0);
    signal Dist_Disp   : std_logic_vector (15 downto 0);
    signal HexADC_Disp : std_logic_vector (15 downto 0);
    signal DP_IN       : std_logic_vector (5 downto 0);
    signal Blank       : std_logic_vector (5 downto 0);

begin

   dut : Display_Manager
    port map (SW9_8       => SW9_8,
              Dist_Disp   => Dist_Disp,
              HexADC_Disp => HexADC_Disp,
              DP_IN       => DP_IN,
              Blank       => Blank);

   stimuli : process
    begin
        -- initialization
        SW9_8 				<= (others => '0');
        Dist_Disp 		<= (others => '0');
        HexADC_Disp		<= (others => '0');

        -- EDIT Add stimuli here:
		  
	   --display manager is what controls decimal and blanking out unused segments where leading 0's are present (before a decimal where appropriate)
		  
		  --1:
		  --in distance display mode (SW9_8 == '01'), we would see a decimal in segment 3, after the third digit from the right. then blanking 3 segments on the left
		  --if distance can be measured in single digit cm, otherwise 4 segments will be visible as we have seen before
		  
		  --2:
		  --in regular hex display mode where sw9_8 = '00' we wont see any change from lab2
		  
		  --3:
		  --in ADC hex mode (SW9_8 == '11'), we will never see 4 digit hexidecimal (12 bits input) so 3 blanks will occur, and 4 if the leading hex is 0, ie: "0F4"
		  
		  --4:
		  --voltage display (SW9_8 == '10') will always use 4 displays as the decimal must be placed on hex3 to convert from mV to V
		  --i left the voltage signal for this out because the value wont change anything, just needs a decimal on hex3
		  
		  

        wait;
    end process;

end tb;









configuration cfg_tb_Display_Manager of tb_Display_Manager is
    for tb
    end for;
end cfg_tb_Display_Manager;