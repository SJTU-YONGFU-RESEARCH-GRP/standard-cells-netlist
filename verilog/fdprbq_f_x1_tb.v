`timescale 1ns/1ps
module tb;
  reg CK, D, RD;
  wire Q;
  fdprbq_f_x1 dut (.Q(Q), .CK(CK), .D(D), .RD(RD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    RD = 0; @(posedge CK); #1;RD = 1; D = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FDPRBQ_F");
    $display("TB_PASS %s", "fdprbq_f_x1");
    $finish(0);
  end
endmodule
