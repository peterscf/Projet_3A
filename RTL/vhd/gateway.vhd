------------------------------gateway.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 11/12/2017
------------------------------gateway.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity GATEWAY is
	generic(N_parents : integer); 

    port(		reset_n : in std_logic;
		--Port entree
				prog_link : std_logic_vector(N_parents downto 0);
				addr_in : in std_logic_vector(N_parents downto 0);	
		--Port de sortie				
				addr_out : in std_logic_vector(4 downto 0)
			
			);
end GATEWAY;

architecture A of GATEWAY is

	signal prog_link_reg_1 : std_logic_vector(N_parents downto 0);
	signal prog_link_reg_2 : std_logic_vector(N_parents downto 0);
	signal prog_link_reg_3 : std_logic_vector(N_parents downto 0);
	signal prog_link_reg_4 : std_logic_vector(N_parents downto 0);
	signal prog_link_reg_5 : std_logic_vector(N_parents downto 0);

begin

	addr_out(0) <= addr_in(to_integer(unsigned(prog_link_reg_1)));
	addr_out(1) <= addr_in(to_integer(unsigned(prog_link_reg_2)));
	addr_out(2) <= addr_in(to_integer(unsigned(prog_link_reg_3)));
	addr_out(3) <= addr_in(to_integer(unsigned(prog_link_reg_4)));
	addr_out(4) <= addr_in(to_integer(unsigned(prog_link_reg_5)));

end A;
