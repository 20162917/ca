library ieee;
use ieee.std_logic_1164.all;

entity process_tb is
end process_tb;

architecture behave of process_tb is
  signal r_SIG1   : std_logic := '0';
  signal r_SIG2   : std_logic := '0';
  signal w_RESULT1 : std_logic_vector(2 downto 0);
signal w_RESULT2 : std_logic_vector(2 downto 0);
signal w_RESULT3 : std_logic_vector(2 downto 0);
-- naudoti 4ARBA vhd
  component log is
    port (
	i_bit    : in  std_logic_vector(2 downto 0);
    	o_bit0	 : out std_logic_vector(2 downto 0);
	o_bit1	 : out std_logic_vector(2 downto 0);
	o_bit2	 : out std_logic_vector(2 downto 0)
);
  end component log;
--behin behave
begin
  and_gate_INST : log
    port map (
      i_bit(0)    => r_SIG1,
	i_bit(1)    => r_SIG2,
      o_bit0 => w_RESULT1,
	o_bit1 => w_RESULT2,
	o_bit2 => w_RESULT3
      );
	  
-- aprasyti visas reikalingas kombinacijas patikrinti schemai
  process is
  begin
    r_SIG1 <= '1';
	r_SIG2 <= '1';
    wait for 10 ns;
    r_SIG1 <= '0';
	r_SIG2 <= '0';
    wait for 10 ns;
    r_SIG1 <= '1';
	r_SIG2 <= '0';
    wait for 10 ns;
	r_SIG1 <= '0';
	r_SIG2 <= '1';
	wait for 10 ns;
  end process;

end behave;
