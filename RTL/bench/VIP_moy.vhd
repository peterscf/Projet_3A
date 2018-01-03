-----------------------------VIP_moy.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 18/12/2017
------------------------------VIP_moy.vhd-----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity VIP_moy is

    port(	clk: in std_logic;
			reset_n : in std_logic;
			prob_in : in std_logic;
			prob_out : out integer			
		);
end VIP_moy;

architecture A of VIP_moy is
signal accu_total : integer :=0;
signal accu_one : integer := 0;

begin

ACCU:	process(prob_in)
begin 
	if prob_in = '1' then 
		accu_one <= accu_one +1;
	end if;
	accu_total <= accu_total +1;
end process;

--out calculus

prob_out <= accu_one / accu_total;


	end A;
