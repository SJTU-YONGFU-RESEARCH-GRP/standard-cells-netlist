library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal w_o : std_logic;
  signal in0 : std_logic;
begin
  dut: entity work.dly_x1(rtl)
    port map (A => in0, \X\ => w_o);
  process
  begin
    in0 <= '0';
    wait for 1 ns;
    assert w_o = '0' report "DLY mismatch" severity failure;
    in0 <= '1';
    wait for 1 ns;
    assert w_o = '1' report "DLY mismatch" severity failure;
    report "TB_PASS dly_x1" severity note;
    wait;
  end process;
end architecture sim;
