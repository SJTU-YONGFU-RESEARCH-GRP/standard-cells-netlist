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
module benc_x1 (S, A, X, M0, M1, M2);
   output S, A, X;
   input M0, M1, M2;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY S = (~M2) & (M1 | M0);
   assign #`STDCELL_COMBO_DELAY A = M2 & ((~M1) | (~M0));
   assign #`STDCELL_COMBO_DELAY X = ~(M1 ^ M0);
   `else
   assign S = (~M2) & (M1 | M0);
   assign A = M2 & ((~M1) | (~M0));
   assign X = ~(M1 ^ M0);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(M0 +=> S)=(0, 0);
(M0 +=> A)=(0, 0);
(M0 +=> X)=(0, 0);
(M1 +=> S)=(0, 0);
(M1 +=> A)=(0, 0);
(M1 +=> X)=(0, 0);
(M2 +=> S)=(0, 0);
(M2 +=> A)=(0, 0);
(M2 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
