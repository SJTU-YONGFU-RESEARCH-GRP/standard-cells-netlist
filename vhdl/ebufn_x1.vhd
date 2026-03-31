library ieee;
use ieee.std_logic_1164.all;

entity ebufn_x1 is
    port (
        A, EN : in std_logic;
        \X\ : out std_logic
    );
end entity ebufn_x1;

architecture rtl of ebufn_x1 is
begin
    \X\ <= A when EN = '0' else 'Z';
end architecture rtl;
