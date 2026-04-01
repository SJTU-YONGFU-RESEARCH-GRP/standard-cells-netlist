library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal vdd, vss, vbp, vbn : std_logic;

begin
  vdd <= '1';
  vss <= '0';
  vbp <= '1';
  vbn <= '0';
  dut: entity work.tappn_x1(rtl) port map (vdd => vdd, vss => vss, vbp => vbp, vbn => vbn);
  process
  begin
    wait for 1 ns;
    report "TB_PASS tappn_x1" severity note;
    wait;
  end process;
end architecture sim;
