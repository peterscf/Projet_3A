--https://www.hdlworks.com/hdl_corner/vhdl_ref/VHDLContents/TEXTIOPackage.htm
library IEEE ;
use IEEE.std_logic_1164.ALL ;
--use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
--use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity VIP_Rdm_Gen is
generic(rdm_file : string (21 downto 1) ); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				rdm_gen : out std_logic_vector(9 downto 0));
end VIP_Rdm_Gen;


architecture A of VIP_Rdm_Gen is

function string_hex_to_std_logic_vector( str_hex: character )return std_logic_vector is 
 	variable val : std_logic_vector(3 downto 0);
 begin

        case str_hex is
			when '0' =>val:="0000";
			when '1' =>val:="0001";
			when '2' =>val:="0010"; 
			when '3' =>val:="0011"; 
			when '4' =>val:="0100"; 
			when '5' =>val:="0101";
			when '6' =>val:="0110";
			when '7' =>val:="0111"; 
			when '8' =>val:="1000";
			when '9' =>val:="1001";
			when 'A' =>val:="1010"; 
			when 'B' =>val:="1011";
			when 'C' =>val:="1100";
			when 'D' =>val:="1101"; 
			when 'E' =>val:="1110";
			when 'F' =>val:="1111";
			when others =>val:="0000"; --a modifier plus tard
		end case;
    return val;
end string_hex_to_std_logic_vector ;

function string_to_slv(str :string (3 downto 1)) return std_logic_vector is 
 variable val_std : std_logic_vector(11 downto 0);
 begin
	val_std(11 downto 8):= string_hex_to_std_logic_vector(str(3));
 	val_std(7 downto 4):= string_hex_to_std_logic_vector(str(2));
	val_std(3 downto 0):= string_hex_to_std_logic_vector(str(1));

	return val_std(9 downto 0);
end string_to_slv;

begin
	


---- Calcul et Ecriture+Lecture des echantillons et sinus
 LECTURE_X: process
	variable L: line;
	file ENTREES : text open read_mode is rdm_file;
	variable LIGNE: LINE;	 -- variables à lire
	variable val_hex: string (3 downto 1);
	variable i: integer :=0;

  begin
  --if sig_resetn ='1'then
     while(not(endfile(ENTREES))) loop
		readline(ENTREES,LIGNE);
		read(LIGNE,val_hex);
--appel fonction convertion hex vers std_logic_vector
		wait until clk'event and clk = '1';
			rdm_gen<=string_to_slv(val_hex);
		report "  >>>>>>>>>>> rdm =" & integer'image(i);
		i:=i+1;
		end loop; --while
		wait;
	--end if;
  end process LECTURE_X;
end A;
