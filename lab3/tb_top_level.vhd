-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 29.10.2020 18:03:41 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_top_level is
end tb_top_level;

architecture tb of tb_top_level is

    component top_level
        port (clk     : in std_logic;
              reset_n : in std_logic;
              hold_n  : in std_logic;
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
    signal reset_n : std_logic;
    signal hold_n  : std_logic;
    signal SW      : std_logic_vector (9 downto 0);
    signal LEDR    : std_logic_vector (9 downto 0);
    signal HEX0    : std_logic_vector (7 downto 0);
    signal HEX1    : std_logic_vector (7 downto 0);
    signal HEX2    : std_logic_vector (7 downto 0);
    signal HEX3    : std_logic_vector (7 downto 0);
    signal HEX4    : std_logic_vector (7 downto 0);
    signal HEX5    : std_logic_vector (7 downto 0);

    constant TbPeriod : time := 20 ns; -- EDIT Put right period here
    signal TbSimEnded : std_logic := '0';

begin

    dut : top_level
    port map (clk     => clk,
              reset_n => reset_n,
              hold_n  => hold_n,
              SW      => SW,
              LEDR    => LEDR,
              HEX0    => HEX0,
              HEX1    => HEX1,
              HEX2    => HEX2,
              HEX3    => HEX3,
              HEX4    => HEX4,
              HEX5    => HEX5);

    -- Clock generation
    clk <= not clk after TbPeriod/2 when TbSimEnded /= '1' else '0';


  stimuli : process
    begin
	 
		  -- initialize	
        hold_n <= '1';
        SW <= (others => '0');

		  
		  
        -- Reset test
        reset_n <= '0';
        wait for 200*TbPeriod;
        reset_n <= '1';
        wait for 200*TbPeriod;

		  
		  
        -- main testing
		  wait for 200*TbPeriod;
		  
		  wait for 200*TbPeriod;
		  
		  wait for 200*TbPeriod;
		  
		  wait for 200*TbPeriod;
		  
		  wait for 200*TbPeriod;
		  
		  wait for 200*TbPeriod;
		  
		  wait for 200*TbPeriod;
		  
		  wait for 200*TbPeriod;
  
		  wait for 200*TbPeriod;
		  
		  
        TbSimEnded <= '1';   -- Stop the clock and hence terminate the simulation
		  
        wait;
		  
    end process;
	 


end tb;




configuration cfg_tb_top_level of tb_top_level is
    for tb
    end for;
end cfg_tb_top_level;