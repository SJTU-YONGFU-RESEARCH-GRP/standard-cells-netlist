--%BEGIN ebufn_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity ebufn_x1 is
   port (
      A, TE_B : in STD_LOGIC;
      X : out STD_LOGIC
   );
end ebufn_x1;

architecture ebufn_x1_arch of ebufn_x1 is
begin

   VitalBehavior : Process (A, TE_B)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A when TE_B = '0' else 'Z';

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end ebufn_x1_arch;

--%END ebufn_x1
