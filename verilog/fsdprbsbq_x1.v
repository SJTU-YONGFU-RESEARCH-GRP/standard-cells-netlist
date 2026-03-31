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
module fsdprbsbq_x1 (Q, CK, D, SI, SE, RD, SD);
   output reg Q;
   input CK, D, SI, SE, RD, SD;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire din = SE ? SI : D;
   always @(posedge CK or negedge RD or negedge SD) begin
       if (!RD)
           Q <= 1'b0;
       else if (!SD)
           Q <= 1'b1;
       else
           Q <= din;
   end
   `else
   wire din = SE ? SI : D;
   always @(posedge CK or negedge RD or negedge SD) begin
       if (!RD)
           Q <= 1'b0;
       else if (!SD)
           Q <= 1'b1;
       else
           Q <= din;
   end
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(CK +=> Q)=(0, 0);
(D +=> Q)=(0, 0);
(SI +=> Q)=(0, 0);
(SE +=> Q)=(0, 0);
(RD +=> Q)=(0, 0);
(SD +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
