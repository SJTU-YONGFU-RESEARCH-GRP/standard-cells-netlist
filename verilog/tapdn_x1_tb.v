`timescale 1ns/1ps
module tb;
  wire VDD, VSS, VBN;
  assign VDD = 1'b1;
  assign VSS = 1'b0;
  assign VBN = 1'b0;
  tapdn_x1 dut (.VDD(VDD), .VSS(VSS), .VBN(VBN));
  initial begin #1;
    $display("TB_PASS %s", "tapdn_x1");
    $finish(0);
  end
endmodule
