Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity SYED_ALU is
port(
			SYED_a, SYED_b: in std_logic_vector (31 downto 0);
			SYED_result: out std_logic_vector (31 downto 0);
			SYED_op: in std_logic_vector(3 downto 0);
			SYED_Zero: out std_logic
			);
end SYED_ALU;

architecture arch of SYED_ALU is
	signal SYED_in1, SYED_in2: std_logic_vector(31 downto 0);
	signal SYED_ADD: std_logic_vector(31 downto 0);
	signal SYED_Answer: std_logic_vector(31 downto 0);

component SYED_LPM_ADD
  port (dataa, datab : in std_logic_vector(31 downto 0);
        result : out std_logic_vector(31 downto 0)
    );
end component;


				
begin
SYED_in1 <= SYED_a;
SYED_in2 <= SYED_b;

					

SYED_LPM_ADDFunction: SYED_LPM_ADD 
	port map( dataa => SYED_in1,
					datab => SYED_in2, 
					result => SYED_ADD);
					
process (SYED_a,SYED_b,SYED_op)
begin
		case SYED_op is 

			when "0010" =>
			SYED_Answer <= SYED_ADD;

			when others =>
				NULL;
		end case;
		
		if (SYED_Answer = "00000000000000000000000000000000") then
			SYED_Zero <= '1';
		else
			SYED_Zero <= '0';
		end if;
		SYED_Result <= SYED_Answer;
end process;

end arch;