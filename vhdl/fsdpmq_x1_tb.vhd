library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal tb_done : boolean := false;
  signal ck, d0, d1, s, si, se : std_logic := '0';
  signal q : std_logic;

begin
  dut: entity work.fsdpmq_x1(rtl) port map (q => q, ck => ck, d0 => d0, d1 => d1, s => s, si => si, se => se);
  clk_gen: process begin while not tb_done loop ck <= '0'; wait for 5 ns; ck <= '1'; wait for 5 ns; end loop; wait; end process;
  stim: process begin
    d0 <= '0'; d1 <= '1'; s <= '0'; si <= '1'; se <= '0'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '0' report "FSDPMQ dsel" severity failure;
    se <= '1'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '1' report "FSDPMQ scan" severity failure;
    report "TB_PASS fsdpmq_x1" severity note;
    tb_done <= true;
    wait for 1 ns;
    wait;
  end process;
end architecture sim;
