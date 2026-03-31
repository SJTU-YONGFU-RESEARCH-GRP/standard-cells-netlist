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
module ls_h2l_x1 (in0, out, VDDL, VDDH, VSS);
   output out;
   input in0;
   inout VDDL, VDDH, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   // High-domain in0 (VDDH) → low-domain out (VDDL); zero-delay functional model.
   assign #`STDCELL_COMBO_DELAY out = in0;
   `else
   // High-domain in0 (VDDH) → low-domain out (VDDL); zero-delay functional model.
   assign out = in0;
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(in0 +=> out)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
