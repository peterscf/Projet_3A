-----------------------------VIP_moy.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 18/12/2017
------------------------------VIP_moy.vhd-----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity VIP_moy is

    port(	clk: in std_logic;
			reset_n : in std_logic;
			end_prog : in std_logic;
			prob_in : in std_logic;
			prob_out : out real			
		);
end VIP_moy;

architecture A of VIP_moy is
signal accu_total : real :=0.0;
signal accu_one : real := 0.0;

begin

ACCU:	process(clk,prob_in,end_prog)
begin
if end_prog = '1' then
	if (clk'event and clk = '1') then

		if prob_in = '1' then 
			accu_one <= accu_one +1.0;
		end if;
		accu_total <= accu_total +1.0;

	end if;
else
	accu_one <= 0.0;
	accu_total <= 0.0;
end if;

end process;

--out calculus
process (accu_total)
begin
	if accu_total > 1.0 then 
		prob_out <= accu_one / accu_total;
	end if;
end process;
	
	assert accu_total < 10000002.0 report " FIN DE LA SIMULATION" severity failure;


	end A;
