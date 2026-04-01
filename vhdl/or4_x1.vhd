--%BEGIN or4_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity or4_x1 is
   port (
      A1, A2, A3, A4 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end or4_x1;

architecture or4_x1_arch of or4_x1 is
begin

   VitalBehavior : Process (A1, A2, A3, A4)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A1 or A2 or A3 or A4;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end or4_x1_arch;

--%END or4_x1
