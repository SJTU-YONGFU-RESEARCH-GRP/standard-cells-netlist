library ieee;
use ieee.std_logic_1164.all;

entity bmuxi_x1 is
    port (
        S, A, X, M0, M1 : in std_logic;
        \PP\ : out std_logic
    );
end entity bmuxi_x1;

architecture rtl of bmuxi_x1 is
begin
    \PP\ <= not ((X and (((not M1) and (not S)) or (M1 and (not A)))) or ((not X) and (((not M0) and (not S)) or (M0 and (not A)))));
end architecture rtl;
