`timescale 1ns/1ps
module tb;
  reg CK, D;
  wire Q;
  fdpq_x1 dut (.Q(Q), .CK(CK), .D(D));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D = 0; @(posedge CK); #1;D = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FDPQ");
    $display("TB_PASS %s", "fdpq_x1");
    $finish(0);
  end
endmodule
