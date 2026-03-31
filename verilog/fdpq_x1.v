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
module fdpq_x1 (Q, CK, D);
   output reg Q;
   input CK, D;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   always @(posedge CK)
       Q <= D;
   `else
   always @(posedge CK)
       Q <= D;
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(CK +=> Q)=(0, 0);
(D +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
