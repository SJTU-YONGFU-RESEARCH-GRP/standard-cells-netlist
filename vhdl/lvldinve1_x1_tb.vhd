library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal a, en : std_logic;
  signal w_o : std_logic;

begin
  dut: entity work.lvldinve1_x1(rtl)
    port map (A => a, EN => en, X => w_o);
  process
  begin
    a <= '0'; en <= '0';
    wait for 1 ns;
    assert w_o = (not (a and en)) report "LVLDINVE1 mismatch vec=" & integer'image(0) severity failure;
    a <= '1'; en <= '0';
    wait for 1 ns;
    assert w_o = (not (a and en)) report "LVLDINVE1 mismatch vec=" & integer'image(1) severity failure;
    a <= '0'; en <= '1';
    wait for 1 ns;
    assert w_o = (not (a and en)) report "LVLDINVE1 mismatch vec=" & integer'image(2) severity failure;
    a <= '1'; en <= '1';
    wait for 1 ns;
    assert w_o = (not (a and en)) report "LVLDINVE1 mismatch vec=" & integer'image(3) severity failure;
    report "TB_PASS lvldinve1_x1" severity note;
    wait;
  end process;
end architecture sim;
