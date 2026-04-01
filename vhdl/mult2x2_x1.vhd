library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult2x2_x1 is
    port (
        A0, A1, B0, B1 : in std_logic;
        P0, P1, P2, P3 : out std_logic
    );
end entity mult2x2_x1;

architecture rtl of mult2x2_x1 is
    signal ua, ub : unsigned(1 downto 0);
    signal pr : unsigned(3 downto 0);
begin
    ua <= A1 & A0;
    ub <= B1 & B0;
    pr <= ua * ub;
    P0 <= pr(0);
    P1 <= pr(1);
    P2 <= pr(2);
    P3 <= pr(3);
end architecture rtl;
