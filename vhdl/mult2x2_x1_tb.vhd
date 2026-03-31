library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal a0, a1, b0, b1 : std_logic;
  signal p0, p1, p2, p3 : std_logic;

begin
  dut: entity work.mult2x2_x1(rtl) port map (p0 => p0, p1 => p1, p2 => p2, p3 => p3, a0 => a0, a1 => a1, b0 => b0, b1 => b1);
  process
    variable ee : natural;
    variable pv : std_logic_vector(3 downto 0);
  begin
    for aa in 0 to 3 loop
      for bb in 0 to 3 loop
        a0 <= to_unsigned(aa, 2)(0);
        a1 <= to_unsigned(aa, 2)(1);
        b0 <= to_unsigned(bb, 2)(0);
        b1 <= to_unsigned(bb, 2)(1);
        wait for 1 ns;
        ee := aa * bb;
        pv := std_logic_vector(to_unsigned(ee, 4));
        assert p0 = pv(0) and p1 = pv(1) and p2 = pv(2) and p3 = pv(3) report "MULT2X2" severity failure;
      end loop;
    end loop;
    report "TB_PASS mult2x2_x1" severity note;
    wait;
  end process;
end architecture sim;
