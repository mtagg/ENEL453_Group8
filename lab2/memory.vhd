library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity memory is
		port( reset_n		:in  STD_LOGIC;
				save_n		:in  STD_LOGIC;
				BITS_IN 	   :in  STD_LOGIC_VECTOR(15 downto 0);
				BITS_OUT		:out STD_LOGIC_VECTOR(15 downto 0) := (others=>'0') --initial saved memory to 0
				);
end entity;

architecture storage of memory is
	begin	

		process (reset_n,save_n) 
			begin
			if (reset_n = '0') then
					BITS_OUT <= (others=>'0');
			elsif (save_n ='0') then
					BITS_OUT <= BITS_IN;		-- saved value updates as button is pressed
				end if;
		end process;
		
end architecture;
	

