library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal w_s, w_a, w_x : std_logic;
  signal m0, m1, m2 : std_logic;
begin
  dut: entity work.benc_x1(rtl)
    port map (S => w_s, A => w_a, X => w_x, M0 => m0, M1 => m1, M2 => m2);
  process
  begin
    m0 <= '0'; m1 <= '0'; m2 <= '0';
    wait for 1 ns;
    assert w_s = '0' and w_a = '0' and w_x = '1' report "BENC mismatch vec=" & integer'image(0) severity failure;
    m0 <= '1'; m1 <= '0'; m2 <= '0';
    wait for 1 ns;
    assert w_s = '1' and w_a = '0' and w_x = '0' report "BENC mismatch vec=" & integer'image(1) severity failure;
    m0 <= '0'; m1 <= '1'; m2 <= '0';
    wait for 1 ns;
    assert w_s = '1' and w_a = '0' and w_x = '0' report "BENC mismatch vec=" & integer'image(2) severity failure;
    m0 <= '1'; m1 <= '1'; m2 <= '0';
    wait for 1 ns;
    assert w_s = '1' and w_a = '0' and w_x = '1' report "BENC mismatch vec=" & integer'image(3) severity failure;
    m0 <= '0'; m1 <= '0'; m2 <= '1';
    wait for 1 ns;
    assert w_s = '0' and w_a = '1' and w_x = '1' report "BENC mismatch vec=" & integer'image(4) severity failure;
    m0 <= '1'; m1 <= '0'; m2 <= '1';
    wait for 1 ns;
    assert w_s = '0' and w_a = '1' and w_x = '0' report "BENC mismatch vec=" & integer'image(5) severity failure;
    m0 <= '0'; m1 <= '1'; m2 <= '1';
    wait for 1 ns;
    assert w_s = '0' and w_a = '1' and w_x = '0' report "BENC mismatch vec=" & integer'image(6) severity failure;
    m0 <= '1'; m1 <= '1'; m2 <= '1';
    wait for 1 ns;
    assert w_s = '0' and w_a = '0' and w_x = '1' report "BENC mismatch vec=" & integer'image(7) severity failure;
    report "TB_PASS benc_x1" severity note;
    wait;
  end process;
end architecture sim;
