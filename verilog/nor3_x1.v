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
module nor3_x1 (X, A1, A2, A3);
   output X;
   input A1, A2, A3;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   nor #`STDCELL_COMBO_DELAY(X, A1, A2, A3);
   `else
   nor (X, A1, A2, A3);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A1 -=> X)=(0, 0);
(A2 -=> X)=(0, 0);
(A3 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
