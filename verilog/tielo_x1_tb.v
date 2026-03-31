`timescale 1ns/1ps
module tb;
  wire w;
  tielo_x1 dut (.L_LO(w));
  initial begin #1; if (w !== 1'b0) $fatal(1, "tielo");
    $display("TB_PASS %s", "tielo_x1");
    $finish(0);
  end
endmodule
