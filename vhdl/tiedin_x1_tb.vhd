library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal x : std_logic := '0';

begin
  dut: entity work.tiedin_x1(rtl) port map (x => x);
  process
  begin
    x <= '0';
    wait for 1 ns;
    x <= '1';
    wait for 1 ns;
    report "TB_PASS tiedin_x1" severity note;
    wait;
  end process;
end architecture sim;
