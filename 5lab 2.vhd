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
   Case(A and not B) or (not A and not C) is
      when '1' => F <= '1';
	  when '0' => F <= '0';
	  when others => null;
   end case;
end process;   
end rtl;
