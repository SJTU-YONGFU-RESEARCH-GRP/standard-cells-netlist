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
module nand4i_x1 (X, A1, A2, A3, A4, VDD, VSS);
   output X;
   input A1, A2, A3, A4;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   wire in0_b;
   not #`STDCELL_COMBO_DELAY(in0_b, A1);
   nand #`STDCELL_COMBO_DELAY(X, in0_b, A2, A3, A4);
   `else
   wire in0_b;
   not (in0_b, A1);
   nand (X, in0_b, A2, A3, A4);
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(A1 -=> X)=(0, 0);
(A2 -=> X)=(0, 0);
(A3 -=> X)=(0, 0);
(A4 -=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
