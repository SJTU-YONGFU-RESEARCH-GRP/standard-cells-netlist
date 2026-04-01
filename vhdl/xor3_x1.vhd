--%BEGIN xor3_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity xor3_x1 is
   port (
      A1, A2, A3 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end xor3_x1;

architecture xor3_x1_arch of xor3_x1 is
begin

   VitalBehavior : Process (A1, A2, A3)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A1 xor A2 xor A3;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end xor3_x1_arch;

--%END xor3_x1
