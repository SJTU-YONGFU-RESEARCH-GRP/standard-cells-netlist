library ieee;
use ieee.std_logic_1164.all;

entity fsdpsbq_x1 is
    port (
        q : out std_logic;
        ck, d, si, se, sd : in std_logic
    );
end entity fsdpsbq_x1;

architecture rtl of fsdpsbq_x1 is
begin
    process (ck, sd) is
    begin
        if sd = '0' then
            q <= '1';
        elsif rising_edge(ck) then
            q <= si when se = '1' else d;
        end if;
    end process;
end architecture rtl;
