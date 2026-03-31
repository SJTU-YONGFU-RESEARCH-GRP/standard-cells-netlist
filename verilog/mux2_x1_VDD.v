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
module mux2_x1 (X, D0, D1, S, VDD, VSS);
   output X;
   input D0, D1, S;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY X = S ? D1 : D0;
   `else
   assign X = S ? D1 : D0;
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(D0 +=> X)=(0, 0);
(D1 +=> X)=(0, 0);
(S +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
