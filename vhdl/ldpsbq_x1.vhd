library ieee;
use ieee.std_logic_1164.all;

entity ldpsbq_x1 is
    port (
        q : out std_logic;
        g, d, sd : in std_logic
    );
end entity ldpsbq_x1;

architecture rtl of ldpsbq_x1 is
begin
    process (d, g, sd) is
    begin
        if sd = '0' then
            q <= '1';
        elsif g = '1' then
            q <= d;
        end if;
    end process;
end architecture rtl;
