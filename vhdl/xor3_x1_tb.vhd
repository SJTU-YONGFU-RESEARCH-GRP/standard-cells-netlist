library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal w_o : std_logic;
  signal in0 : std_logic;
  signal in1 : std_logic;
  signal in2 : std_logic;
begin
  dut: entity work.xor3_x1(rtl)
    port map (A1 => in0, A2 => in1, A3 => in2, \X\ => w_o);
  process
  begin
    in0 <= '0'; in1 <= '0'; in2 <= '0';
    wait for 1 ns;
    assert w_o = '0' report "XOR3 mismatch vec=" & integer'image(0) severity failure;
    in0 <= '1'; in1 <= '0'; in2 <= '0';
    wait for 1 ns;
    assert w_o = '1' report "XOR3 mismatch vec=" & integer'image(1) severity failure;
    in0 <= '0'; in1 <= '1'; in2 <= '0';
    wait for 1 ns;
    assert w_o = '1' report "XOR3 mismatch vec=" & integer'image(2) severity failure;
    in0 <= '1'; in1 <= '1'; in2 <= '0';
    wait for 1 ns;
    assert w_o = '0' report "XOR3 mismatch vec=" & integer'image(3) severity failure;
    in0 <= '0'; in1 <= '0'; in2 <= '1';
    wait for 1 ns;
    assert w_o = '1' report "XOR3 mismatch vec=" & integer'image(4) severity failure;
    in0 <= '1'; in1 <= '0'; in2 <= '1';
    wait for 1 ns;
    assert w_o = '0' report "XOR3 mismatch vec=" & integer'image(5) severity failure;
    in0 <= '0'; in1 <= '1'; in2 <= '1';
    wait for 1 ns;
    assert w_o = '0' report "XOR3 mismatch vec=" & integer'image(6) severity failure;
    in0 <= '1'; in1 <= '1'; in2 <= '1';
    wait for 1 ns;
    assert w_o = '1' report "XOR3 mismatch vec=" & integer'image(7) severity failure;
    report "TB_PASS xor3_x1" severity note;
    wait;
  end process;
end architecture sim;
