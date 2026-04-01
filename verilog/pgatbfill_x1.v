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
module pgatbfill_x1 (ENX, EN, VDDP, VSS, VBP, VBN, VDDCF);
   input ENX, EN;
   inout VDDP, VSS, VBP, VBN, VDDCF;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   // Power-gate filler: physical/analog behavior in ref_lib SPICE.
   `else
   // Power-gate filler: physical/analog behavior in ref_lib SPICE.
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

   `endif

endmodule
`endcelldefine
