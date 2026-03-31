`timescale 1ns/1ps
module tb;
  reg CK, D, RS;
  wire Q;
  fdpcbq_x1 dut (.Q(Q), .CK(CK), .D(D), .RS(RS));
  initial CK = 0;
  always #5 CK = ~CK;
  initial begin
    D = 1; RS = 0; @(posedge CK); #1;if (Q !== 1'b0) $fatal(1, "FDPCBQ clr");
    RS = 1; @(posedge CK); #1;if (Q !== 1'b1) $fatal(1, "FDPCBQ d");
    $display("TB_PASS %s", "fdpcbq_x1");
    $finish(0);
  end
endmodule
