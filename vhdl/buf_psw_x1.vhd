--%BEGIN buf_psw_x1


library  ieee;
use  ieee.std_logic_1164.all;
use  ieee.Vital_Primitives.all;
use IEEE.VITAL_Timing.all;
entity buf_psw_x1 is
   port (
      VDD, VSS, VDDR, VBP, VBN : inout STD_LOGIC;
      A : in STD_LOGIC;
      X : out STD_LOGIC
   );
end buf_psw_x1;

architecture buf_psw_x1_arch of buf_psw_x1 is
begin

   VitalBehavior : Process (VDD, VSS, VDDR, VBP, VBN, A)
      VARIABLE INT_RES_0 : STD_LOGIC := 'X';
   begin

      ------------------------------------
      --     FUNCTIONALITY SECTION      --
      ------------------------------------

      INT_RES_0 := A;

      ------------------------------------
      X <= INT_RES_0;
   end Process VitalBehavior;

end buf_psw_x1_arch;

--%END buf_psw_x1
