library IEEE; -- depuis internet
use IEEE.Std_Logic_1164.all;
use IEEE.Std_Logic_arith.all;
use IEEE.Std_Logic_unsigned.all;
 
Entity Diviseur Is
    port(
        Clock            : in  std_logic;
        Reset            : in  std_logic;
        Load            : in  std_logic;
        Numerateur        : in  std_logic_vector(31 downto 0);
        Denominateur      : in  std_logic_vector(31 downto 0);
        Ready              : out std_logic;
        Quotient           : out std_logic_vector(31 downto 0);
        Reste              : out std_logic_vector(31 downto 0)
        );
end;
 
architecture Diviseur_RTL of Diviseur is
 
 
constant ALL_ZERO    : std_Logic_vector(31 downto 0) := "00000000000000000000000000000000";
signal     ni        : std_logic_vector(63 downto 0);
signal     sub       : std_logic_vector(63 downto 0);
signal     n         : std_logic_vector(63 downto 0);
signal     i         : std_logic_vector(63 downto 0);
signal     d         : std_logic_vector(63 downto 0);
signal     d_int     : std_logic_vector(31 downto 0);
signal     counter   : std_logic_vector(5 downto 0);
--    attribute syn_keep : boolean;
--    attribute syn_keep of d_int, N : signal is true;
signal     ReadTempo         : Std_Logic;
 
begin
 
    Ready <= ReadTempo;
 
    NI(63 downto 0)        <= ALL_ZERO & Numerateur;
    D(30 downto 0)    <= "0000000000000000000000000000000";
    D(62 downto 31)    <= d_int;
    D(63)        <= '0';
    Quotient        <=n(31 downto 0);
    Reste        <=n(63 downto 32);
    
    Process(Reset, ReadTempo, n ,d )
    Begin
        If Reset = '1' Then
            sub <= (Others=>'0');
        ElsIf ReadTempo = '0' Then
            sub<= n - d;
        Else
            sub <= (Others=>'0');
        End If;
    End Process;
    
    Process(clock, reset, ReadTempo)
    begin
        If Reset = '1' Then
            n(63 downto 0) <= (Others=>'0');
            D_Int(31 downto 0) <= (others=>'0');
        ElsIf Rising_Edge(Clock) Then
            If load='1' Then
                n(63 downto 0) <= NI(63 downto 0);
                D_int(31 downto 0) <= Denominateur(31 downto 0);
            Else    
                If ReadTempo ='0' Then
                    n(63 downto 0)    <= I(63 downto 0);
                End If;
            End If;
        End If;
    End Process;
 
    Process(Reset, Sub, n, ReadTempo)
    Begin
        If Reset = '1' Then
            I <=  (others=>'0');
        ElsIf ReadTempo ='0' Then
            If Sub(47)='1' Then
                I(0)    <='0';
                I(63 Downto 1)    <= N(62 Downto 0);
            Else
                I(0)    <='1';
                I(63 Downto 1)    <= Sub(62 Downto 0);
            End If;
         Else
            I <=  (others=>'0');
         End If;
    End process;
 
    Process(clock,reset)
    Begin
        If Reset = '1' Then
            counter    <="111111";
            ReadTempo        <= '0';
        ElsIf Rising_Edge(Clock) Then
            If Load = '1' Then
                Counter    <= (Others=>'0');
                ReadTempo    <= '0';
            Else    
                If counter="011111" Then
                    counter    <="111111";
                    ReadTempo        <= '1';
                Elsif counter="011110" Then
                    counter    <=counter+'1';
                    ReadTempo        <= '0';
                Elsif counter="111111" Then
                    ReadTempo        <='1';
                Else
                    counter    <=counter+'1';
                    ReadTempo        <='0';
                End if;    
            End If;    
        End If;
    End Process;
End;