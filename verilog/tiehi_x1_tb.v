`timescale 1ns/1ps
module tb;
  wire w;
  tiehi_x1 dut (.L_HI(w));
  initial begin #1; if (w !== 1'b1) $fatal(1, "tiehi");
    $display("TB_PASS %s", "tiehi_x1");
    $finish(0);
  end
endmodule
