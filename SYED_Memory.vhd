library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity SYED_Memory is
port (
 SYED_Clock: in std_logic; -- Clock on rising edge
 SYED_Address: in std_logic_Vector(31 downto 0); -- Address that we take in the result of ALU
 SYED_Write_Data: in std_logic_Vector(31 downto 0); -- Write Data
 SYED_WE,SYED_Read:in std_logic; -- Write Enable and Read
 SYED_Read_Data: out std_logic_Vector(31 downto 0) -- Read Data
);
end SYED_Memory;

architecture arch of SYED_Memory is

signal SYED_RAM_Address: std_logic_vector(31 downto 0);

type SYED_Data_Memory is array (0 to 31 ) of std_logic_vector (31 downto 0);
signal SYED_ram: SYED_Data_Memory :=((others=> (others=>'0')));

begin

 SYED_RAM_Address <= SYED_Address(31 downto 0);
 
 process(SYED_Clock)
 begin
  if(rising_edge(SYED_Clock)) then
  if (SYED_WE='1') then
  SYED_ram(to_integer(unsigned(SYED_RAM_Address))) <= SYED_Write_Data;
  end if;
  end if;
 end process;
   SYED_Read_Data <= SYED_ram(to_integer(unsigned(SYED_RAM_Address))) when (SYED_Read='1') else x"00000000";

end arch;