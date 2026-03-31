library ieee;
use ieee.std_logic_1164.all;

entity fsdprbsbq_x1 is
    port (
        q : out std_logic;
        ck, d, si, se, rd, sd : in std_logic
    );
end entity fsdprbsbq_x1;

architecture rtl of fsdprbsbq_x1 is
    signal din : std_logic;
begin
    din <= si when se = '1' else d;
    process (ck, rd, sd) is
    begin
        if rd = '0' then
            q <= '0';
        elsif sd = '0' then
            q <= '1';
        elsif rising_edge(ck) then
            q <= din;
        end if;
    end process;
end architecture rtl;
