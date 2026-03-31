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
module addfcscii_x1 (S, CO0, CO1, A, B, CI0, CI1, CS);
   output S, CO0, CO1;
   input A, B, CI0, CI1, CS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY S = ((~CS) & (A ^ B ^ (~CI0))) | (CS & (A ^ B ^ (~CI1)));
   assign #`STDCELL_COMBO_DELAY CO0 = (A & B) | (A & (~CI0)) | (B & (~CI0));
   assign #`STDCELL_COMBO_DELAY CO1 = (A & B) | (A & (~CI1)) | (B & (~CI1));
   `else
   assign S = ((~CS) & (A ^ B ^ (~CI0))) | (CS & (A ^ B ^ (~CI1)));
   assign CO0 = (A & B) | (A & (~CI0)) | (B & (~CI0));
   assign CO1 = (A & B) | (A & (~CI1)) | (B & (~CI1));
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A +=> S)=(0, 0);
(A +=> CO0)=(0, 0);
(A +=> CO1)=(0, 0);
(B +=> S)=(0, 0);
(B +=> CO0)=(0, 0);
(B +=> CO1)=(0, 0);
(CI0 +=> S)=(0, 0);
(CI0 +=> CO0)=(0, 0);
(CI0 +=> CO1)=(0, 0);
(CI1 +=> S)=(0, 0);
(CI1 +=> CO0)=(0, 0);
(CI1 +=> CO1)=(0, 0);
(CS +=> S)=(0, 0);
(CS +=> CO0)=(0, 0);
(CS +=> CO1)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
