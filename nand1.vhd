Library ieee;
Use ieee.std_logic_1164.all;

Entity nand1 is
 port( a,b : in std_logic;
      F : out std_logic
      
    ); 
      end nand1;

Architecture m_nand of nand1 is
begin
  
  F<= not (a and b);
  
  end m_nand;