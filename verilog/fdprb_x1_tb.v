`timescale 1ns/1ps
module tb;
  reg CK, D, RD;
  wire Q, QN;
  fdprb_x1 dut (.Q(Q), .QN(QN), .CK(CK), .D(D), .RD(RD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    RD = 0; D = 1; @(posedge CK); #1;RD = 1; D = 1; @(posedge CK); #1;if (Q !== 1'b1 || QN !== 1'b0) $fatal(1, "FDPRB");
    $display("TB_PASS %s", "fdprb_x1");
    $finish(0);
  end
endmodule
