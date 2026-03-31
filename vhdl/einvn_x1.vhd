library ieee;
use ieee.std_logic_1164.all;

entity einvn_x1 is
    port (
        A, EN : in std_logic;
        \X\ : out std_logic
    );
end entity einvn_x1;

architecture rtl of einvn_x1 is
begin
    \X\ <= (not A) when EN = '0' else 'Z';
end architecture rtl;
