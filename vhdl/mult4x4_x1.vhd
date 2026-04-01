library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mult4x4_x1 is
    port (
        A0, A1, A2, A3, B0, B1, B2, B3 : in std_logic;
        P0, P1, P2, P3, P4, P5, P6, P7 : out std_logic
    );
end entity mult4x4_x1;

architecture rtl of mult4x4_x1 is
    signal ua, ub : unsigned(3 downto 0);
    signal pr : unsigned(7 downto 0);
begin
    ua <= A3 & A2 & A1 & A0;
    ub <= B3 & B2 & B1 & B0;
    pr <= ua * ub;
    P0 <= pr(0);
    P1 <= pr(1);
    P2 <= pr(2);
    P3 <= pr(3);
    P4 <= pr(4);
    P5 <= pr(5);
    P6 <= pr(6);
    P7 <= pr(7);
end architecture rtl;
