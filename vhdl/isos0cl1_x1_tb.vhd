library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal a, en0 : std_logic;
  signal w_o : std_logic;

begin
  dut: entity work.isos0cl1_x1(rtl)
    port map (A => a, EN0 => en0, X => w_o);
  process
  begin
    a <= '0'; en0 <= '0';
    wait for 1 ns;
    assert w_o = ((a or en0)) report "ISOS0CL1 mismatch vec=" & integer'image(0) severity failure;
    a <= '1'; en0 <= '0';
    wait for 1 ns;
    assert w_o = ((a or en0)) report "ISOS0CL1 mismatch vec=" & integer'image(1) severity failure;
    a <= '0'; en0 <= '1';
    wait for 1 ns;
    assert w_o = ((a or en0)) report "ISOS0CL1 mismatch vec=" & integer'image(2) severity failure;
    a <= '1'; en0 <= '1';
    wait for 1 ns;
    assert w_o = ((a or en0)) report "ISOS0CL1 mismatch vec=" & integer'image(3) severity failure;
    report "TB_PASS isos0cl1_x1" severity note;
    wait;
  end process;
end architecture sim;
