library ieee;
use ieee.std_logic_1164.all;

entity bufts_x1 is
    port (
        A, EN : in std_logic;
        \X\ : out std_logic
    );
end entity bufts_x1;

architecture rtl of bufts_x1 is
begin
    \X\ <= A when EN = '1' else 'Z';
end architecture rtl;
