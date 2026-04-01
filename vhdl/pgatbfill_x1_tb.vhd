library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal enx, en : std_logic := '0';

begin
  dut: entity work.pgatbfill_x1(rtl) port map (enx => enx, en => en);
  process
  begin
    enx <= '0'; en <= '0'; wait for 1 ns;
    enx <= '1'; en <= '0'; wait for 1 ns;
    enx <= '0'; en <= '1'; wait for 1 ns;
    enx <= '1'; en <= '1'; wait for 1 ns;
    report "TB_PASS pgatbfill_x1" severity note;
    wait;
  end process;
end architecture sim;
