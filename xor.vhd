-- File: xor.vhd
-- Compiled by: Diana Stazinskaja Eif-16/2“.
library ieee;
use ieee.std_logic_1164.all;

-- the entity
entity xor is
port (
i_a, i_b : in std_logic;
o_f : out std_logic);
end xor;

-- the architecture
architecture xor_arc of xor is
begin
o_f <= i_a xor i_b;
end xor_arc;


-- Pirmas Laboratorinis darbas

--Padarytas pakeitimas