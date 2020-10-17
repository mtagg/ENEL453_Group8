library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity synchro is
		port( clk		:in  STD_LOGIC;
				syncIN 	:in  STD_LOGIC_VECTOR(9 downto 0);
				syncOUT	:out STD_LOGIC_VECTOR(9 downto 0)
				);			
end entity;


architecture synchronize of synchro is
	signal mid	: STD_LOGIC_VECTOR (9 downto 0) := (others => '0');
	
	begin 
		process (clk) begin
		
			if rising_edge(clk) then
					syncOUT <= mid;
					mid	  <= syncIN;
			end if;			
		end process;
	
end architecture;