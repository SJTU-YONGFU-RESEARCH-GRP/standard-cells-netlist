--%BEGIN aoi211_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity aoi211_x1 is
   port (
      A1, A2, B1, B2 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end aoi211_x1;

architecture aoi211_x1_arch of aoi211_x1 is
begin

   VitalBehavior : Process (A1, A2, B1, B2)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not (((A1 and A2) or B1 or B2));

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end aoi211_x1_arch;

--%END aoi211_x1
