library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is

begin
  dut: entity work.fill_x1(rtl);
  process
  begin
    wait for 1 ns;
    report "TB_PASS fill_x1" severity note;
    wait;
  end process;
end architecture sim;
