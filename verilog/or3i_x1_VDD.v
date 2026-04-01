`timescale 100ps / 1ps

`define STDCELL_SEQ_DELAY 1
`define STDCELL_COMBO_DELAY 1
`define STDCELL_CKGT_DELAY 0
`define STDCELL_LAT_DELAY 1

`ifdef VIRL_functiononly
    `delay_mode_distributed
    `define _fv
`else
    `delay_mode_path
`endif

`celldefine
module or3i_x1 (X, A, B1, B2, VDD, VSS);
   output X;
   input A, B1, B2;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire in0_b;
   not #`STDCELL_COMBO_DELAY(in0_b, A);
   or #`STDCELL_COMBO_DELAY(X, in0_b, B1, B2);
   `else
   wire in0_b;
   not (in0_b, A);
   or (X, in0_b, B1, B2);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A +=> X)=(0, 0);
(B1 +=> X)=(0, 0);
(B2 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
