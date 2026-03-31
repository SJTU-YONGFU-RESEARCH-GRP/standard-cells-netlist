library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal tb_done : boolean := false;
  signal ck, d, si, se : std_logic := '0';
  signal qn : std_logic;

begin
  dut: entity work.fsdpqb_f_x1(rtl) port map (qn => qn, ck => ck, d => d, si => si, se => se);
  clk_gen: process begin while not tb_done loop ck <= '0'; wait for 5 ns; ck <= '1'; wait for 5 ns; end loop; wait; end process;
  stim: process begin
    d <= '0'; si <= '1'; se <= '0'; wait until rising_edge(ck);
    wait for 0 ns; assert qn = '1' report "FSDPQB_F d" severity failure;
    se <= '1'; wait until rising_edge(ck);
    wait for 0 ns; assert qn = '0' report "FSDPQB_F si" severity failure;
    report "TB_PASS fsdpqb_f_x1" severity note;
    tb_done <= true;
    wait for 1 ns;
    wait;
  end process;
end architecture sim;
