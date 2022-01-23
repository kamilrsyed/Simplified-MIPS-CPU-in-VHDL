library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SYED_Simple_CPU is
port (
  SYED_OpCode: in std_logic_vector(5 downto 0);
  SYED_Reset: in std_logic;
  SYED_ALU_Op: out std_logic_vector(1 downto 0);
  SYED_RegDst,SYED_MemRead,
  SYED_MemtoReg,SYED_MemWrite,SYED_ALUSrc,
  SYED_RegWrite: out std_logic
 );
end SYED_Simple_CPU;

architecture arch of SYED_Simple_CPU is

begin

process(SYED_Reset,SYED_OpCode)

begin

 if(SYED_Reset = '1') then
   SYED_ALU_Op <= "00";
   SYED_RegDst <= '0';
	SYED_MemRead <= '0';
   SYED_MemtoReg <= '0';
   SYED_MemWrite <= '0';
   SYED_ALUSrc <= '0';
   SYED_RegWrite <= '0';
	
 else 
 
 case SYED_OpCode is
	
  when "100011" => -- lw
   SYED_ALU_Op <= "00";
   SYED_RegDst <= '0';
	SYED_MemRead <= '1';
   SYED_MemtoReg <= '1';
   SYED_MemWrite <= '0';
   SYED_ALUSrc <= '1';
   SYED_RegWrite <= '1';
	
  when "101011" => -- sw
   SYED_ALU_Op <= "00";
   SYED_RegDst <= '-';
	SYED_MemRead <= '0';
   SYED_MemtoReg <= '-';
   SYED_MemWrite <= '1';
   SYED_ALUSrc <= '1';
   SYED_RegWrite <= '0';
	
  when "000000" => -- R-type
   SYED_ALU_Op <= "10";
   SYED_RegDst <= '1';
	SYED_MemRead <= '0';
   SYED_MemtoReg <= '0';
   SYED_MemWrite <= '0';
   SYED_ALUSrc <= '0';
   SYED_RegWrite <= '1';

 when others =>   
   SYED_ALU_Op <= "00";
   SYED_RegDst <= '0';
	SYED_MemRead <= '0';
   SYED_MemtoReg <= '0';
   SYED_MemWrite <= '0';
   SYED_ALUSrc <= '0';
   SYED_RegWrite <= '0';
	
 end case;
 end if;
end process;

end arch;