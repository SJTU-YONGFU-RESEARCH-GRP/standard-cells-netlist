--%BEGIN oai2111_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity oai2111_x1 is
   port (
      A1, A2, B1, B2, C : in STD_LOGIC;
      X : out STD_LOGIC
   );
end oai2111_x1;

architecture oai2111_x1_arch of oai2111_x1 is
begin

   VitalBehavior : Process (A1, A2, B1, B2, C)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not (((A1 or A2) and B1 and B2 and C));

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end oai2111_x1_arch;

--%END oai2111_x1
