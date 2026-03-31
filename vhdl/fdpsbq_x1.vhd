library ieee;
use ieee.std_logic_1164.all;

entity fdpsbq_x1 is
    port (
        q : out std_logic;
        ck, d, sd : in std_logic
    );
end entity fdpsbq_x1;

architecture rtl of fdpsbq_x1 is
begin
    process (ck, sd) is
    begin
        if sd = '0' then
            q <= '1';
        elsif rising_edge(ck) then
            q <= d;
        end if;
    end process;
end architecture rtl;
