library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity VIP_Node_RX is
	generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				prog : in std_logic;
				Wen : in std_logic;
				prog_link_in : std_logic_vector(N_parents downto 0);
				data_in : std_logic_vector(9 downto 0);
				full_out : out std_logic);
end VIP_Node_RX;


architecture A of VIP_Node_RX is

begin

	process (Wen , prog)
	variable i : integer;
	begin
		if prog ='1' then 
			if prog_link_in'event then 
				i:= i+1;
			end if;
			if i=5 then 
				full_out <= '1';
			end if;
		elsif Wen = '1' then 
			if data_in'event then 
				i:= i+1;
			end if;
			if i=32 then 
				full_out <= '1';
			end if;
		else
			full_out <='0';
			i:=0;
		end if;


	
	end process;
end A;

