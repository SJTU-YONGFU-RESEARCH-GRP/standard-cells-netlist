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
module fdprbq_f_x1 (Q, CK, D, RD, VDD, VSS);
   output reg Q;
   input CK, D, RD;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   always @(posedge CK or negedge RD) begin
       if (!RD)
           Q <= 1'b0;
       else
           Q <= D;
   end
   `else
   always @(posedge CK or negedge RD) begin
       if (!RD)
           Q <= 1'b0;
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
(RD +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
