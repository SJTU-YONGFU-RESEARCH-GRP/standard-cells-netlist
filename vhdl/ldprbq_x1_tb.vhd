library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal g, d, rd : std_logic := '0';
  signal q : std_logic;

begin
  dut: entity work.ldprbq_x1(rtl) port map (q => q, g => g, d => d, rd => rd);
  process begin
    rd <= '0'; g <= '1'; d <= '1'; wait for 1 ns;
    assert q = '0' report "LDPRBQ rd" severity failure;
    rd <= '1'; wait for 1 ns;
    assert q = '1' report "LDPRBQ d" severity failure;
    report "TB_PASS ldprbq_x1" severity note;
    wait;
  end process;
end architecture sim;
