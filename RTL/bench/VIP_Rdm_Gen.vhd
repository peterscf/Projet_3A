library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
use IEEE.math_real.all;

entity VIP_Rdm_Gen is
	--generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				data_in : out std_logic_vector(9 downto 0));
end VIP_Rdm_Gen;


architecture A of VIP_Rdm_Gen is

begin
	
end A;
