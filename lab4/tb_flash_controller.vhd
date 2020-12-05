-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 5.12.2020 17:21:39 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_Flash_Controller is
end tb_Flash_Controller;

architecture tb of tb_Flash_Controller is

    component Flash_Controller
        port (clk          : in std_logic;
              reset_n      : in std_logic;
              BCD_Distance : in std_logic_vector (15 downto 0);
              Blank_In     : in std_logic_vector (5 downto 0);
              Blank_Out    : out std_logic_vector (5 downto 0));
    end component;

    signal clk          : std_logic;
    signal reset_n      : std_logic;
    signal BCD_Distance : std_logic_vector (15 downto 0);
    signal Blank_In     : std_logic_vector (5 downto 0);
    signal Blank_Out    : std_logic_vector (5 downto 0);

    constant TbPeriod : time := 20 ns; -- EDIT Put right period here
    signal TbClock 	 : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : Flash_Controller
    port map (clk          => clk,
              reset_n      => reset_n,
              BCD_Distance => BCD_Distance,
              Blank_In     => Blank_In,
              Blank_Out    => Blank_Out);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin

		Blank_In 	 <= "110000";			-- 4 of the displays in use
      BCD_Distance <= "0011011000000001"; wait for 2 ms; -- no blink if distance greater than 20 (36.01cm)
		BCD_Distance <= "0001001000000001"; wait for 2 ms; -- distance less than 16.01 (12.01cm)
		
		
		Blank_In		 <= "111000";			-- 3 of the displays in use
		BCD_Distance <= "0000100001010001"; wait for 2 ms; -- distance less than 11.01 (08.51cm)
		BCD_Distance <= "0000011000000001"; wait for 2 ms; -- distance less than 7.01 (06.01cm)
      


		

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
		  assert false report "Simulation ended" severity failure; -- need this line to halt the testbench  
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_Flash_Controller of tb_Flash_Controller is
    for tb
    end for;
end cfg_tb_Flash_Controller;