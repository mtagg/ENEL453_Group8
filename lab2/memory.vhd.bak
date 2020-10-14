library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity RAM10bit is
		port( save_n		:in  STD_LOGIC;
				BITS_IN 		:in  STD_LOGIC_VECTOR(9 downto 0);
				BITS_OUT		:out STD_LOGIC_VECTOR(9 downto 0);
				);
end entity;

architecture storage of RAM10bit is
	
	begin
	BITS_OUT <= BITS_IN when save_n /= '1';
	
end architecture;
	

