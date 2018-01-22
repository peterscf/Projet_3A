-----------------------------VIP_moy.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 18/12/2017
------------------------------VIP_moy.vhd-----------------------------------------
library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;
--use IEEE.math_real.all;

entity VIP_moy is

    port(	clk: in std_logic;
			reset_n : in std_logic;
			prob_in : in std_logic;
			start_calcule : out std_logic; -- une led a ramener au top
			prob_out : out std_logic_vector (9 downto 0)		
		);
end VIP_moy;

architecture A of VIP_moy is

--signal char_array :std_logic_vector (0 to 3)	;

--function get_ascii_array_from_int(i : integer range 0 to 999) return char_array is
--        variable result : char_array(0 to 3) := (x"30", x"30", x"30"); -- 000
--    begin
--        if i >= 0 then
--            if i < 1000 then
--                result(0) := x"30"; -- 0
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i);
--            elsif i < 2000 then
--                result(0) := x"31"; -- 1
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-100);
--            elsif i < 3000 then
--                result(0) := x"32"; -- 2
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-200);
--            elsif i < 4000 then
--                result(0) := x"33"; -- 3
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-300);
--            elsif i < 5000 then
--                result(0) := x"34"; -- 4
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-400);
--            elsif i < 6000 then
--                result(0) := x"35"; -- 5
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-500);
--            elsif i < 7000 then
--                result(0) := x"36"; -- 6
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-600);
--            elsif i < 8000 then
--                result(0) := x"37"; -- 7
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-700);
--            elsif i < 9000 then
--                result(0) := x"38"; -- 8
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-800);
--            else
--                result(0) := x"39"; -- 9
--                result(1 to 3) := get_ascii_array_from_int_hundreds(i-900);
--            end if;
--        else
--            result := (x"65", x"67", x"23"); -- "neg#" 
--        end if;

--        return result;

--    end get_ascii_array_from_int; 


signal accu_total : integer := 0;
signal accu_one : integer:=0 ;
signal accu_total_vector : std_logic_vector (31 downto 0);
signal accu_one_vector : std_logic_vector (31 downto 0);
signal reset : std_logic;
signal ready : std_logic;
signal quotient : std_logic_vector (31 downto 0);
signal reste : std_logic_vector (31 downto 0); -- déconnecté
signal start : std_logic;


component Diviseur
    Port ( 
    
    Clock            : in  std_logic;
    Reset            : in  std_logic;
    Load            : in  std_logic;
    Numerateur        : in  std_logic_vector(31 downto 0);
    Denominateur      : in  std_logic_vector(31 downto 0);
    Ready              : out std_logic;
    Quotient           : out std_logic_vector(31 downto 0);
    Reste              : out std_logic_vector(31 downto 0)
    
    );
    
end component;

component INV_behavorial 
	port (i : in std_logic; o : out std_logic);
end component;

begin

ACCU:	process(clk,prob_in,reset_n)
begin 
if (clk'event and clk = '1') then
    if reset_n ='0' then
        accu_one <=0;
        accu_total<=0;
        start_calcule <= '0';

    else

	   if prob_in = '1' then 
		  accu_one <= accu_one +1;
	   end if;
	   
	   accu_total <= accu_total +1;
	   
	   if accu_total mod 1000000=0 then
	       start <='1';
	       start_calcule <= '1';
	   else
	       start <='0';
	   end if;
	end if;

end if;
end process;
    
--out calculus


accu_one_vector <= std_logic_vector(to_unsigned(accu_one*1000,32));
accu_total_vector <= std_logic_vector(to_unsigned(accu_total,32));

--i1: INV_behavorial port map (reset_n,Reset);
D1: diviseur port map (clk,reset,start,accu_one_vector,accu_total_vector,ready,quotient,reste);
        


division:	process(clk,ready)
begin 
if (clk'event and clk = '1') then

	if ready= '1' then 
	    
		prob_out <= quotient (9 downto 0);
	end if;

end if;
end process;

--assert accu_total < 1000002.0 report " FIN DE LA SIMULATION" severity failure;


	end A;
