--%BEGIN aoi41_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity aoi41_x1 is
   port (
      A1, A2, A3, A4, B : in STD_LOGIC;
      X : out STD_LOGIC
   );
end aoi41_x1;

architecture aoi41_x1_arch of aoi41_x1 is
begin

   VitalBehavior : Process (A1, A2, A3, A4, B)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not (((A1 and A2 and A3 and A4) or B));

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end aoi41_x1_arch;

--%END aoi41_x1
