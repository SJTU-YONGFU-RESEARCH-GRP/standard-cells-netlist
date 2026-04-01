library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal a : std_logic;
  signal w_o : std_logic;

begin
  dut: entity work.inv_pw_x1(rtl)
    port map (A => a, X => w_o);
  process
  begin
    a <= '0';
    wait for 1 ns;
    assert w_o = (not a) report "INV_PW mismatch vec=" & integer'image(0) severity failure;
    a <= '1';
    wait for 1 ns;
    assert w_o = (not a) report "INV_PW mismatch vec=" & integer'image(1) severity failure;
    report "TB_PASS inv_pw_x1" severity note;
    wait;
  end process;
end architecture sim;
