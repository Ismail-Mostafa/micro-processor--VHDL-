library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity pc is
 
port( 
 clk, rst ,enable : in std_logic ;
 output_pc: out std_logic_vector (7 downto 0) 

);
       
end pc;

Architecture m_pc  of pc  is
signal a : std_logic_vector (7 downto 0):= "00000000";
signal b : std_logic_vector (7 downto 0);
signal c: std_logic_vector (7 downto 0);
signal cin,cout:std_logic:='0';
begin
  
b<= "00000001" when rising_edge(clk)
 else "00000000" ;
  
   loop1: for i in 0 to 7 generate
 c(i) <= a(i) xor b(i) xor cin  ; 
 cout <= (a(i) and b(i)) or (cin and (a(i) xor b(i)));
cout<=cin;

end generate;

output_pc<=a;

end  m_pc ;