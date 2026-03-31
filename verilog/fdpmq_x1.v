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
module fdpmq_x1 (Q, CK, D0, D1, S);
   output reg Q;
   input CK, D0, D1, S;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire d_mux = S ? D1 : D0;
   always @(posedge CK)
       Q <= d_mux;
   `else
   wire d_mux = S ? D1 : D0;
   always @(posedge CK)
       Q <= d_mux;
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(CK +=> Q)=(0, 0);
(D0 +=> Q)=(0, 0);
(D1 +=> Q)=(0, 0);
(S +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
