library ieee;
use ieee.std_logic_1164.all;

entity benc_x1 is
    port (
        M0, M1, M2 : in std_logic;
        S, A, X : out std_logic
    );
end entity benc_x1;

architecture rtl of benc_x1 is
begin
    S <= (not M2) and (M1 or M0);
    A <= M2 and ((not M1) or (not M0));
    X <= M1 xnor M0;
end architecture rtl;
