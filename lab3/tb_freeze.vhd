--COMPLETED TEST BENCH FOR THE "HOLD vALUE" REQUIREMENT FOR LAB 3
-- ADJUST TIMING/ SPACING IF DESIRED

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity tb_freeze is 
end entity tb_freeze;


architecture tb of tb_freeze is

component freeze is 
		port(	clk		:in  STD_LOGIC;
				reset_n	:in  STD_LOGIC;
				enable 	:in  STD_LOGIC;
				D_IN	:in  STD_LOGIC_VECTOR(15 downto 0);
				D_OUT :out STD_LOGIC_VECTOR(15 downto 0)
			);	
end component;



	signal clk 		: STD_LOGIC := '1';
	signal reset_n : STD_LOGIC	:= '1';
	signal enable  : STD_LOGIC;
	signal D_IN		: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
	signal D_OUT   : STD_LOGIC_VECTOR(15 downto 0);
	
	signal TB_END  : STD_LOGIC := '0';
	constant TBPeriod : time := 20 ns;
	
begin 

	dut : freeze 
		PORT MAP (
						clk 		=> clk,
						reset_n  => reset_n,
						enable	=> enable,
						D_IN  	=> D_IN,
						D_OUT		=> D_OUT
						);
							
	clk 	 <= not clk after TBPeriod/2 when TB_END = '0' else '0';
	D_IN	 <= (D_IN(14 downto 0) & '1') when rising_edge(clk); -- sll and add 1 to the D_IN signal for simulation
	
	stimuli : process
    begin
        -- initialization
			enable 	<= '1';        --all registers enabled
		  
		  -- reset test
		  reset_n <= '0';
		  wait for 2*TBPeriod;
		  reset_n <= '1';
		  
		  --test freeze logic
		  wait for 8*TBPeriod;		--letr D_IN update 5 times, note that D_OUT trails behind D_IN 1 clock cycle
		  enable <= '0';				--"hold" button pressed, disabling the input registers from updating
		  wait for 5*TBPeriod;		--show that the D_OUT stopped updating
		  enable <= '1';				--release hold button
		  wait for 8*TBPeriod;		--D_IN will now update D_OUT
		  
		  
		  --end the TB:
		  TB_END <= '1';
		  assert false report "Simulation ended" severity failure;
        wait;
    end process;					
					
						
end tb;