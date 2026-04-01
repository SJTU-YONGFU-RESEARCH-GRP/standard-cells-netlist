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
module oai31_x1 (X, A1, A2, A3, B);
   output X;
   input A1, A2, A3, B;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire t0, t1;
   or #`STDCELL_COMBO_DELAY(t0, A1, A2, A3);
   and #`STDCELL_COMBO_DELAY(t1, t0, B);
   not #`STDCELL_COMBO_DELAY(X, t1);
   `else
   wire t0, t1;
   or (t0, A1, A2, A3);
   and (t1, t0, B);
   not (X, t1);
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
(B -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
