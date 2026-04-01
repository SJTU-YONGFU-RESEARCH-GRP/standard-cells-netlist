library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal w_sum, w_cout : std_logic;
  signal in0 : std_logic;
  signal in1 : std_logic;
begin
  dut: entity work.addhii_x1(rtl)
    port map (S => w_sum, CO => w_cout, A => in0, B => in1);
  process
  begin
    in0 <= '0'; in1 <= '0';
    wait for 1 ns;
    assert w_sum = '1' and w_cout = '0' report "ADDHII mismatch vec=" & integer'image(0) severity failure;
    in0 <= '1'; in1 <= '0';
    wait for 1 ns;
    assert w_sum = '0' and w_cout = '1' report "ADDHII mismatch vec=" & integer'image(1) severity failure;
    in0 <= '0'; in1 <= '1';
    wait for 1 ns;
    assert w_sum = '0' and w_cout = '0' report "ADDHII mismatch vec=" & integer'image(2) severity failure;
    in0 <= '1'; in1 <= '1';
    wait for 1 ns;
    assert w_sum = '1' and w_cout = '0' report "ADDHII mismatch vec=" & integer'image(3) severity failure;
    report "TB_PASS addhii_x1" severity note;
    wait;
  end process;
end architecture sim;
