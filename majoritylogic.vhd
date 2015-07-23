Library ieee;
Use ieee.std_logic_1164.all;

Entity majoritylogic is
 port( a,b,c : in std_logic;
      F : out std_logic
      
    ); 
      
      end majoritylogic;

Architecture m_majoritylogic of majoritylogic is
  
  Component nand1 is
 port( a,b : in std_logic;
      F : out std_logic
      
    ); 
      end Component;
  signal O1, O2, O3, O4, O5,O6: std_logic;
begin
  
f0: nand1  port map ( a , b, O1);
f1: nand1  port map ( c , b, O2);
f2: nand1  port map ( a , C, O4); 
f4: nand1  port map ( O2 , O1, O3); 
f5: nand1  port map ( O3 , O3, O5);
f6: nand1  port map ( O4 , O5, O6);
F<= O6;  
  end m_majoritylogic;
