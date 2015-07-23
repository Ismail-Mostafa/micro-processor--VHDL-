Library ieee;
Use ieee.std_logic_1164.all;
entity partc is
  port (
    A : in  std_logic_vector(15 downto 0);
    B : in  std_logic_vector(15 downto 0);
    Cin : in std_logic;
    S: in  std_logic_vector(1 downto 0);
    F: out std_logic_vector(15 downto 0);
    Cout: out std_logic
  );
end entity partc;

architecture whenc of partc is
  
begin
  F<= "0" & A(15 downto 1) when S="00" else
      A(0) & A(15 downto 1)when S="01" else
      Cin & A(15 downto 1)when S="10" else
      A(15)& A(15 downto 1)when S="11";
 Cout<= A(0);   
end architecture whenc;



