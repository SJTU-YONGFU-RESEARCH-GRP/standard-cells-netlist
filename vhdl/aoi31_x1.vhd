--%BEGIN aoi31_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity aoi31_x1 is
   port (
      A1, A2, A3, B : in STD_LOGIC;
      X : out STD_LOGIC
   );
end aoi31_x1;

architecture aoi31_x1_arch of aoi31_x1 is
begin

   VitalBehavior : Process (A1, A2, A3, B)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not (((A1 and A2 and A3) or B));

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end aoi31_x1_arch;

--%END aoi31_x1
