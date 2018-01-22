--OBSELETE



library ieee;  
use ieee.std_logic_1164.all; -- ici mettre la library des operators

entity MUX_analogique is port( -- le device décrit danc ce fichier
	a,b in std_logic;
	com in std_logic;
	o out std_logic;
end MUX_analogique;

use work.gatespkg.all; -- ici mettre la library des cellules standards appelées

architecture struct_MUX of MUX_analogique is

component porte_transfert -- ici mettre le nom d'une cellule porte de transfert
	port (a,c : in std_logic; o : out std_logic);
end component;

component inverseur -- ici mettre le nom d'une cellule inversseur
	port (a : in std_logic; o : out std_logic);
end component;


signal com_inv : std_logic;

begin
	p1: porte_transfert port map (a,com_inv,o); --ici mettre les nom des cullules standards appelées
	p2: porte_transfert port map (b,com,o);
	i1: inverseur port map (com,com_inv);
end struct_MUX;




