library ieee;
use ieee.std_logic_1164.all;

entity fsdprbq_fv1_x1 is
    port (
        q : out std_logic;
        ck, d, si, se, rd : in std_logic
    );
end entity fsdprbq_fv1_x1;

architecture rtl of fsdprbq_fv1_x1 is
    signal din : std_logic;
begin
    din <= si when se = '1' else d;
    process (ck, rd) is
    begin
        if rd = '0' then
            q <= '0';
        elsif rising_edge(ck) then
            q <= din;
        end if;
    end process;
end architecture rtl;
