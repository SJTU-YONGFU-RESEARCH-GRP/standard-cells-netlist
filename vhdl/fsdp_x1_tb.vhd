library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal tb_done : boolean := false;
  signal ck, d, si, se : std_logic := '0';
  signal q, qn : std_logic;

begin
  dut: entity work.fsdp_x1(rtl) port map (q => q, qn => qn, ck => ck, d => d, si => si, se => se);
  clk_gen: process begin while not tb_done loop ck <= '0'; wait for 5 ns; ck <= '1'; wait for 5 ns; end loop; wait; end process;
  stim: process begin
    d <= '0'; si <= '1'; se <= '0'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '0' report "FSDP d" severity failure;
    se <= '1'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '1' and qn = '0' report "FSDP si" severity failure;
    report "TB_PASS fsdp_x1" severity note;
    tb_done <= true;
    wait for 1 ns;
    wait;
  end process;
end architecture sim;
