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
module ao21i_x1 (X, A1, A2, B, VDD, VSS);
   output X;
   input A1, A2, B;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire t0, in2_b;
   and #`STDCELL_COMBO_DELAY(t0, A1, A2);
   not #`STDCELL_COMBO_DELAY(in2_b, B);
   or #`STDCELL_COMBO_DELAY(X, t0, in2_b);
   `else
   wire t0, in2_b;
   and (t0, A1, A2);
   not (in2_b, B);
   or (X, t0, in2_b);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A1 +=> X)=(0, 0);
(A2 +=> X)=(0, 0);
(B +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
