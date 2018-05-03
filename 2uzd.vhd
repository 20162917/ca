library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity 2uzd is port (
a,b,c,d : in std_logic;
f : out std_logic
);
end 2uzd;
architecture dataflow of 2uzd is
signal a_b, c_d : std_logic;
begin
--Module 1, AND_1
a_b <= a and b;
--Module 2, AND_2
c_d <=  c and  d;
--Module 3, AND_3
f <= a_b and c_d;
end dataflow;
