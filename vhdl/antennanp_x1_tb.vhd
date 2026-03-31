library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal ra : std_logic;

begin
  dut: entity work.antennanp_x1(rtl) port map (a => ra);
  process
  begin
    ra <= '0';
    wait for 1 ns;
    ra <= '1';
    wait for 1 ns;
    report "TB_PASS antennanp_x1" severity note;
    wait;
  end process;
end architecture sim;
