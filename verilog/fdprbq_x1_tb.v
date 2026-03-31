`timescale 1ns/1ps
module tb;
  reg CK, D, RD;
  wire Q;
  fdprbq_x1 dut (.Q(Q), .CK(CK), .D(D), .RD(RD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    RD = 0; D = 1; #1; if (Q !== 1'b0) $fatal(1, "FDPRBQ rd");
    RD = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FDPRBQ d");
    $display("TB_PASS %s", "fdprbq_x1");
    $finish(0);
  end
endmodule
