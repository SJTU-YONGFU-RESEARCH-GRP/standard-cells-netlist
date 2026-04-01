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
module ao41_x1 (X, A1, A2, A3, A4, B);
   output X;
   input A1, A2, A3, A4, B;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire t0;
   and #`STDCELL_COMBO_DELAY(t0, A1, A2, A3, A4);
   or #`STDCELL_COMBO_DELAY(X, t0, B);
   `else
   wire t0;
   and (t0, A1, A2, A3, A4);
   or (X, t0, B);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A1 +=> X)=(0, 0);
(A2 +=> X)=(0, 0);
(A3 +=> X)=(0, 0);
(A4 +=> X)=(0, 0);
(B +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
