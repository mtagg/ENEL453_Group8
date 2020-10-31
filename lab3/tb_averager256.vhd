-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 31.10.2020 15:22:12 UTC





--Averager256 Testbench to test the operation of the added registers

--BEFORE TESTING THIS MODULE, SET THE ADC_MODULE INTO SIMULATION MODE, THIS IS EXPLAINED BY ONEN IN HIS OUTLINE



library ieee;
use ieee.std_logic_1164.all;

entity tb_averager256 is
end tb_averager256;

architecture tb of tb_averager256 is

component averager256 is
        port (clk     : in  std_logic;
              EN      : in  std_logic;
              reset_n : in  std_logic;
              Din     : in  std_logic_vector (7 downto 0);
              Q       : out std_logic_vector (7 downto 0)
				  );
	end component;

    signal clk     : std_logic:='0';	--init clk
    signal EN      : std_logic:='1';   --enables module to take a new average value
    signal reset_n : std_logic:='1';	--init reset off
    signal Din     : std_logic_vector (7 downto 0) := (others => '0'); --init Data in: Din to all 0s
    signal Q       : std_logic_vector (7 downto 0);
	 
	 constant   N	  : INTEGER := 8; -- 2**8 = 256, the base 2 log of 256, the number of data points we will average
	 constant   X    : INTEGER := 4; -- X = log4(2**N), e.g. log4(2**8) = log4(4**4) = log4(256) = 4 (bit of resolution gained)
	 constant	bits : INTEGER := 11; -- number of bits in the input data to be averaged, plus bit 0

    constant TbPeriod : time 		 := 20 ns; --DE10 Lite Clk Period
    signal TbClock 	 : std_logic := '0'  ;
    signal TbSimEnded : std_logic := '0'  ;

begin

    dut : averager256
    port map (clk     => clk,
              EN      => EN,
              reset_n => reset_n,
              Din     => Din,
              Q       => Q);

    -- Clock generation
    clk <= not clk after TbPeriod/2 when TbSimEnded /= '1' else '0';


stimuli : process
    begin

        -- Reset generation
        reset_n <= '0';
        wait for 100 ns;
        reset_n <= '1';
        wait for 100 ns;

        -- main stimuli
        wait for 100 * TbPeriod;
		  
		  
		  
		  --  we will need to test the operation of the new registers within the averager. a decent understanding of how the module works
		  -- in regards to binary averaging would be useful, it took me a few hours to really understand
		  -- let me know if you want to have a video call to kinda get you up to speed if you wanna save time
		  
		  --but basically, we need to verify that the few layers of binary adders in the module really do have registers seperating the layers
		  --this seperation would allow for pipelining of data, instead of just always calculating data as it comes up like combinational logic does
		  
		  --to verify this behaviour, we would want to continually change the Din signal every clock cycle( or a few, whatever preference you have)
		  --for every clock cycle, we should see the upper values of the "tmp" signal be updated with the lower values of tmp, likewise, the
		  --lower values of tmp will be updated with the new values of "REG_ARRAY", REG_ARRAY also gets updated with values of Din every clock
		  --cycle, but this was previous behaviour and will not need to be tested.
		  
		  --the code for the logic mentioned in the last paragraph is in the averager256 module, starting on lines 59,72, and 78

		  
		  
		  
        -- Stop the clock and hence terminate the simulation	  
        TbSimEnded <= '1';
		  wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_averager256 of tb_averager256 is
    for tb
    end for;
end cfg_tb_averager256;