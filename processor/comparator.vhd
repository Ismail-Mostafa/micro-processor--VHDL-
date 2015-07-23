Library ieee;
Use ieee.std_logic_1164.all;

Entity comparator is
 port( A,B : in std_logic_vector (3 downto 0);
      Eq, Gt, Lt : out std_logic
      
      
    ); 
      
      end  comparator;
      
Architecture m_comparator of comparator is
begin
  Eq <= '1' when A=B else
            '0';
            
      Gt <= '1' when A > B else
            '0';
            
      Lt <= '1' when A < B else
            '0';  
 
     

end m_comparator;
