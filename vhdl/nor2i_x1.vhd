--%BEGIN nor2i_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity nor2i_x1 is
   port (
      A, B : in STD_LOGIC;
      X : out STD_LOGIC
   );
end nor2i_x1;

architecture nor2i_x1_arch of nor2i_x1 is
begin

   VitalBehavior : Process (A, B)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A nor B;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end nor2i_x1_arch;

--%END nor2i_x1
