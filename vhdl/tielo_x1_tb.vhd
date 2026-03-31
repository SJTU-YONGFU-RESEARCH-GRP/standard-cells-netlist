library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal w_lo : std_logic;

begin
  dut: entity work.tielo_x1(rtl) port map (l_lo => w_lo);
  process
  begin
    wait for 1 ns;
    assert w_lo = '0' report "tielo" severity failure;
    report "TB_PASS tielo_x1" severity note;
    wait;
  end process;
end architecture sim;
