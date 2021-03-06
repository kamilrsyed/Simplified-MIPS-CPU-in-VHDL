library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;  

entity SYED_Register is
port (
 Clock, Reset: in std_logic;
 WE: in std_logic; -- Write enable
 Write_Register: in std_logic_vector(4 downto 0); -- Writing register address
 Write_Data: in std_logic_vector(31 downto 0); -- Data to be written
 Read_Address_1: in std_logic_vector(4 downto 0); -- Address 1
 Read_Data_1: out std_logic_vector(31 downto 0); -- Value of address 1
 Read_Address_2: in std_logic_vector(4 downto 0); -- Address 2
 Read_Data_2: out std_logic_vector(31 downto 0) -- Value of address 2
);
end Register;

architecture arch of Register is
type SYED_Type is array (0 to 31 ) of std_logic_vector (31 downto 0); 
signal SYED_Array: SYED_Type;
begin
 process(Clock,Reset) 
 begin
 if(Reset = '1') then -- Reset makes everything zero
		SYED_Array(0)  <= x"00000000";
		SYED_Array(1)  <= x"00000000";
		SYED_Array(2)  <= x"00000000";
		SYED_Array(3)  <= x"00000000";
		SYED_Array(4)  <= x"00000000";
		SYED_Array(5)  <= x"00000000";
		SYED_Array(6)  <= x"00000000";
		SYED_Array(7)  <= x"00000000";
		SYED_Array(8)  <= x"00000000";
		SYED_Array(9)  <= x"00000000";
		SYED_Array(10) <= x"00000002";
		SYED_Array(11) <= x"00000002";
		SYED_Array(12) <= x"00000002";
		SYED_Array(13) <= x"00000002";
		SYED_Array(14) <= x"00000000";
		SYED_Array(15) <= x"00000000";
		SYED_Array(16) <= x"00000000";
		SYED_Array(17) <= x"00000000";
		SYED_Array(18) <= x"00000000";
		SYED_Array(19) <= x"00000000";
		SYED_Array(20) <= x"00000000";
		SYED_Array(21) <= x"00000000";
		SYED_Array(22) <= x"00000000";
		SYED_Array(23) <= x"00000000";
		SYED_Array(24) <= x"00000000";
		SYED_Array(25) <= x"00000000";
		SYED_Array(26) <= x"00000000";
		SYED_Array(27) <= x"00000000";
		SYED_Array(28) <= x"00000002";
		SYED_Array(29) <= x"00000000";
		SYED_Array(30) <= x"00000000";
		SYED_Array(31) <= x"00000000";
 elsif(rising_edge(Clock)) then -- At rising edge, store data into register that's stored in an array
   if(WE='1') then
    Array(to_integer(unsigned(Write_Register))) <= Write_Data;
   end if;
 end if;
 end process;
 
-- Outputs
 Read_Data_1 <= x"00000000" when Read_Address_1 = "00000" else Array(to_integer(unsigned(Read_Address_1)));
 Read_Data_2 <= x"00000000" when Read_Address_2 = "00000" else Array(to_integer(unsigned(Read_Address_2)));

end arch;