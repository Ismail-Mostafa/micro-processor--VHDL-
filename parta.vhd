Library ieee;
Use ieee.std_logic_1164.all;

entity parta is
  port (
    A : in  std_logic_vector(15 downto 0);
    B : in  std_logic_vector(15 downto 0);
    Cin : in std_logic;
    S: in  std_logic_vector(1 downto 0);
    F: out std_logic_vector(15 downto 0);
    cout: out std_logic
  );
end entity parta;

architecture whenaa of parta is
  Component Full_adder is
 Generic (n : integer := 16);
  PORT (a, b : in std_logic_vector(n-1 downto 0) ;
  cin : in std_logic;
  s : out std_logic_vector(n-1 downto 0);
  cout : out std_logic);
    end Component;
    
 
 signal out1 : std_logic_vector(15 downto 0);


begin
 
f0 : Full_adder port map(A,out1,cin,F,cout);
  
  out1<= "0000000000000000" when s="00" else
      B when s="01"  else
      not B when s="10"  else
      "1111111111111111" when s="11" and cin='0' else
      not A when s="11" and cin='1';
      
  
     
  
  end architecture whenaa;
  