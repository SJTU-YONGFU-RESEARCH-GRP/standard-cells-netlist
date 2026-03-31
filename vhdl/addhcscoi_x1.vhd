library ieee;
use ieee.std_logic_1164.all;

entity addhcscoi_x1 is
    port (
        A, B, CI : in std_logic;
        S, CO0, CO1 : out std_logic
    );
end entity addhcscoi_x1;

architecture rtl of addhcscoi_x1 is
begin
    S <= A xor B xor CI;
    CO0 <= not (A and B);
    CO1 <= not (A or B);
end architecture rtl;
