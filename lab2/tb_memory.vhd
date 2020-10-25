-- tb_memory.vhd
-- Created by Tahseen I. (no online generator used)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity tb_memory is
end entity;

architecture synth of tb_memory is 

	--component declaration
	COMPONENT memory is
		port( reset_n	: in  STD_LOGIC;
				save_n	: in  STD_LOGIC;
				BITS_IN 	: in  STD_LOGIC_VECTOR(15 downto 0);
				BITS_OUT	: out STD_LOGIC_VECTOR(15 downto 0):= (others=>'0')
				);
	end COMPONENT;

	--component/data signals
	signal reset_n  : STD_LOGIC := '1'; -- "active low" signals, they will do something when their value is '0'
	signal save_n   : STD_LOGIC := '1';
	signal BITS_IN  : STD_LOGIC_VECTOR(15 downto 0);
	signal BITS_OUT : STD_LOGIC_VECTOR(15 downto 0) := (others=>'0'); --initially, output will be 0
	
	constant clk_period : time := 20 ns; 
	
BEGIN --start of simulation
	
	-- instantiation of uut
	uut : memory port map( reset_n  => reset_n ,
								  save_n   => save_n  ,
								  BITS_IN  => BITS_IN ,
								  BITS_OUT => BITS_OUT );
	
	-- simulation process
	simulation_process : process
	begin
		assert false report "MUX_HEXDEC testbench started";
			wait for 0.5*clk_period;	
			
			-- test 1
			BITS_IN <= "1001100010101011";   --value that is "stored" in memory
			wait for clk_period;
			save_n <= '0'; 						--retrieve switch activated, output is equal to value stored in memory
			wait for clk_period;
			save_n <= '1'; 						--retrieve switch is deactivated, output bits remain
			
			wait for 2*clk_period;
			
			
			-- test 2
			BITS_IN <= "1111111111111111";   --new value that is "stored" in memory
			wait for clk_period;
			save_n  <= '0';						--retrieve switch activated, output is equal to value stored in memory
			wait for 2*clk_period;
			reset_n <= '0'; 						--invoke reset, making the output bits equal to 0
			wait for clk_period;
			reset_n <= '1';						--let go of reset
			wait for clk_period;
			save_n  <= '1';						--retrieve switch is deactivated, output bits remain
			wait for clk_period;
			
			assert false report "MUX_HEXDEC testbench completed";
		wait;
	end process;

END;