-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 17.10.2020 20:55:23 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_top_level is
end tb_top_level;

architecture tb of tb_top_level is

    component top_level
        port (clk     : in std_logic;
              reset_n : in std_logic;
              save_n  : in std_logic;
              SW      : in std_logic_vector (9 downto 0);
              LEDR    : out std_logic_vector (9 downto 0);
              HEX0    : out std_logic_vector (7 downto 0);
              HEX1    : out std_logic_vector (7 downto 0);
              HEX2    : out std_logic_vector (7 downto 0);
              HEX3    : out std_logic_vector (7 downto 0);
              HEX4    : out std_logic_vector (7 downto 0);
              HEX5    : out std_logic_vector (7 downto 0));
    end component;

    signal clk     : std_logic;
    signal reset_n : std_logic := '1';	-- initialize off	
    signal save_n  : std_logic := '1'; -- initialize off
    signal SW      : std_logic_vector (9 downto 0) := "0011111111"; --initially output 255 (decimal)
    signal LEDR    : std_logic_vector (9 downto 0);
    signal HEX0    : std_logic_vector (7 downto 0);
    signal HEX1    : std_logic_vector (7 downto 0);
    signal HEX2    : std_logic_vector (7 downto 0);
    signal HEX3    : std_logic_vector (7 downto 0);
    signal HEX4    : std_logic_vector (7 downto 0);
    signal HEX5    : std_logic_vector (7 downto 0);

    constant TbPeriod : time := 20 ns; --- @ 50MHz clk freq
    signal TbClock    : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : top_level
    port map (clk     => clk,
              reset_n => reset_n,
              save_n  => save_n,
              SW      => SW,
              LEDR    => LEDR,
              HEX0    => HEX0,
              HEX1    => HEX1,
              HEX2    => HEX2,
              HEX3    => HEX3,
              HEX4    => HEX4,
              HEX5    => HEX5);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';
    clk <= TbClock;

	 
    stimuli : process
    begin
			reset_n <= '0';       --reset flipflops
			wait for 10*TBPeriod; --100*20ns = 2us
			reset_n <= '1';
					SW 	  <= "0111111111";  wait for 500000*TbPeriod;		-- SW9_8 = 01, meaning that it should output value in hex (FF)
					
					
					save_n  <= '0'; 	  		  --wait for 100*TbPeriod;   -- memory register will hold a value (11111111, or FF)
					SW		  <= "0000010001";  wait for 1000000*TbPeriod;	-- SW9_8 = 00: output in decimal, memory register should save value (00010001)
					save_n  <= '1'; 	  		                           -- no longer saving the value to memory
					
					
					SW 	  <= "1000000000";  wait for 500000*TbPeriod;		-- SW9_8 = 10, meaning that output should be whatever is stored in memory
					
					reset_n <= '0';
					SW 	  <= "1100000000";  wait for 500000*TbPeriod;		-- SW9_8 = 11, which outputs the hardcoded value of 0x5a5a
			

					-- Stop the clock and hence terminate the simulation
					TbSimEnded <= '1';
        wait;
    end process;

end tb;






-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_top_level of tb_top_level is
    for tb
    end for;
end cfg_tb_top_level;