library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;


entity freeze is 
		port(	clk			:in  STD_LOGIC;
				reset_n		:in  STD_LOGIC;
				enable 		:in  STD_LOGIC;
				BLANK_IN 	:in  STD_LOGIC_VECTOR(5 downto 0);
				BLANK_OUT	:out STD_LOGIC_VECTOR(5 downto 0);
				DP_IN			:in  STD_LOGIC_VECTOR(5 downto 0);	
				DP_OUT		:out STD_LOGIC_VECTOR(5 downto 0);
				D_IN			:in  STD_LOGIC_VECTOR(15 downto 0);
				D_OUT 		:out STD_LOGIC_VECTOR(15 downto 0)
			);	
end entity;

architecture behavioral of freeze is
	signal mid_D  			: STD_LOGIC_VECTOR(15 downto 0);
	signal mid_DP  		: STD_LOGIC_VECTOR( 5 downto 0);
	signal mid_BLANK  	: STD_LOGIC_VECTOR( 5 downto 0);
begin

data_flow : process (clk, reset_n, enable, D_IN, BLANK_IN, DP_IN)
		begin
			if (reset_n = '0') then
					mid_D 	 	<= (others => '0');
					mid_DP 	 	<= (others => '0');
					mid_BLANK 	<= (others => '0');
					D_OUT  		<= (others => '0');
					DP_OUT  		<= (others => '0');
					BLANK_OUT	<= (others => '0');
			elsif rising_edge(clk) then
					D_OUT 		<= mid_D;
					DP_OUT		<= mid_DP;
					BLANK_OUT 	<= mid_BLANK;
					if (enable = '1') then
						mid_D	 		<= D_IN;
						mid_DP 		<= DP_IN;
						mid_BLANK	<= BLANK_IN;						
					end if;
			end if;			
		end process;

end behavioral;