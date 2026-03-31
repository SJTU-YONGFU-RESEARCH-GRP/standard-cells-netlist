library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal sh : std_logic := '0';

begin
  dut: entity work.sighold_x1(rtl) port map (sh => sh);
  process
  begin
    wait for 1 ns;
    report "TB_PASS sighold_x1" severity note;
    wait;
  end process;
end architecture sim;
