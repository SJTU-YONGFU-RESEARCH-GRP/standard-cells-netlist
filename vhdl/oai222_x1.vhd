--%BEGIN oai222_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity oai222_x1 is
   port (
      A1, A2, B1, B2, C1, C2 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end oai222_x1;

architecture oai222_x1_arch of oai222_x1 is
begin

   VitalBehavior : Process (A1, A2, B1, B2, C1, C2)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not (((A1 or A2) and (B1 or B2) and (C1 or C2)));

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end oai222_x1_arch;

--%END oai222_x1
