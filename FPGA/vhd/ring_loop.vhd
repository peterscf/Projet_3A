library ieee;  
use ieee.std_logic_1164.all; -- ici mettre la library

entity ring_loop is port( -- le device décrit danc ce fichier
	clk, clk_delay in std_logic;
	o out std_logic;
end ring_loop;

use work.gatespkg.all; -- ici mettre la library des cellules standards appelée

architecture struct_ring_loop of ring_loop is

component MUX_analogique -- ici mettre le nom d'une cellule porte de transfert
	port (a,b,com : in std_logic; o : out std_logic);
end component;

component inverseur -- ici mettre le nom d'une cellule inverseur
	port (a : in std_logic; o : out std_logic);
end component;

component registre -- ici mettre le nom d'une cellule registre
	port (D,clk : in std_logic; Q,Q_bare : out std_logic);
end component;

component xor2 -- ici mettre le nom d'une cellule registre
	port (a,b : in std_logic; o : out std_logic);
end component;


signal mux1,mux2,mux3,mux4,mux5,inv1,inv2,inv3,inv4,inv4,inv5 : std_logic;
signal q1,q2,q3,q4,x1,x2 :std_logic;

begin
	m1: MUX_analogique port map (inv1,inv5,clk,mux1);
	m2: MUX_analogique port map (inv2,inv1,clk,mux2);
	m3: MUX_analogique port map (inv3,inv2,clk,mux3);
	m4: MUX_analogique port map (inv4,inv3,clk,mux4);
	m5: MUX_analogique port map (inv5,inv4,clk,mux5);
	i1: inverseur port map (mux1,inv1);
	i2: inverseur port map (mux2,inv2);
	i3: inverseur port map (mux3,inv3);
	i4: inverseur port map (mux4,inv4);
	i5: inverseur port map (mux5,inv5);

--	r1: registre port map (inv5,clk_delay,o,);

	r1: registre port map (inv5,clk_delay,q1,);
	r2: registre port map (x1,clk_delay,q2,);
	r3: registre port map (x2,clk_delay,q3,);
	r4: registre port map (q3,clk_delay,o,);

	xo1: xor2 port map (q3,q1,x1);
	xo2: xor2 port map (q3,q2,x2);

end struct_ring_loop;




