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
module mux4_x1 (X, D0, D1, D2, D3, S0, S1);
   output X;
   input D0, D1, D2, D3, S0, S1;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   assign #`STDCELL_COMBO_DELAY X = (~S1 & ~S0) ? D0 : (~S1 & S0) ? D1 : (S1 & ~S0) ? D2 : D3;
   `else
   assign X = (~S1 & ~S0) ? D0 : (~S1 & S0) ? D1 : (S1 & ~S0) ? D2 : D3;
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(D0 +=> X)=(0, 0);
(D1 +=> X)=(0, 0);
(D2 +=> X)=(0, 0);
(D3 +=> X)=(0, 0);
(S0 +=> X)=(0, 0);
(S1 +=> X)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
