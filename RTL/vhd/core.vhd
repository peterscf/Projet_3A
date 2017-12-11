------------------------------core.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 11/12/2017
------------------------------core.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity CORE is

generic(  Nb: integer; --nb bits bus entree
				);

    port(   clk: in std_logic;
            reset_n : in std_logic;
						
				);
end CORE;

architecture A of CORE is

begin


end A;
