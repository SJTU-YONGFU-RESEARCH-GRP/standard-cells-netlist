library ieee;
use ieee.std_logic_1164.all;

entity fdprb_x1 is
    port (
        q, qn : out std_logic;
        ck, d, rd : in std_logic
    );
end entity fdprb_x1;

architecture rtl of fdprb_x1 is
begin
    process (ck, rd) is
    begin
        if rd = '0' then
            q <= '0';
            qn <= '1';
        elsif rising_edge(ck) then
            q <= d;
            qn <= not d;
        end if;
    end process;
end architecture rtl;
