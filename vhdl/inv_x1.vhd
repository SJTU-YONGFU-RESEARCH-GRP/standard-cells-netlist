library ieee;
use ieee.std_logic_1164.all;

entity inv_x1 is
    port (
        A : in std_logic;
        \X\ : out std_logic
    );
end entity inv_x1;

architecture rtl of inv_x1 is
begin
    \X\ <= not A;
end architecture rtl;
