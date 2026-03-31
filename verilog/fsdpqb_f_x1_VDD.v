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
module fsdpqb_f_x1 (QN, CK, D, SI, SE, VDD, VSS);
   output reg QN;
   input CK, D, SI, SE;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire din = SE ? SI : D;
   always @(posedge CK)
       QN <= ~din;
   `else
   wire din = SE ? SI : D;
   always @(posedge CK)
       QN <= ~din;
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(CK +=> QN)=(0, 0);
(D +=> QN)=(0, 0);
(SI +=> QN)=(0, 0);
(SE +=> QN)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
