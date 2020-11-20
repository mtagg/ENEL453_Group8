library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity freeze is 
		port(	clk		:in  STD_LOGIC;
				reset_n	:in  STD_LOGIC;
				enable 	:in  STD_LOGIC;
				D_IN	:in  STD_LOGIC_VECTOR(15 downto 0);
				D_OUT :out STD_LOGIC_VECTOR(15 downto 0)
			);	
end entity;

architecture behavioral of freeze is
	signal mid  	: STD_LOGIC_VECTOR(15 downto 0);
begin

data_flow : process (clk, reset_n, enable, D_IN)
		begin
			if (reset_n = '0') then
					mid 	 <= (others => '0');
					D_OUT  <= (others => '0');
			elsif rising_edge(clk) then
					if (enable = '1') then
						mid	 <= D_IN;
					end if;
					D_OUT <= mid;	
			end if;			
		end process;

end behavioral;