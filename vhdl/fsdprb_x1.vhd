library ieee;
use ieee.std_logic_1164.all;

entity fsdprb_x1 is
    port (
        q, qn : out std_logic;
        ck, d, si, se, rd : in std_logic
    );
end entity fsdprb_x1;

architecture rtl of fsdprb_x1 is
    signal din : std_logic;
begin
    din <= si when se = '1' else d;
    process (ck, rd) is
    begin
        if rd = '0' then
            q <= '0';
            qn <= '1';
        elsif rising_edge(ck) then
            q <= din;
            qn <= not din;
        end if;
    end process;
end architecture rtl;
