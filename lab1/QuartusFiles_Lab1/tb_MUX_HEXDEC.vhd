library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_MUX_HEXDEC is
end tb_MUX_HEXDEC;

architecture behavior OF tb_MUX_HEXDEC is

-- Component Declaration for the UUT

   COMPONENT MUX_HEXDEC is
			port ( DEC_IN     : in  std_logic_vector(15 downto 0);
					 HEX_IN     : in  std_logic_vector(15 downto 0);
					 SLIDE      : in  std_logic;
					 DATA_OUT   : out std_logic_vector(15 downto 0) );
   end COMPONENT;   

	
    signal   slide                   : std_logic ;
    signal   dec_in,hex_in, data_out : std_logic_vector(15 downto 0);
    constant time_delay              : time := 10 ns;
    
    
    BEGIN
    -- Instantiate the Unit Under Test (UUT)
    
    uut: MUX_HEXDEC port map ( 
	        dec_in     => DEC_IN,
           hex_in     => HEX_IN,
           slide      => SLIDE,
           data_out   => DATA_OUT );
 
            
    -- Stimulus process 
      stim_process: process -- this process, in testbench/simulation code, is different than in design code
      begin
		  assert false report "MUX_HEXDEC testbench started"; -- puts a note in the ModelSim transcript window (this line is just for convenience)
		  slide <= '1';
		  dec_in <= "0000111100000000"; hex_in <= "0000000011110000"; 
        wait for time_delay;
		  slide <= '0'; 
		  wait for time_delay;
		  dec_in <= "0101010101010101"; hex_in <= "1010101010101010"; 
        wait for time_delay;
		  dec_in <= "1010101010101010"; hex_in <= "0101010101010101"; 
        wait for time_delay;
		  slide <= '1'; 
		  wait for time_delay;
		  dec_in <= "0110011100010001"; hex_in <= "1100110011001100"; 
        wait for time_delay;
		  slide <= '0'; 
		  wait for 10*time_delay; -- this extends the time by 10x the time_delay, for ease of veiwing waveforms
		  assert false report "MUX_HEXDEC testbench completed"; -- puts a note in the ModelSim transcript window (this line is just for convenience)
        wait;	-- this wait without any time parameters just stops the simulation, otherwise it would repeat forever starting back at the top  

	   end process;  
 
END;
