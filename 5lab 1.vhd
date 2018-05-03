library ieee;
use ieee.std_logic_1164.all;
 
entity ARBA is
  port (
    A    : in  std_logic;
    B    : in  std_logic;
	C    : in  std_logic;
    F : out std_logic
    );
end ARBA;
 
architecture rtl of ARBA is
begin
process (A, B, C)
begin
   if A = '0' and B = '0' and C = '0' then F <= '1';
   elsif A = '0' and B = '0' and C = '1' then F <= '0';
   elsif A = '0' and B = '1' and C = '1' then F <= '0';
   elsif A = '0' and B = '1' and C = '0' then F <= '1';
   elsif A = '1' and B = '0' and C = '0' then F <= '1';
   elsif A = '1' and B = '0' and C = '1' then F <= '1';
   elsif A = '1' and B = '1' and C = '1' then F <= '0';
   elsif A = '1' and B = '1' and C = '0' then F <= '0';
   else                                       F <= '0';
   end if;
end process;  
end rtl;
