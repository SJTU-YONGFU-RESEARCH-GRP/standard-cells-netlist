library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult4x4_x1 is
    port (
        a0, a1, a2, a3, b0, b1, b2, b3 : in std_logic;
        p0, p1, p2, p3, p4, p5, p6, p7 : out std_logic
    );
end entity mult4x4_x1;

architecture rtl of mult4x4_x1 is
    signal ua, ub : unsigned(3 downto 0);
    signal pr : unsigned(7 downto 0);
begin
    ua <= a3 & a2 & a1 & a0;
    ub <= b3 & b2 & b1 & b0;
    pr <= ua * ub;
    p0 <= pr(0);
    p1 <= pr(1);
    p2 <= pr(2);
    p3 <= pr(3);
    p4 <= pr(4);
    p5 <= pr(5);
    p6 <= pr(6);
    p7 <= pr(7);
end architecture rtl;
