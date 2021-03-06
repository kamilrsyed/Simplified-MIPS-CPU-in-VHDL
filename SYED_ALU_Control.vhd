library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SYED_ALU_Control is
port(
  SYED_ALU_Op : in std_logic_vector(1 downto 0);
  SYED_Function : in std_logic_vector(5 downto 0);
  SYED_op: out std_logic_vector(3 downto 0)
);
end SYED_ALU_Control;

architecture arch of SYED_ALU_Control is
begin
process(SYED_ALU_Op,SYED_Function)
begin
case SYED_ALU_Op is
when "00" => -- lw and sw
 SYED_op <= "0010"; -- Add
when "01" =>  
 SYED_op <= "0011"; 
when "10" => 
 if (SYED_Function = "000000") then 
 SYED_op <= "0000";
 elsif (SYED_Function = "000001") then 
 SYED_op <= "0001";
 elsif (SYED_Function = "000010") then 
 SYED_op <= "0010";
 elsif (SYED_Function = "000011") then 
 SYED_op <= "0011";
 elsif (SYED_Function = "000100") then 
 SYED_op <= "0100";
 elsif (SYED_Function = "000101") then 
 SYED_op <= "0101";
 elsif (SYED_Function = "000110") then 
 SYED_op <= "0110";
 elsif (SYED_Function = "000111") then 
 SYED_op <= "0111";
 elsif (SYED_Function = "001000") then 
 SYED_op <= "1000";
 elsif (SYED_Function = "001001") then 
 SYED_op <= "1001";
 elsif (SYED_Function = "001010") then 
 SYED_op <= "1010";
 elsif (SYED_Function = "001011") then 
 SYED_op <= "1011";
 elsif (SYED_Function = "001100") then 
 SYED_op <= "1100";
 elsif (SYED_Function = "001101") then 
 SYED_op <= "1101";
 elsif (SYED_Function = "001111") then 
 SYED_op <= "1111";
 else
 SYED_op <= Null;
 end if;
when others => 
	Null;
end case;
end process;
end arch;