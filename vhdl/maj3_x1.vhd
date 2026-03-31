library ieee;
use ieee.std_logic_1164.all;

entity maj3_x1 is
    port (
        A1, A2, A3 : in std_logic;
        X : out std_logic
    );
end entity maj3_x1;

architecture rtl of maj3_x1 is
begin
    X <= (A1 and A2) or (A1 and A3) or (A2 and A3);
end architecture rtl;
