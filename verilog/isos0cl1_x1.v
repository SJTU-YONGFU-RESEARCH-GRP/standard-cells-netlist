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
module isos0cl1_x1 (X, A, EN0, VDD, VSS, VDDR, VBP, VBN);
   output X;
   input A, EN0;
   inout VDD, VSS, VDDR, VBP, VBN;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   or #`STDCELL_COMBO_DELAY(X, A, EN0);
   `else
   or (X, A, EN0);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A +=> X)=(0, 0);
(EN0 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
