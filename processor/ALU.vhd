Library ieee;
Use ieee.std_logic_1164.all;
entity ALU is
  port (
    A : in  std_logic_vector(15 downto 0);
    B : in  std_logic_vector(15 downto 0);
    Cin : in std_logic;
    S: in  std_logic_vector(3 downto 0);
    F: out std_logic_vector(15 downto 0);
    cout: out std_logic
   
  );
end entity ALU;


architecture when_all of ALU is
  component parta is
  port (
    A : in  std_logic_vector(15 downto 0);
    B : in  std_logic_vector(15 downto 0);
    Cin : in std_logic;
    S: in  std_logic_vector(1 downto 0);
    F: out std_logic_vector(15 downto 0);
    cout: out std_logic
  );
end component parta;

 component partb is
  port (
    A : in  std_logic_vector(15 downto 0);
    B : in  std_logic_vector(15 downto 0);
    Cin : in std_logic;
    S: in  std_logic_vector(1 downto 0);
    F: out std_logic_vector(15 downto 0)
    );
end component partb;

  component partc is
  port (
    A : in  std_logic_vector(15 downto 0);
    B : in  std_logic_vector(15 downto 0);
    Cin : in std_logic;
    S: in  std_logic_vector(1 downto 0);
    F: out std_logic_vector(15 downto 0);
    cout: out std_logic
  );
end component partc;

 component partd is
  port (
    A : in  std_logic_vector(15 downto 0);
    B : in  std_logic_vector(15 downto 0);
    Cin : in std_logic;
    S: in  std_logic_vector(1 downto 0);
    F: out std_logic_vector(15 downto 0);
    cout: out std_logic
  );
end component partd;

signal outa, outb, outc, outd :std_logic_vector (15 downto 0);
signal couta, coutc, coutd :std_logic;
begin
  
  f0:parta port map ( A,B, cin , S(1 downto 0),outa, couta);
  f1:partb port map ( A,B, cin , S(1 downto 0),outb); 
  f2:partc port map ( A,B, cin , S(1 downto 0),outc, coutc);
  f3:partd port map ( A,B, cin , S(1 downto 0),outd, coutd);
    
 F<= outa when s(3 downto 2)="00" else
    outb when s(3 downto 2)="01" else
    outc when s(3 downto 2)="10" else
    outd when s(3 downto 2)="11" ; 
    
     cout<= couta when s(3 downto 2)="00" else
    coutc when s(3 downto 2)="10" else
    coutd when s(3 downto 2)="11" ; 
    
end architecture when_all;


