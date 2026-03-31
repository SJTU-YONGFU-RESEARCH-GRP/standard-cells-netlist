library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal g, d, sd : std_logic := '1';
  signal q : std_logic;

begin
  dut: entity work.ldnsbq_x1(rtl) port map (q => q, g => g, d => d, sd => sd);
  process begin
    sd <= '0'; g <= '0'; d <= '0'; wait for 1 ns;
    assert q = '1' report "LDNSBQ sd" severity failure;
    sd <= '1'; g <= '0'; d <= '0'; wait for 1 ns;
    assert q = '0' report "LDNSBQ d" severity failure;
    report "TB_PASS ldnsbq_x1" severity note;
    wait;
  end process;
end architecture sim;
