library ieee;
use ieee.std_logic_1164.all;

entity oai21i_x1 is
    port (
        A1, A2, B : in std_logic;
        \X\ : out std_logic
    );
end entity oai21i_x1;

architecture rtl of oai21i_x1 is
begin
    \X\ <= not (((A1 or A2) and (not B)));
end architecture rtl;
