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
module addhii_x1 (S, CO, A, B);
   output S, CO;
   input A, B;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY S = A ^ (~B);
   assign #`STDCELL_COMBO_DELAY CO = A & (~B);
   `else
   assign S = A ^ (~B);
   assign CO = A & (~B);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A +=> S)=(0, 0);
(A +=> CO)=(0, 0);
(B +=> S)=(0, 0);
(B +=> CO)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
