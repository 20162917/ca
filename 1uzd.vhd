library ieee;
use ieee.std_logic_1164.all;
 
entity log is
  port (
    i_bit    : in  std_logic_vector(2 downto 0);
    o_bit0	 : out std_logic_vector(2 downto 0);
	o_bit1	 : out std_logic_vector(2 downto 0);
	o_bit2	 : out std_logic_vector(2 downto 0)
);
end log;
 
architecture rtl of log is
begin
process (i_bit)
begin
		case i_bit is 
			when "00"=> o_bit0 <= "011";
			when "01"=> o_bit0 <= "100";
			when "10"=> o_bit0 <= "101";
			when "11"=> o_bit0 <= "110";
			when others => null;
		end case;

	if i_bit = "00" then o_bit1 <= "011" ;	
	elsif i_bit = "01" then o_bit1 <= "100" ;	
	elsif i_bit = "10" then o_bit1 <= "101" ;	
	elsif i_bit = "11" then o_bit1 <= "110" ;
	end if;	
end process;

	with (i_bit) select o_bit2 <=
	"011" when "00",
	"100" when "01",
	"101" when "10",
	"110" when "11",
    "000" when others;
	
end rtl;
