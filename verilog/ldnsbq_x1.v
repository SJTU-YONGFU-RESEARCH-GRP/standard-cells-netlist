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
module ldnsbq_x1 (Q, G, D, SD);
   output reg Q;
   input G, D, SD;

   /////////////////////////////////////
   //          FUNCTIONALITY          //
   /////////////////////////////////////

   `ifdef VIRL_functiononly
   always @* begin
       if (!SD)
           Q = 1'b1;
       else if (!G)
           Q = D;
   end
   `else
   always @* begin
       if (!SD)
           Q = 1'b1;
       else if (!G)
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
(SD +=> Q)=(0, 0);
endspecify
   `endif

endmodule
`endcelldefine
