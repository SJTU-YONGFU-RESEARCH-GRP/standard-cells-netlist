`timescale 1ns/1ps
module tb;
  reg CK, D, RD, SD;
  wire Q;
  fdprbsbq_x1 dut (.Q(Q), .CK(CK), .D(D), .RD(RD), .SD(SD));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    RD = 0; SD = 1; D = 1; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FDPRBSBQ rd");
    RD = 1; SD = 0; #1; if (Q !== 1'b1) $fatal(1, "FDPRBSBQ sd");
    SD = 1; D = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FDPRBSBQ d");
    $display("TB_PASS %s", "fdprbsbq_x1");
    $finish(0);
  end
endmodule
