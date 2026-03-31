library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal g, d : std_logic := '0';
  signal q : std_logic;

begin
  dut: entity work.ldpq_x1(rtl) port map (q => q, g => g, d => d);
  process begin
    g <= '0'; d <= '0'; wait for 1 ns;
    g <= '1'; d <= '1'; wait for 1 ns;
    assert q = '1' report "LDPQ" severity failure;
    report "TB_PASS ldpq_x1" severity note;
    wait;
  end process;
end architecture sim;
