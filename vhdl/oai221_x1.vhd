library ieee;
use ieee.std_logic_1164.all;

entity oai221_x1 is
    port (
        A1, A2, B1, B2, in4 : in std_logic;
        \X\ : out std_logic
    );
end entity oai221_x1;

architecture rtl of oai221_x1 is
begin
    \X\ <= not (((A1 or A2) and (B1 or B2) and in4));
end architecture rtl;
