library ieee;
use ieee.std_logic_1164.all;

entity maji_x1 is
    port (
        A1, A2, A3 : in std_logic;
        X : out std_logic
    );
end entity maji_x1;

architecture rtl of maji_x1 is
begin
    X <= not ((A1 and A2) or (A1 and A3) or (A2 and A3));
end architecture rtl;
