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
module pwr_management_x1 (VDD, VDDH, VSS);
   inout VDD, VDDH, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   // power management / isolation anchor: connect VDD (core), VDDH (domain/I/O), VSS per floorplan.
   `else
   // power management / isolation anchor: connect VDD (core), VDDH (domain/I/O), VSS per floorplan.
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

   `endif

endmodule
`endcelldefine
