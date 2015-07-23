Library ieee;
Use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
Entity Registers is
 Generic ( n : integer := 8);
port( Clk,Rst,Enable : in std_logic;
d : in std_logic_vector(n-1 downto 0);
q : out std_logic_vector(n-1 downto 0));
       
end  Registers;
      
Architecture m_Registers of Registers is
begin
  Process (Clk,Rst)
begin
if Rst = '1' then
q <= (others=>'0');
elsif rising_edge(Clk) and Enable='1' then
q <= d;
end if;
end process;

 
end m_Registers;