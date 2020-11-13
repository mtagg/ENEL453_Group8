-- Calculates the moving average of 256 samples of 12-bit data
-- Authors: Dan Tran and Ranbir Briar, ENEL 453 students F2019

-- Note, use Q_high_res if you need it. Uncomment in 3 places.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity averager256 is

   generic( -- Note, these are the generic default values. The actual values are in the instantiation generic map.
				  N    : INTEGER := 8; -- 8; -- log2(number of samples to average over), e.g. N=8 is 2**8 = 256 samples 
				  X    : INTEGER := 4; -- X = log4(2**N), e.g. log4(2**8) = log4(4**4) = log4(256) = 4 (bit of resolution gained)
				  bits : INTEGER := 11 -- number of bits in the input data to be averaged, plus bit 0
		  );    
   port (
			clk     	: in  std_logic;
			EN      	: in  std_logic; -- takes a new sample when high for each clock cycle
			reset_n 	: in  std_logic; -- active-low
			Din     	: in  std_logic_vector(bits downto 0); -- input sample for moving average calculation
			Q      	: out std_logic_vector(bits downto 0)  -- 12-bit moving average of 256 samples
        -- Q_high_res :  out std_logic_vector(X+bits downto 0) -- (4+11 downto 0) -- first add (i.e. X) must match X constant in ADC_Data  
        );                                                -- moving average of ADC with additional bits of resolution:
   end averager256;                                       -- 256 average can give an additional 4 bits of ADC resolution, depending on conditions
                                                          -- so you get 12-bits plus 4-bits = 16-bits (is this real?)
architecture rtl of averager256 is

		subtype REG is std_logic_vector(bits downto 0);				
		type Register_Array is array (natural range <>) of REG;
		signal REG_ARRAY  : Register_Array(2**N downto 1);		 -- create signal 2D-array : (2**N) * 12 bit registers, ie. 256 - 12bit registers 

		type temporary is array(integer range <>) of integer;
		signal tmp 			: temporary((2**N)-1 downto 1);		 -- create temp 1D-array   : (2**N - 1) integer array						
		signal tmplast 	: std_logic_vector(2**N-1 downto 0); -- 256-bit signal - will be given the 256 bits at index 255 of "tmp" to be delivered to Q(output)
		

		constant Zeros		: STD_LOGIC_VECTOR(11 downto 0) := (others => '0'); -- 12-bits of '0' used for reset functionality

begin

   shift_reg : process(clk, reset_n)
			begin	
				if(reset_n = '0') then     						-- start reset behaviour              		
				
						LoopA1: for i in 1 to 2**N loop			-- set all average values 0, therefore, setting Q (output) to 0
								REG_ARRAY(i) <= Zeros;
						end loop LoopA1;
						
						Q 	<= (others => '0');
						-- Q_high_res <= (others => '0');		-- end reset behaviour
						
				elsif rising_edge(clk) then							-- behaviour if reset is NOT enabled (normal operation)
						if EN = '1' then	
									
							REG_ARRAY(1) <= Din;							-- every rising clock edge,  udpate first register in REG_ARRAY with the current real data - Din
							
							LoopA2: for i in 1 to 2**N-1 loop	
								REG_ARRAY(i+1) <= REG_ARRAY(i);		-- every rising clock edge, shift the new Din value to the top of REG_ARRAY
								end loop LoopA2;
	
							Q     <= tmplast(N+bits downto N); 		-- every rising clock edge, output average: Q is updated with tmplast(19 downto 8) (with 8 bits left over, lol, wut?) 
							-- Q_high_res <= tmplast(N+bits downto N-X);
						
						end if;
				end if;
			end process shift_reg;												-- end clock edge driven behaviour
   

		
   LoopB1: for i in 1 to (2**N)/2  generate 					 -- loop through tmp(128 downto 1)
		tmp(i) <= 0 when reset_n = '0'
      else (to_integer(unsigned(REG_ARRAY((2*i)-1)))  + to_integer(unsigned(REG_ARRAY(2*i))))	when rising_edge(clk) else tmp(i);
	end generate LoopB1;		
   
	
	
	LoopB2: for i in ((2**N)/2)+1 to ((2**N) -1) generate		-- loop through tmp (255 downto 129
		tmp(i) <= 0 when reset_n = '0'
		else (tmp(2*(i-(2**N)/2)) + tmp(2*(i-(2**N)/2) - 1)) when rising_edge(clk) else tmp(i);
   end generate LoopB2;

	
	
   tmplast <= std_logic_vector(to_unsigned(tmp((2**N)-1), tmplast'length)); 
	--convert top index of tmp into a vector of tmplast's length and pass to tmplast
      
end rtl;
