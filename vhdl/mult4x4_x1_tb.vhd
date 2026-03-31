library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal a0, a1, a2, a3, b0, b1, b2, b3 : std_logic;
  signal p0, p1, p2, p3, p4, p5, p6, p7 : std_logic;

begin
  dut: entity work.mult4x4_x1(rtl) port map (p0 => p0, p1 => p1, p2 => p2, p3 => p3, p4 => p4, p5 => p5, p6 => p6, p7 => p7, a0 => a0, a1 => a1, a2 => a2, a3 => a3, b0 => b0, b1 => b1, b2 => b2, b3 => b3);
  process
    variable ee : natural;
    variable pv : std_logic_vector(7 downto 0);
  begin
    for aa in 0 to 15 loop
      for bb in 0 to 15 loop
        a0 <= to_unsigned(aa, 4)(0);
        a1 <= to_unsigned(aa, 4)(1);
        a2 <= to_unsigned(aa, 4)(2);
        a3 <= to_unsigned(aa, 4)(3);
        b0 <= to_unsigned(bb, 4)(0);
        b1 <= to_unsigned(bb, 4)(1);
        b2 <= to_unsigned(bb, 4)(2);
        b3 <= to_unsigned(bb, 4)(3);
        wait for 1 ns;
        ee := aa * bb;
        pv := std_logic_vector(to_unsigned(ee, 8));
        assert p0 = pv(0) and p1 = pv(1) and p2 = pv(2) and p3 = pv(3) and
               p4 = pv(4) and p5 = pv(5) and p6 = pv(6) and p7 = pv(7) report "MULT4X4" severity failure;
      end loop;
    end loop;
    report "TB_PASS mult4x4_x1" severity note;
    wait;
  end process;
end architecture sim;
