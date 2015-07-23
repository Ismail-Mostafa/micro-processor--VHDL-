Library ieee;
Use ieee.std_logic_1164.all;

Entity bitencoder is
 port( a : in std_logic_vector (7 downto 0);
      F : out std_logic_vector (2 downto 0);
      valid: out std_logic
      
    ); 
      
      end  bitencoder;
      
Architecture encoder of bitencoder is
begin
  
  F <= "111" when a(7)= '1' else
       "110" when a(6) = '1' else
       "101" when a(5)= '1' else
       "100" when a(4)= '1' else
       "011" when a(3)= '1' else
       "010" when a(2)= '1' else
       "001" when a(1)= '1' else
       "000" when a(0)= '1';
      
       
  valid <= '0' when a= "00000000" else
            '1' ;     

end encoder;