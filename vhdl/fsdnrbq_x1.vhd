library ieee;
use ieee.std_logic_1164.all;

entity fsdnrbq_x1 is
    port (
        q : out std_logic;
        ck, d, si, se, rd : in std_logic
    );
end entity fsdnrbq_x1;

architecture rtl of fsdnrbq_x1 is
    signal din : std_logic;
begin
    din <= si when se = '1' else d;
    process (ck, rd) is
    begin
        if rd = '0' then
            q <= '0';
        elsif falling_edge(ck) then
            q <= din;
        end if;
    end process;
end architecture rtl;
