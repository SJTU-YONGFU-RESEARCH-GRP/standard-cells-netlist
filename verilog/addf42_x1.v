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
module addf42_x1 (S, CO, ICO, A, B, C, D, CI);
   output S, CO, ICO;
   input A, B, C, D, CI;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY S = A ^ B ^ C ^ D ^ CI;
   assign #`STDCELL_COMBO_DELAY CO = ((A ^ B ^ C) & D) | ((A ^ B ^ C) & CI) | (D & CI);
   assign #`STDCELL_COMBO_DELAY ICO = (A & B) | (A & C) | (B & C);
   `else
   assign S = A ^ B ^ C ^ D ^ CI;
   assign CO = ((A ^ B ^ C) & D) | ((A ^ B ^ C) & CI) | (D & CI);
   assign ICO = (A & B) | (A & C) | (B & C);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A +=> S)=(0, 0);
(A +=> CO)=(0, 0);
(A +=> ICO)=(0, 0);
(B +=> S)=(0, 0);
(B +=> CO)=(0, 0);
(B +=> ICO)=(0, 0);
(C +=> S)=(0, 0);
(C +=> CO)=(0, 0);
(C +=> ICO)=(0, 0);
(D +=> S)=(0, 0);
(D +=> CO)=(0, 0);
(D +=> ICO)=(0, 0);
(CI +=> S)=(0, 0);
(CI +=> CO)=(0, 0);
(CI +=> ICO)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
