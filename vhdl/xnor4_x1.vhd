--%BEGIN xnor4_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity xnor4_x1 is
   port (
      A1, A2, A3, A4 : in STD_LOGIC;
      X : out STD_LOGIC
   );
end xnor4_x1;

architecture xnor4_x1_arch of xnor4_x1 is
begin

   VitalBehavior : Process (A1, A2, A3, A4)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not (A1 xor A2 xor A3 xor A4);

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end xnor4_x1_arch;

--%END xnor4_x1
