library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity Fetch is
 
port( 
 clk : in std_logic ;
 --output of buffer bewteen fetch and decode--
 output_FandD: out std_logic_vector (7 downto 0) 

);
       
end Fetch;
      
Architecture m_Fetch  of Fetch  is
component instruction_memory is
port ( clk : in std_logic;
pc : in std_logic_vector(7 downto 0) ;
Instruction_out: out std_logic_vector(7 downto 0) );
end  component;


component Registers is
Generic ( n : integer := 8);
port( Clk,Rst,Enable : in std_logic;
d : in std_logic_vector(n-1 downto 0);
q : out std_logic_vector(n-1 downto 0));      
end  component;

component Tri_State_Buffer is
  Generic ( n : integer := 8);
port( Enable : in std_logic;
Input : in std_logic_vector(n-1 downto 0);
Output : out std_logic_vector(n-1 downto 0));
  end component ;
begin
  
 
end  m_Fetch ;