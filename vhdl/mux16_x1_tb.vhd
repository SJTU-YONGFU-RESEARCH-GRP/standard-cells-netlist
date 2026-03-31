library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb is
end entity tb;

architecture sim of tb is
  signal d : std_logic_vector(15 downto 0);
  signal sel : std_logic_vector(3 downto 0);
  signal w_o : std_logic;

begin
  dut: entity work.mux16_x1(rtl)
    port map (D0 => d(0), D1 => d(1), D2 => d(2), D3 => d(3), D4 => d(4), D5 => d(5), D6 => d(6), D7 => d(7), D8 => d(8), D9 => d(9), D10 => d(10), D11 => d(11), D12 => d(12), D13 => d(13), D14 => d(14), D15 => d(15), S0 => sel(0), S1 => sel(1), S2 => sel(2), S3 => sel(3), \X\ => w_o);
  process
  begin
    for k in 0 to 63 loop
      d <= std_logic_vector(to_unsigned((k * 97 + 11) mod 65536, 16));
      sel <= std_logic_vector(to_unsigned((k / 4) mod 16, 4));
      wait for 1 ns;
      assert w_o = d(to_integer(unsigned(sel))) report "MUX wide mismatch" severity failure;
    end loop;
    report "TB_PASS mux16_x1" severity note;
    wait;
  end process;
end architecture sim;
