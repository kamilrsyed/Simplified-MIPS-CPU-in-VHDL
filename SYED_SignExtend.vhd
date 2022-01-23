library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity SYED_SignExtend is
port (
 Instruction: in std_logic_vector(15 downto 0);
 out: out std_logic_vector(31 downto 0)
);
end SYED_SignExtend;

architecture arch of SYED_SignExtend is
begin
	out <= (31 downto 16 => '0') &  Instruction;
end arch;