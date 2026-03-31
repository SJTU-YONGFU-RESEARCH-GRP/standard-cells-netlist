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
module fsdpmq_x1 (Q, CK, D0, D1, S, SI, SE);
   output reg Q;
   input CK, D0, D1, S, SI, SE;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire dsel = S ? D1 : D0;
   wire din = SE ? SI : dsel;
   always @(posedge CK)
       Q <= din;
   `else
   wire dsel = S ? D1 : D0;
   wire din = SE ? SI : dsel;
   always @(posedge CK)
       Q <= din;
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
(SI +=> Q)=(0, 0);
(SE +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
