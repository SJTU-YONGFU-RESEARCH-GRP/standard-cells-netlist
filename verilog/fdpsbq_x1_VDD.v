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
module fdpsbq_x1 (Q, CK, D, SD, VDD, VSS);
   output reg Q;
   input CK, D, SD;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   always @(posedge CK or negedge SD) begin
       if (!SD)
           Q <= 1'b1;
       else
           Q <= D;
   end
   `else
   always @(posedge CK or negedge SD) begin
       if (!SD)
           Q <= 1'b1;
       else
           Q <= D;
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
(SD +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
