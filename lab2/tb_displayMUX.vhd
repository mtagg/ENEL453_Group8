-- Testbench automatically generated online, but edited by Tahseen I.
-- at https://vhdl.lapinoo.net
-- Generation date : 18.10.2020 00:01:11 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_displayMUX is
end tb_displayMUX;

architecture tb of tb_displayMUX is

component displayMUX
     port ( clk 			 : in  STD_LOGIC;
				reset_n      : in  STD_LOGIC;
				SW7_0		 	 : in  STD_LOGIC_VECTOR( 7 downto 0);
				SW9_8 		 : in  STD_LOGIC_VECTOR( 1 downto 0); 
				BCD_IN 	    : in  STD_LOGIC_VECTOR(15 downto 0);
				SAVED_IN		 : in  STD_LOGIC_VECTOR(15 downto 0);
				DATA_OUT     : out STD_LOGIC_VECTOR(15 downto 0)
			); 
end component;

    signal clk      : std_logic 				 := '0'; 
    signal reset_n  : std_logic            := '1';
	 signal SW7_0	  : STD_LOGIC_VECTOR   ( 7 downto 0)   := (others => '0');
	 signal SW9_8 	  : STD_LOGIC_VECTOR   ( 1 downto 0)   := (others => '0');
    signal BCD_IN   : std_logic_vector   (15 downto 0)   := (others => '0');
	 signal SAVED_IN : std_logic_vector   (15 downto 0)   := (others => '0');
    signal DATA_OUT : std_logic_vector   (15 downto 0)   := (others => '0');


    constant TbPeriod   : time	 		:= 20 ns ; -- clock period for simulation
    signal   TbClock	   : std_logic 	:= '0'	; -- initial clock value
    signal   TbSimEnded : std_logic 	:= '0'	;

begin

    dut : displayMUX
		port map (	clk      => clk		,
						reset_n  => reset_n	,	
						SW7_0    => SW7_0 	,	
						SW9_8    => SW9_8 	,
						BCD_IN   => BCD_IN	,
						SAVED_IN => SAVED_IN ,
						DATA_OUT => DATA_OUT	);	

    -- Clock generation:
	 clk 		<= TbClock; 	--clock initially at 0
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';


	 	 
    stimuli : process
    begin
		assert false report "MUX_HEXDEC testbench started";
			wait for 0.5 * TbPeriod;
			--test reset:
			--  reset_n <= '0';
			--  wait for 1000 ns;
			--  reset_n <= '1';
			--  wait for 1000 ns;
		  
				--main stimuli
					BCD_IN   <= "1001100110011001";  -- BCD '9999'
					SAVED_IN <= "0001000100010001";  -- saved  "1111"
					SW7_0    <= "11111111";          -- switch input (FF, or 255)
					
					SW9_8   	<= "00";						-- Decimal mode  ; DATAOUT = BCD_IN
					wait for 2 * TbPeriod;
					SW9_8   	<= "01";   			      -- HEX mode "FF" ; DATAOUT = hexout
					wait for 2 * TbPeriod;
					SW9_8   	<= "10";      			   -- memory mode   ; DATAOUT = SAVED_IN
					wait for 2 * TbPeriod;
					SW9_8   	<= "11";    			   --"5a5a" mode	  ; DATAOUT = 0x5a5a	  
					wait for 2 * TbPeriod;		
		  
        wait for 2*TbPeriod;		
        TbSimEnded <= '1'; -- stop clock
		  
			assert false report "MUX_HEXDEC testbench completed";
        wait;							
    end process;
end tb;



-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_displayMUX of tb_displayMUX is
    for tb
    end for;
end cfg_tb_displayMUX;