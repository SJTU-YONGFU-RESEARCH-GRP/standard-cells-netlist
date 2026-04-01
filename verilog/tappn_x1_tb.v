`timescale 1ns/1ps
module tb;
  wire VDD, VSS, VBP, VBN;
  assign VDD = 1'b1;
  assign VSS = 1'b0;
  assign VBP = 1'b1;
  assign VBN = 1'b0;
  tappn_x1 dut (.VDD(VDD), .VSS(VSS), .VBP(VBP), .VBN(VBN));
  initial begin #1;
    $display("TB_PASS %s", "tappn_x1");
    $finish(0);
  end
endmodule
