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
module addhcscoi_x1 (S, CO0, CO1, A, B, CI, VDD, VSS);
   output S, CO0, CO1;
   input A, B, CI;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY S = A ^ B ^ CI;
   assign #`STDCELL_COMBO_DELAY CO0 = ~(A & B);
   assign #`STDCELL_COMBO_DELAY CO1 = ~(A | B);
   `else
   assign S = A ^ B ^ CI;
   assign CO0 = ~(A & B);
   assign CO1 = ~(A | B);
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
(CI +=> S)=(0, 0);
(CI +=> CO0)=(0, 0);
(CI +=> CO1)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
