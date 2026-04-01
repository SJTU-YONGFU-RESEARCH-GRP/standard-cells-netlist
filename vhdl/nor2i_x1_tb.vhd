library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal w_o : std_logic;
  signal in0 : std_logic;
  signal in1 : std_logic;
begin
  dut: entity work.nor2i_x1(rtl)
    port map (A => in0, B => in1, \X\ => w_o);
  process
  begin
    in0 <= '0'; in1 <= '0';
    wait for 1 ns;
    assert w_o = '1' report "NOR2I mismatch vec=" & integer'image(0) severity failure;
    in0 <= '1'; in1 <= '0';
    wait for 1 ns;
    assert w_o = '0' report "NOR2I mismatch vec=" & integer'image(1) severity failure;
    in0 <= '0'; in1 <= '1';
    wait for 1 ns;
    assert w_o = '0' report "NOR2I mismatch vec=" & integer'image(2) severity failure;
    in0 <= '1'; in1 <= '1';
    wait for 1 ns;
    assert w_o = '0' report "NOR2I mismatch vec=" & integer'image(3) severity failure;
    report "TB_PASS nor2i_x1" severity note;
    wait;
  end process;
end architecture sim;
