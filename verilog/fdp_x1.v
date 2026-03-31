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
module fdp_x1 (Q, QN, CK, D);
   output reg Q, QN;
   input CK, D;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   always @(posedge CK) begin
       Q <= D;
       QN <= ~D;
   end
   `else
   always @(posedge CK) begin
       Q <= D;
       QN <= ~D;
   end
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(CK +=> Q)=(0, 0);
(CK +=> QN)=(0, 0);
(D +=> Q)=(0, 0);
(D +=> QN)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
