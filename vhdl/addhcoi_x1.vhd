library ieee;
use ieee.std_logic_1164.all;

entity addhcoi_x1 is
    port (
        A, B : in std_logic;
        S, CO : out std_logic
    );
end entity addhcoi_x1;

architecture rtl of addhcoi_x1 is
begin
    S <= A xor B;
    CO <= not (A and B);
end architecture rtl;
