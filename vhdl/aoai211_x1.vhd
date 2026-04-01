--%BEGIN aoai211_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity aoai211_x1 is
   port (
      A1, A2, B, C : in STD_LOGIC;
      X : out STD_LOGIC
   );
end aoai211_x1;

architecture aoai211_x1_arch of aoai211_x1 is
begin

   VitalBehavior : Process (A1, A2, B, C)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not ((((A1 and A2) or B) and C));

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end aoai211_x1_arch;

--%END aoai211_x1
