-----------------------------VIP_moy.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 24/01/2018
--Description: VIP qui emule un noeud en sortie du noeud sous test pour la partie
--programmation envoi full des que 32 valeur sont arriver
------------------------------VIP_moy.vhd-----------------------------------------

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
				prog_link_in : in std_logic_vector(N_parents downto 0);
				data_in : in std_logic_vector(9 downto 0);
				full_out : out std_logic);
end VIP_Node_RX;


architecture A of VIP_Node_RX is

begin

	process (Wen , prog, data_in, prog_link_in,clk)
	variable i : integer;
	begin	
		full_out <='0';
		if prog ='1' then
			if prog_link_in'event then --or (clk'event and clk='1') then 
				i:= i+1;
			end if;
			if i>4 then --compte 5 et envoi full
				full_out <= '1';
			--	i:=0;
			end if;
		elsif Wen = '1' then 
			if data_in'event or (clk'event and clk='1')then 
				i:= i+1;
			end if;
			if i>31 then --compte 32 taille mémoire et envoi full
				full_out <= '1' ;
				--i:=-1;
			end if;
		else
			full_out <='0';
			i:=-1;
		end if;


	
	end process;
end A;

