
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity instructionmem is
port ( 
clk,rst: in std_logic;
address : in std_logic_vector(7 downto 0) ;
read: in std_logic;
Instruction_out: out std_logic_vector(7 downto 0) );
end entity instructionmem;

architecture instruction_memorya of instructionmem is
type ram_type is array (0 to 255) of std_logic_vector(7 downto 0);

signal ram : ram_type;

begin

process(clk, address) is
begin
if rising_edge(clk) then
if read  = '1' then
instruction_out <= ram(to_integer(unsigned(address)))  ;

end if;
end if;
end process;  



end architecture instruction_memorya;

