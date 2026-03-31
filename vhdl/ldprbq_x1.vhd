library ieee;
use ieee.std_logic_1164.all;

entity ldprbq_x1 is
    port (
        q : out std_logic;
        g, d, rd : in std_logic
    );
end entity ldprbq_x1;

architecture rtl of ldprbq_x1 is
begin
    process (d, g, rd) is
    begin
        if rd = '0' then
            q <= '0';
        elsif g = '1' then
            q <= d;
        end if;
    end process;
end architecture rtl;
