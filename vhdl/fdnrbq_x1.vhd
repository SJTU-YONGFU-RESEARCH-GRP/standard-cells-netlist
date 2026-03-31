library ieee;
use ieee.std_logic_1164.all;

entity fdnrbq_x1 is
    port (
        q : out std_logic;
        ck, d, rd : in std_logic
    );
end entity fdnrbq_x1;

architecture rtl of fdnrbq_x1 is
begin
    process (ck, rd) is
    begin
        if rd = '0' then
            q <= '0';
        elsif falling_edge(ck) then
            q <= d;
        end if;
    end process;
end architecture rtl;
