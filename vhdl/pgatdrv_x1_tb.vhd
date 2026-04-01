library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal enxb : std_logic := '0';

begin
  dut: entity work.pgatdrv_x1(rtl) port map (enxb => enxb);
  process
  begin
    enxb <= '0'; wait for 1 ns;
    enxb <= '1'; wait for 1 ns;
    report "TB_PASS pgatdrv_x1" severity note;
    wait;
  end process;
end architecture sim;
