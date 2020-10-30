-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 29.10.2020 16:35:35 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_Display_Manager is
end tb_Display_Manager;

architecture tb of tb_Display_Manager is

    component Display_Manager
        port (SW9_8       : in std_logic_vector (1 downto 0);
              Dist_Disp   : in std_logic_vector (15 downto 0);
              ADC_Disp    : in std_logic_vector (15 downto 0);
              HexADC_Disp : in std_logic_vector (15 downto 0);
              DP_IN       : out std_logic_vector (5 downto 0);
              Blank       : out std_logic_vector (5 downto 0));
    end component;

    signal SW9_8       : std_logic_vector (1 downto 0);
    signal Dist_Disp   : std_logic_vector (15 downto 0);
    signal ADC_Disp    : std_logic_vector (15 downto 0);
    signal HexADC_Disp : std_logic_vector (15 downto 0);
    signal DP_IN       : std_logic_vector (5 downto 0);
    signal Blank       : std_logic_vector (5 downto 0);

begin

    dut : Display_Manager
    port map (SW9_8       => SW9_8,
              Dist_Disp   => Dist_Disp,
              ADC_Disp    => ADC_Disp,
              HexADC_Disp => HexADC_Disp,
              DP_IN       => DP_IN,
              Blank       => Blank);

    stimuli : process
    begin
        -- initialization
        SW9_8 <= (others => '0');
        Dist_Disp <= (others => '0');
        ADC_Disp <= (others => '0');
        HexADC_Disp <= (others => '0');

        -- EDIT Add stimuli here
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  

        wait;
    end process;

end tb;









configuration cfg_tb_Display_Manager of tb_Display_Manager is
    for tb
    end for;
end cfg_tb_Display_Manager;