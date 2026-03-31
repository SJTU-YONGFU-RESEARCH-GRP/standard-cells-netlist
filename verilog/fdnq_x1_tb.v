`timescale 1ns/1ps
module tb;
  reg CK, D;
  wire Q;
  fdnq_x1 dut (.Q(Q), .CK(CK), .D(D));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D = 1; @(negedge CK); #1;if (Q !== 1'b1) $fatal(1, "FDNQ");
    $display("TB_PASS %s", "fdnq_x1");
    $finish(0);
  end
endmodule
