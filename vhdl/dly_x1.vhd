--%BEGIN dly_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity dly_x1 is
   port (
      A : in STD_LOGIC;
      X : out STD_LOGIC
   );
end dly_x1;

architecture dly_x1_arch of dly_x1 is
begin

   VitalBehavior : Process (A)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end dly_x1_arch;

--%END dly_x1
