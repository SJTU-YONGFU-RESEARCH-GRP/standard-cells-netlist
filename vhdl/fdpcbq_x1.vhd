library ieee;
use ieee.std_logic_1164.all;

entity fdpcbq_x1 is
    port (
        q : out std_logic;
        ck, d, rs : in std_logic
    );
end entity fdpcbq_x1;

architecture rtl of fdpcbq_x1 is
begin
    process (ck) is
    begin
        if rising_edge(ck) then
            q <= d and rs;
        end if;
    end process;
end architecture rtl;
