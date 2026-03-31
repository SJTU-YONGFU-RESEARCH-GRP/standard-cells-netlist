library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal tb_done : boolean := false;
  signal ck, d, si, se, sd : std_logic := '1';
  signal q : std_logic;

begin
  dut: entity work.fsdpsbq_x1(rtl) port map (q => q, ck => ck, d => d, si => si, se => se, sd => sd);
  clk_gen: process begin while not tb_done loop ck <= '0'; wait for 5 ns; ck <= '1'; wait for 5 ns; end loop; wait; end process;
  stim: process begin
    sd <= '0'; wait for 1 ns; assert q = '1' report "FSDPSBQ sd" severity failure;
    sd <= '1'; se <= '1'; si <= '0'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '0' report "FSDPSBQ scan" severity failure;
    report "TB_PASS fsdpsbq_x1" severity note;
    tb_done <= true;
    wait for 1 ns;
    wait;
  end process;
end architecture sim;
