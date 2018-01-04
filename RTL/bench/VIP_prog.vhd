------------------------------VIP_prog.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 18/12/2017
------------------------------VIP_prog.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity VIP_prog is
	generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				enable_prog : in std_logic;
				prog: out  std_logic;
      			Wen : out std_logic;
      			full_in : in std_logic;
      			prog_link_out : out std_logic_vector(N_parents downto 0);
      			prob_out : out std_logic_vector (9 downto 0)
		);
end VIP_prog;

architecture A of VIP_prog is
type STATE is (Idle,Init_Prog_MEM,Prog_MEM,Prog_GW,Init_Prog_1_GW,Init_Prog_2_GW);
signal current_state : STATE;
signal next_state : STATE;

signal index : integer:=4;
signal index_temp : integer:=4 ;

type MEM is array (0 to 32) of std_logic_vector(11 downto 0);
type MEM_PROG is array (0 to 5) of std_logic_vector(N_parents+1 downto 0);
--Image de la memoire d'un noeud
constant Prog_MEM_prod: MEM:=(0=>X"000",	1=>X"001",	2=>X"002",	3=>X"003",	4=>X"004",	5=>X"005",	6=>X"006",	7=>X"007",	8=>X"008",	9=>X"009",	10=>X"00A",	11=>X"00B",	12=>X"00C",	13=>X"00D",	14=>X"00E",	15=>X"00F",	16=>X"010",	17=>X"011",	18=>X"012",	19=>X"013",	20=>X"014",	21=>X"015",	22=>X"016",	23=>X"017",	24=>X"018",	25=>X"019",	26=>X"01A",	27=>X"01B",	28=>X"01C",	29=>X"01D",	30=>X"01E",	31=>X"01F", 32=>X"020");
--image de la programation des GATEWAY
constant Prog_link : MEM_PROG :=(0=>X"000",	1=>X"001",	2=>X"002",	3=>X"003",	4=>X"004",	5=>X"005");
begin
	
	P_STATE: process(clk) begin
    
    if (clk'event and clk = '1') then
		if reset_n = '0' then
			current_state <= Idle; 
			index<=4;
		else 
			index <= index_temp;
			current_state<=next_state;
		end if;
	end if;
	end process P_state ;

--	index_loop : process (index)
--	begin
--		if index = 32 then 
--			index_temp <= 0;
--		end if;
--	end process index_loop;


	P_Next_State_output : process (enable_prog, full_in,index, current_state)
		variable temp : std_logic_vector (11 downto 0);

begin
	   
	      		prog	<= '0';
      			Wen		<= '0';
			case current_state is								
						  	when Idle =>
								--index_temp <= 0;
						  		if enable_prog = '1' then
									next_state <= Init_Prog_MEM; 
								else
									next_state <= current_state;
								end if;
								
							when Init_Prog_MEM =>
								Wen <= '1';
								next_state <= Prog_MEM;
								index_temp <= 0;
								--next_state <= Prog_MEM;
						  							  	
							when Prog_MEM => 
								Wen <='1';
								temp:= Prog_MEM_prod(index);
								Prob_out <= temp(9 downto 0);
								index_temp <= index + 1;
								if index = 31 then 
									index_temp <= 0;
								end if;

								if full_in ='1' then 
									next_state <= Init_Prog_1_GW; 
								else
									next_state <= current_state;
								end if;
								--index_temp <= index + 1;

							when Init_Prog_1_GW =>
								Prog <= '0';
								index_temp <= 0;
								next_state <= Init_Prog_2_GW;
							
							when Init_Prog_2_GW =>
								Prog <= '1';
								index_temp <= 0;
								next_state <= Prog_GW;

							when Prog_GW => 
								Prog <='1';
								temp := Prog_link(index);
								Prog_link_out <= temp(10 downto 0);
								index_temp <= index + 1;
								if index = 5 then 
									index_temp <= 0;
								end if;

								if full_in <= '1' then
									--next_state <= Idle; 
								else
									next_state <= Prog_GW;
								end if;
								--index_temp <= index + 1;
				end case; 			
	end process P_Next_State_output;
end A;
