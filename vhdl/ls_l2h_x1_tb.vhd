library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal vddl, vddh, vss : std_logic;
  signal rin, w_o : std_logic;

begin
  vddl <= '1';
  vddh <= '1';
  vss <= '0';
  dut: entity work.ls_l2h_x1(rtl) port map (vddl => vddl, vddh => vddh, vss => vss, in0 => rin, \out\ => w_o);
  process
  begin
    rin <= '0';
    wait for 1 ns;
    assert w_o = '0' report "LS low" severity failure;
    rin <= '1';
    wait for 1 ns;
    assert w_o = '1' report "LS high" severity failure;
    report "TB_PASS ls_l2h_x1" severity note;
    wait;
  end process;
end architecture sim;
