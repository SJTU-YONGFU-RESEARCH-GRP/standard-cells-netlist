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
module ldnq_x1 (Q, G, D, VDD, VSS);
   output reg Q;
   input G, D;
   inout VDD, VSS;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   always @* begin
       if (!G)
           Q = D;
   end
   `else
   always @* begin
       if (!G)
           Q = D;
   end
   `endif

   /////////////////////////////////////
   //             TIMING              //
   /////////////////////////////////////
   `ifdef VIRL_functiononly

   `else

specify
(G +=> Q)=(0, 0);
(D +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
