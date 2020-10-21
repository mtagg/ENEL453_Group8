-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 21.10.2020 12:43:59 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_displayMUX is
end tb_displayMUX;

architecture tb of tb_displayMUX is

    component displayMUX
        port (clk      : in std_logic;
              reset_n  : in std_logic;
              SWsync   : in std_logic_vector (9 downto 0);
              BCD_IN   : in std_logic_vector (15 downto 0);
              SAVED_IN : in std_logic_vector (15 downto 0);
              DATA_OUT : out std_logic_vector (15 downto 0));
    end component;

    signal clk      : std_logic  := '0';
    signal reset_n  : std_logic  := '1';
    signal SWsync   : std_logic_vector ( 9 downto 0) :=(others => '0');
    signal BCD_IN   : std_logic_vector (15 downto 0) :=(others => '0');
    signal SAVED_IN : std_logic_vector (15 downto 0) :=(others => '0');
    signal DATA_OUT : std_logic_vector (15 downto 0) :=(others => '0');

    constant TbPeriod   : time 		:= 20 ns;
    signal   TbClock    : std_logic := '0'  ;
    signal   TbSimEnded : std_logic := '0'  ;

begin

dut : displayMUX
    port map (clk      => clk,
              reset_n  => reset_n,
              SWsync   => SWsync,
              BCD_IN   => BCD_IN,
              SAVED_IN => SAVED_IN,
              DATA_OUT => DATA_OUT
				  );

				  
    -- Clock generation
	 clk 		<= TbClock;
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';


stimuli : process
    begin
        
        -- Reset generation
        reset_n <= '0';
        wait for 100 ns;
        reset_n <= '1';
        wait for 100 ns;

				--main stimuli
					BCD_IN 	<= "1001100110011001"; 	-- BCD '9999'
					SWsync 	<= "0011111111";			-- output BCD  - will be '9999' as we are testing without BCD module input
					SAVED_IN <= "0001000100010001";	-- saved in '1111'
					wait for 20*TbPeriod;
					SWsync   <= "0111111111";			--output hex FF
					wait for 20*TbPeriod;
					SWsync   <= "1011111111";			--output saved 1111
					wait for 20*TbPeriod;
					SWsync   <= "1111111111"; 			--output '5A5A'
					wait for 20 * TbPeriod;
        TbSimEnded <= '1'; 							--terminate clock
        wait;
    end process;
end tb;






-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_displayMUX of tb_displayMUX is
    for tb
    end for;
end cfg_tb_displayMUX;