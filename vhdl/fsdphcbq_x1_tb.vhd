library ieee;
use ieee.std_logic_1164.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal tb_done : boolean := false;
  signal ck, d, si, se, en, rs : std_logic := '0';
  signal q : std_logic;

begin
  dut: entity work.fsdphcbq_x1(rtl) port map (q => q, ck => ck, d => d, si => si, se => se, en => en, rs => rs);
  clk_gen: process begin while not tb_done loop ck <= '0'; wait for 5 ns; ck <= '1'; wait for 5 ns; end loop; wait; end process;
  stim: process begin
    d <= '1'; se <= '0'; si <= '0'; en <= '1'; rs <= '0'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '0' report "FSDPHCBQ clr" severity failure;
    rs <= '1'; se <= '1'; si <= '1'; wait until rising_edge(ck);
    wait for 0 ns; assert q = '1' report "FSDPHCBQ scan" severity failure;
    report "TB_PASS fsdphcbq_x1" severity note;
    tb_done <= true;
    wait for 1 ns;
    wait;
  end process;
end architecture sim;
