library ieee;
use ieee.std_logic_1164.all;

entity ldnsbq_x1 is
    port (
        q : out std_logic;
        g, d, sd : in std_logic
    );
end entity ldnsbq_x1;

architecture rtl of ldnsbq_x1 is
begin
    process (d, g, sd) is
    begin
        if sd = '0' then
            q <= '1';
        elsif g = '0' then
            q <= d;
        end if;
    end process;
end architecture rtl;
