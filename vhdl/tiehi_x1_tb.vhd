library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal w_hi : std_logic;

begin
  dut: entity work.tiehi_x1(rtl) port map (l_hi => w_hi);
  process
  begin
    wait for 1 ns;
    assert w_hi = '1' report "tiehi" severity failure;
    report "TB_PASS tiehi_x1" severity note;
    wait;
  end process;
end architecture sim;
