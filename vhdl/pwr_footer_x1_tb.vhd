library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal vdd, vddh, vss : std_logic;

begin
  vdd <= '1';
  vddh <= '1';
  vss <= '0';
  dut: entity work.pwr_footer_x1(rtl) port map (vdd => vdd, vddh => vddh, vss => vss);
  process
  begin
    wait for 1 ns;
    report "TB_PASS pwr_footer_x1" severity note;
    wait;
  end process;
end architecture sim;
