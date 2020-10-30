library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity Display_Manager is
		port ( SW9_8   		: in  STD_LOGIC_VECTOR ( 1 downto 0);
				 Dist_Disp	   : in  STD_LOGIC_VECTOR (15 downto 0);
				 HexADC_Disp   : in  STD_LOGIC_VECTOR (15 downto 0);
				 DP_IN 			: out STD_LOGIC_VECTOR ( 5 downto 0);
				 Blank			: out STD_LOGIC_VECTOR ( 5 downto 0)
				);
end entity;
				 
				 

				 
architecture Behavioural of Display_Manager is
begin


Display_Management : process (SW9_8, Dist_Disp,  HexADC_Disp)
					begin
					
						case SW9_8 is
							when "01" 		=> DP_IN <= "000100"; -- distance display mode
													if (Dist_Disp < "0001000000000000") then
															Blank <= "111000";
													else  Blank <= "110000";
													end if;
							
							when "10" 		=> DP_IN <= "001000"; -- BCD volt display mode
													Blank <= "110000";
							
							when "11"		=> DP_IN <= "000000"; -- hex volt display mode
													if 	(hexADC_Disp(11 downto 0) > "000011111111") then
															Blank <= "111000";
													elsif (HexADC_Disp(7 downto 0) > "00001111") then
															Blank <= "111100";
													else  Blank <= "111110"; 
													end if;
							when others    => DP_IN <= "000000";
													Blank <= "110000"; --Default left two displays off
						end case;
					end process;
				
					
end Behavioural;
