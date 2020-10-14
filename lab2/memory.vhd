library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity memory is
		port( save_n		  :in  STD_LOGIC;
				BITS_IN 		:in  STD_LOGIC_VECTOR(9 downto 0);
				BITS_OUT		:out STD_LOGIC_VECTOR(9 downto 0) := (others=>'0') --initial saved memory to 0
				);
end entity;

architecture storage of memory is
	begin	

		process (save_n) 
			begin
				if (save_n ='0') then
					BITS_OUT <= BITS_IN;		-- saved value updates as button is pressed
				end if;
		end process;
		
end architecture;
	

