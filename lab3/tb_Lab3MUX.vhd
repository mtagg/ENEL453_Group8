-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 29.10.2020 14:59:09 UTC


--This testbench should suffice, it will just go through the 4 different outputs available to 
		--the MUX which have set values, unique from each other.

library ieee;
use ieee.std_logic_1164.all;

entity tb_Lab3MUX is
end tb_Lab3MUX;

architecture tb of tb_Lab3MUX is

    component Lab3MUX
        port (SW9_8    : in std_logic_vector (1 downto 0);
              HEX_IN   : in std_logic_vector (15 downto 0);
              CM_IN    : in std_logic_vector (15 downto 0);
              VOLT_IN  : in std_logic_vector (15 downto 0);
              VAVG_IN  : in std_logic_vector (15 downto 0);
              DATA_OUT : out std_logic_vector (15 downto 0));
    end component;

    signal SW9_8    : std_logic_vector (1 downto 0);
    signal HEX_IN   : std_logic_vector (15 downto 0);
    signal CM_IN    : std_logic_vector (15 downto 0);
    signal VOLT_IN  : std_logic_vector (15 downto 0);
    signal VAVG_IN  : std_logic_vector (15 downto 0);
    signal DATA_OUT : std_logic_vector (15 downto 0);
	 
	 

begin

    dut : Lab3MUX
    port map (SW9_8    => SW9_8,
              HEX_IN   => HEX_IN,
              CM_IN    => CM_IN,
              VOLT_IN  => VOLT_IN,
              VAVG_IN  => VAVG_IN,
              DATA_OUT => DATA_OUT);

    stimuli : process
    begin
	 --Initialize
        SW9_8 <= "00";
        HEX_IN <= "0000000011110000";	--SWITCHES HEX DISPLAY "F0"
        CM_IN <= 	"0000100100001001";	-- Distance display "0909"
        VOLT_IN <= (others => '0');		-- BCD volt display "0000"
        VAVG_IN <= "0000101010101010"; -- ADC HEX DISPLAY "0AAA"
			

        -- test the mux
		  -- input display values can remain constand as we are just testing the output changing as SW9_8 changes
		  
		  wait for 20 ns;
		  SW9_8 <= "01";			-- BCD distance
		  wait for 20 ns;
		  SW9_8 <= "10";			-- BCD voltage
		  wait for 20 ns;
		  SW9_8 <= "11";        -- hex voltage
		  wait for 20 ns;
		  SW9_8 <= "00";			-- back to switch input
		  wait for 20 ns;
		    
        wait;
    end process;

end tb;







configuration cfg_tb_Lab3MUX of tb_Lab3MUX is
    for tb
    end for;
end cfg_tb_Lab3MUX;