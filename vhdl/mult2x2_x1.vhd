library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult2x2_x1 is
    port (
        a0, a1, b0, b1 : in std_logic;
        p0, p1, p2, p3 : out std_logic
    );
end entity mult2x2_x1;

architecture rtl of mult2x2_x1 is
    signal ua, ub : unsigned(1 downto 0);
    signal pr : unsigned(3 downto 0);
begin
    ua <= a1 & a0;
    ub <= b1 & b0;
    pr <= ua * ub;
    p0 <= pr(0);
    p1 <= pr(1);
    p2 <= pr(2);
    p3 <= pr(3);
end architecture rtl;
