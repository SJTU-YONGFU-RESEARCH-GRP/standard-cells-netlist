library ieee;
use ieee.std_logic_1164.all;

entity addh_x1 is
    port (
        A, B : in std_logic;
        S, CO : out std_logic
    );
end entity addh_x1;

architecture rtl of addh_x1 is
begin
    S <= A xor B;
    CO <= A and B;
end architecture rtl;
