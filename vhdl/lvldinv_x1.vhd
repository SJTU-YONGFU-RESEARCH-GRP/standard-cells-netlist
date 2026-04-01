--%BEGIN lvldinv_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity lvldinv_x1 is
   port (
      VDD, VSS, VDDR, VBP, VBN : inout STD_LOGIC;
      A : in STD_LOGIC;
      X : out STD_LOGIC
   );
end lvldinv_x1;

architecture lvldinv_x1_arch of lvldinv_x1 is
begin

   VitalBehavior : Process (VDD, VSS, VDDR, VBP, VBN, A)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := not A;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end lvldinv_x1_arch;

--%END lvldinv_x1
