Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYED_Add_By_Four is
port(
			SYED_a: in std_logic_vector(31 downto 0);
			SYED_result: out std_logic_vector(31 downto 0)
			);
end SYED_Add_By_Four;

architecture arch of SYED_Add_By_Four is

begin
			SYED_result <= std_logic_vector(to_unsigned(to_integer(unsigned(SYED_a)) + 4,32));
end arch;