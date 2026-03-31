library ieee;
use ieee.std_logic_1164.all;

entity fdpq_x1 is
    port (
        q : out std_logic;
        ck, d : in std_logic
    );
end entity fdpq_x1;

architecture rtl of fdpq_x1 is
begin
    process (ck) is
    begin
        if rising_edge(ck) then
            q <= d;
        end if;
    end process;
end architecture rtl;
