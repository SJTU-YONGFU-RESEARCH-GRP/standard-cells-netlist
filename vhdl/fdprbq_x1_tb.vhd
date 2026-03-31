library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal tb_done : boolean := false;
  signal ck, d, rd : std_logic := '0';
  signal q : std_logic;

begin
  dut: entity work.fdprbq_x1(rtl) port map (q => q, ck => ck, d => d, rd => rd);
  clk_gen: process begin while not tb_done loop ck <= '0'; wait for 5 ns; ck <= '1'; wait for 5 ns; end loop; wait; end process;
  stim: process begin
    rd <= '0'; d <= '1'; wait for 1 ns; assert q = '0' report "FDPRBQ rd" severity failure;
    rd <= '1'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '1' report "FDPRBQ d" severity failure;
    report "TB_PASS fdprbq_x1" severity note;
    tb_done <= true;
    wait for 1 ns;
    wait;
  end process;
end architecture sim;
