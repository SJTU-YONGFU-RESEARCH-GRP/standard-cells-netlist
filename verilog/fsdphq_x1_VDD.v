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
module fsdphq_x1 (Q, CK, D, SI, SE, EN, VDD, VSS);
   output reg Q;
   input CK, D, SI, SE, EN;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire din = SE ? SI : D;
   always @(posedge CK) begin
       if (EN)
           Q <= din;
   end
   `else
   wire din = SE ? SI : D;
   always @(posedge CK) begin
       if (EN)
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
(EN +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
