-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 18.10.2020 00:01:11 UTC

--Edited by Tahseen I.

library ieee;
use ieee.std_logic_1164.all;

entity tb_displayMUX is
end tb_displayMUX;

architecture tb of tb_displayMUX is

component displayMUX
     port (	SW9_8 		 : in  STD_LOGIC_VECTOR( 1 downto 0); 
				BCD_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);
				HEX_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				SAVED_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
			); 
end component;

	 signal SW9_8 	  : STD_LOGIC_VECTOR   ( 1 downto 0)   := (others => '0');
    signal BCD_IN   : std_logic_vector   (15 downto 0)   := (others => '0');
	 signal HEX_IN	  : std_logic_vector   (15 downto 0);
	 signal SAVED_IN : std_logic_vector   (15 downto 0)   := (others => '0');
    signal DATA_OUT : std_logic_vector   (15 downto 0)   := (others => '0');


    constant TbPeriod   : time	 		:= 20 ns ; -- clock period for simulation
    signal   TbSimEnded : std_logic 	:= '0'	;

begin

    dut : displayMUX
		port map (	SW9_8    => SW9_8 	,
						BCD_IN   => BCD_IN	,
						HEX_IN   => HEX_IN   ,
						SAVED_IN => SAVED_IN ,
						DATA_OUT => DATA_OUT	);	
	 	 
    stimuli : process
    begin
		assert false report "MUX_HEXDEC testbench started";
		  
				--main stimuli
										
					SW9_8   	<= "00";						-- initial mode is 00
					BCD_IN   <= "1001100110011001";  -- BCD '9999'
					HEX_IN   <= "0000000011111111";  -- HEX '00FF'
					SAVED_IN <= "0001000100010001";  -- saved  "1111"
					
					wait for 2 * TbPeriod;
					
					SW9_8   	<= "01";   			      -- HEX mode "FF" ; DATAOUT = hexout
					wait for 2 * TbPeriod;
					
					SW9_8   	<= "10";      			   -- memory mode   ; DATAOUT = SAVED_IN
					wait for 2 * TbPeriod;
					
					SW9_8   	<= "11";    			   --"5a5a" mode	  ; DATAOUT = 0x5a5a	  
					wait for 2 * TbPeriod;
					
					SW9_8   	<= "00";						-- Decimal mode  ; DATAOUT = BCD_IN
					wait for 2 * TbPeriod;
					
				wait for 2*TbPeriod;		
				TbSimEnded  <= '1'; -- stop clock
		  
			assert false report "MUX_HEXDEC testbench completed";
        wait;							
    end process;
end tb;



-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_displayMUX of tb_displayMUX is
    for tb
    end for;
end cfg_tb_displayMUX;