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
              Din     : in  std_logic_vector (11 downto 0);
              Q       : out std_logic_vector (11 downto 0)
				  );
	end component;

    signal clk     : std_logic:='0';	--initialize clk
    signal EN      : std_logic:='1';   --enables module to take a new average value
    signal reset_n : std_logic:='1';	--initialize reset off
    signal Din     : std_logic_vector (11 downto 0) := (others => '0'); --init Data in: Din to all 0s
    signal Q       : std_logic_vector (11 downto 0);
	 
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
	 Din <= (Din(10 downto 0) & '1') when rising_edge(clk); --increment Din by 1

stimuli : process
    begin

        -- Reset generation
        reset_n <= '0';
        wait for 50 ns;
        reset_n <= '1';
        wait for 50 ns;

        -- main stimuli
        wait for 20 * TbPeriod; -- this is 400ns
		  
		  --algorithm for averager TB:
		  --value of Din increments by 1, then that is updated to register0 of REG_ARRAY on next clk rise
		  --tmp updates to sum of N and N-1 register values on next clk rise
		  --tmplast updates to value of tmp(255) on next clk rise
		  --Q = tmplast(19:8) on next clk rise
		  
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