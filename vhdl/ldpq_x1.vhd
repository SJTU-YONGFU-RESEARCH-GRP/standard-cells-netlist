library ieee;
use ieee.std_logic_1164.all;

entity ldpq_x1 is
    port (
        q : out std_logic;
        g, d : in std_logic
    );
end entity ldpq_x1;

architecture rtl of ldpq_x1 is
begin
    process (d, g) is
    begin
        if g = '1' then
            q <= d;
        end if;
    end process;
end architecture rtl;
