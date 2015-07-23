Library ieee;
Use ieee.std_logic_1164.all;
entity partb is
  port (
    A : in  std_logic_vector(15 downto 0);
    B : in  std_logic_vector(15 downto 0);
    Cin : in std_logic;
    S: in  std_logic_vector(1 downto 0);
    F: out std_logic_vector(15 downto 0)
  );
end entity partb;

architecture whenB of partb is
begin
  F <= A and B when S="00" else
       A or B when S="01"  else
       A xor B when S="10" else
       not A when S="11";
   
end architecture whenB;


