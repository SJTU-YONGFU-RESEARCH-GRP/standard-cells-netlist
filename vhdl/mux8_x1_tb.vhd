library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal d : std_logic_vector(7 downto 0);
  signal sel : std_logic_vector(2 downto 0);
  signal w_o : std_logic;

begin
  dut: entity work.mux8_x1(rtl)
    port map (D0 => d(0), D1 => d(1), D2 => d(2), D3 => d(3), D4 => d(4), D5 => d(5), D6 => d(6), D7 => d(7), S0 => sel(0), S1 => sel(1), S2 => sel(2), \X\ => w_o);
  process
  begin
    for k in 0 to 63 loop
      d <= std_logic_vector(to_unsigned((k * 97 + 11) mod 256, 8));
      sel <= std_logic_vector(to_unsigned((k / 4) mod 8, 3));
      wait for 1 ns;
      assert w_o = d(to_integer(unsigned(sel))) report "MUX wide mismatch vec=" & integer'image(k) severity failure;
    end loop;
    report "TB_PASS mux8_x1" severity note;
    wait;
  end process;
end architecture sim;
