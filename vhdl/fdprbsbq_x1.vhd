library ieee;
use ieee.std_logic_1164.all;

entity fdprbsbq_x1 is
    port (
        q : out std_logic;
        ck, d, rd, sd : in std_logic
    );
end entity fdprbsbq_x1;

architecture rtl of fdprbsbq_x1 is
begin
    process (ck, rd, sd) is
    begin
        if rd = '0' then
            q <= '0';
        elsif sd = '0' then
            q <= '1';
        elsif rising_edge(ck) then
            q <= d;
        end if;
    end process;
end architecture rtl;
