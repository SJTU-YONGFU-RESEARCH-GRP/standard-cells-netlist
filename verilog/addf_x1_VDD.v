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
module addf_x1 (S, CO, A, B, CI, VDD, VSS);
   output S, CO;
   input A, B, CI;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY S = A ^ B ^ CI;
   assign #`STDCELL_COMBO_DELAY CO = (A & B) | (A & CI) | (B & CI);
   `else
   assign S = A ^ B ^ CI;
   assign CO = (A & B) | (A & CI) | (B & CI);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
if ((~(A) & B)) (CI +=> CO)=(0, 0);
if ((A & ~(B))) (CI +=> CO)=(0, 0);
if ((~(A) & CI)) (B +=> CO)=(0, 0);
if ((A & ~(CI))) (B +=> CO)=(0, 0);
if ((~(B) & CI)) (A +=> CO)=(0, 0);
if ((B & ~(CI))) (A +=> CO)=(0, 0);
if ((~(A) & ~(B))) (CI +=> S)=(0, 0);
if ((~(A) & B)) (CI -=> S)=(0, 0);
if ((A & ~(B))) (CI -=> S)=(0, 0);
if ((A & B)) (CI +=> S)=(0, 0);
if ((~(A) & ~(CI))) (B +=> S)=(0, 0);
if ((~(A) & CI)) (B -=> S)=(0, 0);
if ((A & ~(CI))) (B -=> S)=(0, 0);
if ((A & CI)) (B +=> S)=(0, 0);
if ((~(B) & ~(CI))) (A +=> S)=(0, 0);
if ((~(B) & CI)) (A -=> S)=(0, 0);
if ((B & ~(CI))) (A -=> S)=(0, 0);
if ((B & CI)) (A +=> S)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
