library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal vdd, vss, vddr : std_logic;

begin
  vdd <= '1';
  vss <= '0';
  vddr <= '1';
  dut: entity work.tappp_x1(rtl) port map (vdd => vdd, vss => vss, vddr => vddr);
  process
  begin
    wait for 1 ns;
    report "TB_PASS tappp_x1" severity note;
    wait;
  end process;
end architecture sim;
