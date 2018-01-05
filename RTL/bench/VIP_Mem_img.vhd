--https://www.hdlworks.com/hdl_corner/vhdl_ref/VHDLContents/TEXTIOPackage.htm
library IEEE ;
use IEEE.std_logic_1164.ALL ;
--use ieee.std_logic_signed.all;
use ieee.std_logic_arith.all;
--use ieee.numeric_std.all;
use ieee.math_real.all;
use ieee.std_logic_textio.all;
use std.textio.all;

entity VIP_Mem_img is
	generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				send_MEM: in std_logic;
				send_GW : in std_logic;
				MEM_out: out std_logic_vector(11 downto 0);
				GW_out: out std_logic_vector (11 downto 0));
end VIP_Mem_img;


architecture A of VIP_Mem_img is
	
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

	return val_std(11 downto 0);
end string_to_slv;

begin

	
---- Calcul et Ecriture+Lecture des echantillons et sinus
 LECTURE_MEM: process
	variable L: line;
	file ENTREES : text open read_mode is "./bench/Alarm/MEM.img";
	variable LIGNE: LINE;	 -- variables à lire
	variable val_hex: string (3 downto 1);
	variable i: integer :=0;

  begin
	  wait until send_MEM'event and send_MEM ='1';
     while(not(endfile(ENTREES))) loop
		readline(ENTREES,LIGNE);
		read(LIGNE,val_hex);
--appel fonction convertion hex vers std_logic_vector
		wait until clk'event and clk = '1';
			MEM_out<=string_to_slv(val_hex);
		--report "  >>>>>>>>>>> rdm =" & integer'image(i);
		--i:=i+1;
		end loop; --while
	--end if;
  end process LECTURE_MEM;


---- Calcul et Ecriture+Lecture des echantillons et sinus
 LECTURE_GW: process
	variable L: line;
	file ENTREES : text open read_mode is "./bench/Alarm/GW.img";
	variable LIGNE: LINE;	 -- variables à lire
	variable val_hex: string (3 downto 1);
	variable i: integer :=0;

  begin
  --if sig_resetn ='1'then
	  wait until send_GW'event and send_GW ='1';
     while(not(endfile(ENTREES))) loop
		readline(ENTREES,LIGNE);
		read(LIGNE,val_hex);
--appel fonction convertion hex vers std_logic_vector
		wait until clk'event and clk = '1';
			GW_out<=string_to_slv(val_hex);
		--report "  >>>>>>>>>>> rdm =" & integer'image(i);
		--i:=i+1;
		end loop; --while
		wait;
	--end if;
  end process LECTURE_GW;
end A;

