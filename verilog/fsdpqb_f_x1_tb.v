`timescale 1ns/1ps
module tb;
  reg CK, D, SI, SE;
  wire QN;
  fsdpqb_f_x1 dut (.QN(QN), .CK(CK), .D(D), .SI(SI), .SE(SE));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D = 0; SI = 1; SE = 0; @(posedge CK); #1;if (QN !== 1'b1) $fatal(1, "FSDPQB_F d");
    SE = 1; @(posedge CK); #1;if (QN !== 1'b0) $fatal(1, "FSDPQB_F si");
    $display("TB_PASS %s", "fsdpqb_f_x1");
    $finish(0);
  end
endmodule
