`timescale 1ns/1ps
module tb;
  reg CK, D, EN;
  wire Q;
  fdphq_x1 dut (.Q(Q), .CK(CK), .D(D), .EN(EN));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    EN = 0; D = 0; @(posedge CK); #1;D = 1; @(posedge CK); #1;if (Q !== 1'bx && Q !== 1'b0) ;
    EN = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FDPHQ");
    $display("TB_PASS %s", "fdphq_x1");
    $finish(0);
  end
endmodule
