library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal tb_done : boolean := false;
  signal ck, d, sd : std_logic := '1';
  signal q : std_logic;

begin
  dut: entity work.fdpsbq_x1(rtl) port map (q => q, ck => ck, d => d, sd => sd);
  clk_gen: process begin while not tb_done loop ck <= '0'; wait for 5 ns; ck <= '1'; wait for 5 ns; end loop; wait; end process;
  stim: process begin
    sd <= '0'; d <= '0'; wait for 1 ns; assert q = '1' report "FDPSBQ sd" severity failure;
    sd <= '1'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '0' report "FDPSBQ d" severity failure;
    report "TB_PASS fdpsbq_x1" severity note;
    tb_done <= true;
    wait for 1 ns;
    wait;
  end process;
end architecture sim;
