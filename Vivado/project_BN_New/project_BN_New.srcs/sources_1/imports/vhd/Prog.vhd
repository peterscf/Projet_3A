------------------------------VIP_prog.vhd-----------------------------------------
--Author: Floriant PETERSCHMITT
--Version: 18/12/2017
------------------------------VIP_prog.vhd-----------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
--use IEEE.std_logic_arith.all;
use IEEE.numeric_std.all;

entity prog is
	generic(N_parents : integer := 10); 

    port(		clk: in std_logic;
				reset_n : in std_logic;
				enable_prog : in std_logic;
				prog: out  std_logic;
      			Wen : out std_logic;
      			full_in : in std_logic;
      			prog_link_out : out std_logic_vector(N_parents downto 0);
      			prob_out : out std_logic_vector (9 downto 0);
      			triger_count : out std_logic
		);
end prog;

architecture A of prog is
type STATE is (Idle,Init_Prog_MEM,Prog_MEM,Prog_GW,Init_Prog_GW,wait_prog_GW);
signal current_state : STATE;
signal next_state : STATE;

signal index : integer:=0;
signal index_temp : integer:=0 ;
signal sig_clk: std_logic;
signal sig_reset_n: std_logic;
signal sig_send_MEM :std_logic;
signal sig_send_GW: std_logic;
signal sig_MEM_out: std_logic_vector(11 downto 0);
signal sig_GW_out : std_logic_vector(11 downto 0);


type MEM is array (0 to 191) of std_logic_vector(11 downto 0);
type MEM_PROG is array (0 to 29) of std_logic_vector(11 downto 0);

--image de la programation des GATEWAY
constant Prog_link : MEM_PROG :=(0=>X"000",  1=>X"000",  2=>X"000",  3=>X"000",  4=>X"000",  5=>X"000",  6=>X"000",  7=>X"000",  8=>X"000",  9=>X"000",  10=>X"000",  11=>X"000",  12=>X"000",  13=>X"000",  14=>X"000",  15=>X"000",  16=>X"000",  17=>X"000",  18=>X"001",  19=>X"000",  20=>X"000",  21=>X"000",  22=>X"000",  23=>X"000",  24=>X"000",  25=>X"000",  26=>X"000",  27=>X"000",  28=>X"000",  29=>X"000");

constant Prog_MEM_data : MEM :=(0=>X"00A", 1=>X"2BC", 2=>X"00A", 3=>X"2BC", 4=>X"00A", 5=>X"2BC", 6=>X"00A", 7=>X"2BC", 8=>X"00A", 9=>X"2BC", 10=>X"00A", 11=>X"2BC", 12=>X"00A", 13=>X"2BC", 14=>X"00A", 15=>X"2BC", 16=>X"00A", 17=>X"2BC", 18=>X"00A", 19=>X"2BC", 20=>X"00A", 21=>X"2BC", 22=>X"00A", 23=>X"2BC", 24=>X"00A", 25=>X"2BC", 26=>X"00A", 27=>X"2BC", 28=>X"00A", 29=>X"2BC", 30=>X"00A", 31=>X"2BC", 32=>X"032", 33=>X"384", 34=>X"032", 35=>X"384", 36=>X"032", 37=>X"384", 38=>X"032", 39=>X"384", 40=>X"032", 41=>X"384", 42=>X"032", 43=>X"384", 44=>X"032", 45=>X"384", 46=>X"032", 47=>X"384", 48=>X"032", 49=>X"384", 50=>X"032", 51=>X"384", 52=>X"032", 53=>X"384", 54=>X"032", 55=>X"384", 56=>X"032", 57=>X"384", 58=>X"032", 59=>X"384", 60=>X"032", 61=>X"384", 62=>X"032", 63=>X"384", 64=>X"000", 65=>X"000", 66=>X"000", 67=>X"000", 68=>X"000", 69=>X"000", 70=>X"000", 71=>X"000", 72=>X"000", 73=>X"000", 74=>X"000", 75=>X"000", 76=>X"000", 77=>X"000", 78=>X"000", 79=>X"000", 80=>X"000", 81=>X"000", 82=>X"000", 83=>X"000", 84=>X"000", 85=>X"000", 86=>X"000", 87=>X"000", 88=>X"000", 89=>X"000", 90=>X"000", 91=>X"000", 92=>X"000", 93=>X"000", 94=>X"000", 95=>X"000", 96=>X"001", 97=>X"3AC", 98=>X"122", 99=>X"3B6", 100=>X"001", 101=>X"3AC", 102=>X"122", 103=>X"3B6", 104=>X"001", 105=>X"3AC", 106=>X"122", 107=>X"3B6", 108=>X"001", 109=>X"3AC", 110=>X"122", 111=>X"3B6", 112=>X"001", 113=>X"3AC", 114=>X"122", 115=>X"3B6", 116=>X"001", 117=>X"3AC", 118=>X"122", 119=>X"3B6", 120=>X"001", 121=>X"3AC", 122=>X"122", 123=>X"3B6", 124=>X"001", 125=>X"3AC", 126=>X"122", 127=>X"3B6", 128=>X"014", 129=>X"014", 130=>X"014", 131=>X"014", 132=>X"014", 133=>X"014", 134=>X"014", 135=>X"014", 136=>X"014", 137=>X"014", 138=>X"014", 139=>X"014", 140=>X"014", 141=>X"014", 142=>X"014", 143=>X"014", 144=>X"014", 145=>X"014", 146=>X"014", 147=>X"014", 148=>X"014", 149=>X"014", 150=>X"014", 151=>X"014", 152=>X"014", 153=>X"014", 154=>X"014", 155=>X"014", 156=>X"014", 157=>X"014", 158=>X"014", 159=>X"014", 160=>X"00A", 161=>X"00A", 162=>X"00A", 163=>X"00A", 164=>X"00A", 165=>X"00A", 166=>X"00A", 167=>X"00A", 168=>X"00A", 169=>X"00A", 170=>X"00A", 171=>X"00A", 172=>X"00A", 173=>X"00A", 174=>X"00A", 175=>X"00A", 176=>X"00A", 177=>X"00A", 178=>X"00A", 179=>X"00A", 180=>X"00A", 181=>X"00A", 182=>X"00A", 183=>X"00A", 184=>X"00A", 185=>X"00A", 186=>X"00A", 187=>X"00A", 188=>X"00A", 189=>X"00A", 190=>X"00A", 191=>X"00A");
begin

P_STATE: process(clk) begin
    
    if (clk'event and clk = '1') then
		if reset_n = '0' then
			current_state <= Idle; 
			index<=0;
		else 
			index <= index_temp;
			current_state<=next_state;
		end if;
	end if;
	end process P_state ;


	P_Next_State_output : process (enable_prog, full_in,index, current_state)
		variable temp : std_logic_vector (11 downto 0);

begin
	   
	      		prog	<= '0';
				sig_send_MEM <='0';
				sig_send_GW <='0';
      			Wen		<= '0';
      			triger_count <= '0';
      			
			case current_state is								
						  	when Idle =>
								triger_count <= '1';
								index_temp <= 0;
						  		if enable_prog = '1' then
									next_state <= Init_Prog_MEM; 
								else
									next_state <= current_state;
								end if;
								
								
							when Init_Prog_MEM =>
								Wen <= '1';
								sig_send_MEM <='1';
								next_state <= Prog_MEM;
								index_temp <= 0;
								--next_state <= Prog_MEM;
						  							  	
							when Prog_MEM => 
								Wen <='1';
								temp:= Prog_MEM_data(index);
								Prob_out <= temp(9 downto 0);
								index_temp <= index + 1;
								--if index = 31 then 
								--	index_temp <= 0;
								--end if;

								if full_in ='1' then 
									next_state <= wait_prog_GW; 
								else
									next_state <= current_state;
								end if;
								--index_temp <= index + 1;

							when wait_Prog_GW =>
								index_temp <= 0;
								if full_in = '0' then
									next_state <= Init_Prog_GW;
								else 
									next_state <= current_state;
								end if;
								
							when Init_Prog_GW =>
								Prog <= '1';
								index_temp <= 0;
								sig_send_GW <='1';
								next_state <= Prog_GW;

							when Prog_GW => 
							--	sig_send_GW <='1';
								Prog <='1';
								temp := Prog_link(index);
								Prog_link_out <= temp(N_parents downto 0);
								index_temp <= index + 1;
								--if index = 5 then 
								--	index_temp <= 0;
								--end if;

								if full_in = '1' then --and enable_prog = '0' then
									next_state <= Idle; 
								else
									next_state <= current_state;
								end if;
								--index_temp <= index + 1;
				end case; 			
	end process P_Next_State_output;
end A;
