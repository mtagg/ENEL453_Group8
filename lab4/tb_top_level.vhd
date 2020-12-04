-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 29.10.2020 18:03:41 UTC

-- Top Level Testbench taken from Lab3, modified for Lab 4


library ieee;
use ieee.std_logic_1164.all;

entity tb_top_level is
end tb_top_level;

architecture tb of tb_top_level is

    component top_level
        port (clk      : in std_logic;
              reset_n  : in std_logic;
              hold_n   : in std_logic;
              SW       : in std_logic_vector (9 downto 0);
              LEDR     : out std_logic_vector (9 downto 0);
              HEX0     : out std_logic_vector (7 downto 0);
              HEX1     : out std_logic_vector (7 downto 0);
              HEX2     : out std_logic_vector (7 downto 0);
              HEX3     : out std_logic_vector (7 downto 0);
              HEX4     : out std_logic_vector (7 downto 0);
              HEX5     : out std_logic_vector (7 downto 0);
				  Buzz_Out : out STD_LOGIC);
    end component;

    signal clk      : std_logic := '0';
    signal reset_n  : std_logic := '1';
    signal hold_n   : std_logic := '1';
    signal SW       : std_logic_vector (9 downto 0) := (others => '0');
    signal LEDR     : std_logic_vector (9 downto 0);
    signal HEX0     : std_logic_vector (7 downto 0);
    signal HEX1     : std_logic_vector (7 downto 0);
    signal HEX2     : std_logic_vector (7 downto 0);
    signal HEX3     : std_logic_vector (7 downto 0);
    signal HEX4     : std_logic_vector (7 downto 0);
    signal HEX5     : std_logic_vector (7 downto 0);
	 signal Buzz_Out : std_logic := '0';

    constant TbPeriod : time := 20 ns; -- EDIT Put right period here
    signal TbSimEnded : std_logic := '0';

begin

    dut : top_level
    port map (clk      => clk,
              reset_n  => reset_n,
              hold_n   => hold_n,
              SW       => SW,
              LEDR     => LEDR,
              HEX0     => HEX0,
              HEX1     => HEX1,
              HEX2     => HEX2,
              HEX3     => HEX3,
              HEX4     => HEX4,
              HEX5     => HEX5,
				  Buzz_Out => Buzz_Out);

    -- Clock generation
    clk <= not clk after TbPeriod/2 when TbSimEnded /= '1' else '0';

  stimuli : process
    begin
		  
		  -- Reset will now force the debounce signal to high (off) position, yay!
        reset_n <= '0';
        wait for 20000*TbPeriod; --0.4ms
        reset_n <= '1';
		  wait for 20000*TbPeriod;
		  
		  --hold_n <= '0'; 			  	wait for 3 ms;--hold button pressed; debouncer will take 30ms to update

        -- main testing while we wait for debounce to take effect
		  --SW 		<= "0011111111" ; wait for 5 ms;--should display hex "FF" 

		  SW 		<= "0100000000" ; wait for 1 ms;-- distance display mode in CM (fronm BCD module), verify correct displays/decimals

		  SW 		<= "1000000000" ; wait for 1 ms;-- BCD Voltage display mode, in Volt units (with decimal)
		  
		  SW 		<= "1100000000" ; wait for 1 ms;-- Hex voltage display, should display 12bit voltage string as 3 digit hex
		 
		  --wait for 10 ms;
		  
		  --after debounce occurs, outputs should be frozen
		  
		  -- end main testing 	
		  --wait for 250000*TbPeriod; --5ms
        TbSimEnded <= '1';   -- Stop the clock and hence terminate the simulation
		  assert false report "Simulation ended" severity failure; -- need this line to halt the testbench  
        wait;
		  
    end process;
	 


end tb;




configuration cfg_tb_top_level of tb_top_level is
    for tb
    end for;
end cfg_tb_top_level;