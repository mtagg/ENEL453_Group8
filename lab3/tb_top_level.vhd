-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 29.10.2020 18:03:41 UTC

--BEFORE TESTING THIS MODULE, SET THE ADC_MODULE INTO SIMULATION MODE, THIS IS EXPLAINED BY ONEN IN HIS OUTLINE
--THIS TESTBENCH SHOULD BE GOOD TO PRESENT


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

    signal clk     : std_logic := '0';
    signal reset_n : std_logic := '1';
    signal hold_n  : std_logic := '1';
    signal SW      : std_logic_vector (9 downto 0) := (others => '0');
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
		  
		  -- Reset will now force the debounce signal to high (off) position, yay!
        reset_n <= '0';
        wait for 20000*TbPeriod; --0.4ms
        reset_n <= '1';
		  wait for 20000*TbPeriod;
		  
		  hold_n <= '0'; 			  	wait for 31 ms;--hold button pressed; debouncer takes 30ms

        -- main testing
		  SW 		<= "0011111111" ; wait for 5 ms;--should display hex "FF" 

		  SW 		<= "0100000000" ; wait for 5 ms;-- distance display mode in CM (fronm BCD module), verify correct displays/decimals

		  SW 		<= "1000000000" ; wait for 5 ms;-- BCD Voltage display mode, in Volt units (with decimal)
		  
		  SW 		<= "1100000000" ; wait for 5 ms;-- Hex voltage display, should display 12bit voltage string as 3 digit hex
		 
		  
		  --I chose to end the simulation with the hold behaviour instead of waiting another 31ms to turn it back off
		  --it already was taking 2-3 mins to load the simulation at this point
		  
		  
		  -- end main testing 	
		  wait for 150000*TbPeriod; --3ms
        TbSimEnded <= '1';   -- Stop the clock and hence terminate the simulation
		  assert false report "Simulation ended" severity failure; -- need this line to halt the testbench  
        wait;
		  
    end process;
	 


end tb;




configuration cfg_tb_top_level of tb_top_level is
    for tb
    end for;
end cfg_tb_top_level;