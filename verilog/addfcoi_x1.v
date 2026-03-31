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
module addfcoi_x1 (S, CO, A, B, CI);
   output S, CO;
   input A, B, CI;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY S = A ^ B ^ CI;
   assign #`STDCELL_COMBO_DELAY CO = ~((A & B) | (A & CI) | (B & CI));
   `else
   assign S = A ^ B ^ CI;
   assign CO = ~((A & B) | (A & CI) | (B & CI));
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A -=> S)=(0, 0);
(A -=> CO)=(0, 0);
(B -=> S)=(0, 0);
(B -=> CO)=(0, 0);
(CI -=> S)=(0, 0);
(CI -=> CO)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
