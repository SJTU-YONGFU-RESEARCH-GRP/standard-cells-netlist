library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal w_o : std_logic;
  signal in0, te_b : std_logic;
begin
  dut: entity work.ebufn_x1(rtl)
    port map (A => in0, EN => te_b, \X\ => w_o);
  process
  begin
    in0 <= '0'; te_b <= '0';
    wait for 1 ns;
    assert w_o = '0' report "EBUFN mismatch" severity failure;
    in0 <= '1'; te_b <= '0';
    wait for 1 ns;
    assert w_o = '1' report "EBUFN mismatch" severity failure;
    in0 <= '0'; te_b <= '1';
    wait for 1 ns;
    assert w_o = 'Z' report "EBUFN high-Z" severity failure;
    in0 <= '1'; te_b <= '1';
    wait for 1 ns;
    assert w_o = 'Z' report "EBUFN high-Z" severity failure;
    report "TB_PASS ebufn_x1" severity note;
    wait;
  end process;
end architecture sim;
