library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;
entity VIP_Node_TX is

	generic(N_parents : integer := 10);
    port(		clk: in std_logic;
				reset_n : in std_logic;
				enable_prog : in std_logic;
				addr_out : out std_logic_vector(N_parents downto 0));
end VIP_Node_TX;

architecture A of VIP_Node_TX is

begin

--send: process(clk,reset_n,enable_prog) 
--    variable seed1, seed2: positive;               -- seed values for random generator
--    variable rand1 : real;   -- random real-number value in range 0 to 1.0  
--    variable range_of_rand1 : real := 1023.0;    -- the range of random values created will be 0 to 2pow10.
--	variable rand_num : integer := 0;
--	variable zero : integer :=0;
--begin
--
--uniform(seed1, seed2, rand1);   -- generate random number
--rand_num := integer(rand1*range_of_rand1);  -- rescale to 0..2 pow 10, convert integer part


--    if (clk'event and clk = '1') then
--		if reset_n = '0' then
--			addr_out <= std_logic_vector (to_unsigned(zero,addr_out'length));
--		else 
--			if enable_prog = '0' then
--				addr_out <= std_logic_vector (to_unsigned(rand_num,addr_out'length));	
--			else
--				addr_out <= std_logic_vector (to_unsigned(zero,addr_out'length));
--			end if;
--		end if;
--	end if;
--	end process send ;
	process(clk)
	begin
		if (clk'event and clk = '1') then
			if reset_n = '0' then
			addr_out <= std_logic_vector (to_unsigned(4,addr_out'length));
			else
				if enable_prog = '0' then
					addr_out <= "00000000000";
	
				else
					addr_out <= "00000000000";
			end if;
		end if;
	end if;

	end process;

end A;

