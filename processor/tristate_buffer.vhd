Library ieee;
Use ieee.std_logic_1164.all;



entity Tri_State_Buffer is
  Generic ( n : integer := 8);
port( Enable : in std_logic;
Input : in std_logic_vector(n-1 downto 0);
Output : out std_logic_vector(n-1 downto 0));
  end entity Tri_State_Buffer;
    
Architecture Tri_State_Buffer_Arch of Tri_State_Buffer is
begin

Output<=Input when Enable='1' else
        "ZZZZZZZZZZZZZZZZ"; 
 
          end Architecture Tri_State_Buffer_Arch;


