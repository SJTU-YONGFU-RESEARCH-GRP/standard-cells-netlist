library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal g, d, sd : std_logic := '1';
  signal q : std_logic;

begin
  dut: entity work.ldpsbq_x1(rtl) port map (q => q, g => g, d => d, sd => sd);
  process begin
    sd <= '0'; g <= '1'; d <= '0'; wait for 1 ns;
    assert q = '1' report "LDPSBQ sd" severity failure;
    sd <= '1'; g <= '1'; d <= '0'; wait for 1 ns;
    assert q = '0' report "LDPSBQ d" severity failure;
    report "TB_PASS ldpsbq_x1" severity note;
    wait;
  end process;
end architecture sim;
