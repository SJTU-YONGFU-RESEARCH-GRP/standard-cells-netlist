--%BEGIN inv_pw_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity inv_pw_x1 is
   port (
      VDD, VSS, VDDR, VBP, VBN : inout STD_LOGIC;
      A : in STD_LOGIC;
      X : out STD_LOGIC
   );
end inv_pw_x1;

architecture inv_pw_x1_arch of inv_pw_x1 is
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

end inv_pw_x1_arch;

--%END inv_pw_x1
