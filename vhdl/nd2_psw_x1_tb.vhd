library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal a1, a2 : std_logic;
  signal w_o : std_logic;

begin
  dut: entity work.nd2_psw_x1(rtl)
    port map (A1 => a1, A2 => a2, X => w_o);
  process
  begin
    a1 <= '0'; a2 <= '0';
    wait for 1 ns;
    assert w_o = (not (a1 and a2)) report "ND2_PSW mismatch vec=" & integer'image(0) severity failure;
    a1 <= '1'; a2 <= '0';
    wait for 1 ns;
    assert w_o = (not (a1 and a2)) report "ND2_PSW mismatch vec=" & integer'image(1) severity failure;
    a1 <= '0'; a2 <= '1';
    wait for 1 ns;
    assert w_o = (not (a1 and a2)) report "ND2_PSW mismatch vec=" & integer'image(2) severity failure;
    a1 <= '1'; a2 <= '1';
    wait for 1 ns;
    assert w_o = (not (a1 and a2)) report "ND2_PSW mismatch vec=" & integer'image(3) severity failure;
    report "TB_PASS nd2_psw_x1" severity note;
    wait;
  end process;
end architecture sim;
