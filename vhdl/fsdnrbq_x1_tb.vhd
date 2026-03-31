library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal tb_done : boolean := false;
  signal ck, d, si, se, rd : std_logic := '0';
  signal q : std_logic;

begin
  dut: entity work.fsdnrbq_x1(rtl) port map (q => q, ck => ck, d => d, si => si, se => se, rd => rd);
  clk_gen: process begin while not tb_done loop ck <= '0'; wait for 5 ns; ck <= '1'; wait for 5 ns; end loop; wait; end process;
  stim: process begin
    rd <= '0'; wait for 1 ns; assert q = '0' report "FSDNRBQ rd" severity failure;
    rd <= '1'; se <= '1'; si <= '1'; wait until falling_edge(ck);
    wait for 0 ns; assert q = '1' report "FSDNRBQ scan" severity failure;
    report "TB_PASS fsdnrbq_x1" severity note;
    tb_done <= true;
    wait for 1 ns;
    wait;
  end process;
end architecture sim;
