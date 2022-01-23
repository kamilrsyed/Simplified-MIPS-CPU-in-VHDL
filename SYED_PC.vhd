library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity SYED_PC is
port (
 SYED_Clock: in std_logic;
 SYED_Reset: in std_logic;
 SYED_Input: in std_logic_vector(31 downto 0);
 SYED_Output: out  std_logic_vector(31 downto 0)
);
end SYED_PC;

architecture arch of SYED_PC is
signal temp: std_logic_Vector(31 downto 0);
begin
process(SYED_Clock, SYED_Reset, SYED_Input)
begin
if (SYED_Reset = '1') then
	temp <= "00000000000000000000000000000000";
elsif (SYED_Input = "00000000000000000000000000011000") then
	temp <= "00000000000000000000000000000100";
else
	if (rising_edge(SYED_Clock)) then
	temp <= SYED_input;
	end if;
end if;
end process;
SYED_Output <= temp;
end arch;