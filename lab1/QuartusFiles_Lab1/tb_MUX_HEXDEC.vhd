library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity tb_MUX_HEXDEC is
end tb_MUX_HEXDEC;



architecture behavior OF tb_MUX_HEXDEC is

-- Component Declaration for the UUT: "MUX_HEXDEC"
   COMPONENT MUX_HEXDEC is port ( 
				 SLIDE      : in  std_logic;
				 DEC_IN     : in  std_logic_vector(15 downto 0);
				 HEX_IN     : in  std_logic_vector(15 downto 0);
				 DATA_OUT   : out std_logic_vector (15 downto 0) );
  end COMPONENT ;   

	 --signal/data related things init:
    signal   SLIDE                   : std_logic ;
    signal   DEC_IN,HEX_IN				 : std_logic_vector (15 downto 0);
	 signal   DATA_OUT 					 : std_logic_vector (15 downto 0);
	 constant time_delay              : time := 500 ns;
	
	
    BEGIN --start of the simulation logic
	 
    -- Instantiate the Unit Under Test (UUT)
		 uut: MUX_HEXDEC	port map ( 
						DEC_IN     => DEC_IN,
						HEX_IN     => HEX_IN,
						SLIDE      => SLIDE,
						DATA_OUT   => DATA_OUT );
		
            
    -- Stimulus process 
      SIMULATION_STIMULI: process -- this process, in testbench/simulation code, is different than in design code
      begin

		  wait for 0.5*time_delay;	
		  assert false report "MUX_HEXDEC testbench started"; -- puts a note in the ModelSim transcript window (this line is just for convenience)
		  slide <= '1';
		  dec_in <= "0000111100000000"; hex_in <= "0000000011110000";
        wait for time_delay;
		  slide <= '0'; 
		  wait for time_delay;
		  dec_in <= "0101010101010101"; hex_in <= "1111111110101010"; 
        wait for time_delay;
		  slide <= '1';
		  wait for time_delay;
		  dec_in <= "1010101010101010"; hex_in <= "0000000001010101"; 
		  wait for time_delay;
		  slide <= '0'; 	
		  wait for time_delay;
		  dec_in <= "0110011100010001"; hex_in <= "0000000011001100"; 
		  wait for time_delay;
		  slide <= '1';
		  wait for time_delay;
		  dec_in <= "1111000010101010"; hex_in <= "0111111111111111"; 		  
        wait for time_delay;
		  slide <= '0'; 
		  wait for 10*time_delay; -- this extends the time by 10x the time_delay, for ease of veiwing waveforms
		  assert false report "MUX_HEXDEC testbench completed"; -- puts a note in the ModelSim transcript window (this line is just for convenience)
        wait;	-- this wait without any time parameters just stops the simulation, otherwise it would repeat forever starting back at the top  

	   end process;  
 
END;
