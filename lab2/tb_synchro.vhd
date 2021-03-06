-- tb_synchro.vhd 
-- Created by Tahseen I. (no online generator used)

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity tb_synchro is
end entity;

architecture synth of tb_synchro is

	--component declaration
	COMPONENT synchro is
		port( clk		:in  STD_LOGIC;
				syncIN 	:in  STD_LOGIC_VECTOR(9 downto 0);
				syncOUT	:out STD_LOGIC_VECTOR(9 downto 0)
				);			 
	end COMPONENT;

	--component signals (for simulation)
	signal mid			: STD_LOGIC_VECTOR (9 downto 0);
	signal syncIN 		: STD_LOGIC_VECTOR (9 downto 0);
	signal syncOUT 	: STD_LOGIC_VECTOR (9 downto 0);
	signal clk 			: STD_LOGIC := '0';
	
	--constant for clock period
	constant clk_period : time		:= 20 ns;
   
		
BEGIN -- START OF SIMULATION  

	-- instantiation of uut
	uut: synchro port map(  clk	  => clk,
									syncIN  => syncIN,
									syncOUT => syncOUT);
						 
	-- simulation process
	simulation_process : process
	begin
		wait for 0.5*clk_period;	
		  assert false report "MUX_HEXDEC testbench started"; -- puts a note in the ModelSim transcript window (this line is just for convenience)
	
			-- signals clk and syncIN are being manipulated in the simulation
	
				clk 	 <= '0';
				syncIN <= "0000000000";
				wait for clk_period;
				clk 	 <= '1';			--rising edge: mid = 0000000000, syncOUT = 0000000000
				wait for clk_period;
				
				clk	 <= '0';
				syncIN <= "0001001001";
				wait for clk_period;
				clk	 <= '1';			--rising edge: mid = 0001001001, syncOUT = 0000000000
				wait for clk_period;
				
				clk	 <= '0';
				syncIN <= "0001100111";
				wait for clk_period;
				clk	 <= '1';			--rising edge: mid = 0001100111, syncOUT = 0001001001
				wait for clk_period;
				
				clk	 <= '0';
				syncIN <= "1111111111";
				wait for clk_period;
				clk    <= '1';			--rising edge: mid = 1111111111, syncOUT = 0001100111
				wait for clk_period;

				clk	 <= '0';
				wait for clk_period;
				clk	 <= '1';			--rising edge: syncOUT = 1111111111
				wait for clk_period;

			assert false report "MUX_HEXDEC testbench completed"; -- puts a note in the ModelSim transcript window (this line is just for convenience)
		wait;
	end process;
	
END; -- END OF SIMULATION
