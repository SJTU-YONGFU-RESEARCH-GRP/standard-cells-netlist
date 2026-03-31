`timescale 1ns/1ps
module tb;
  reg G, D, RD;
  wire Q;
  ldnrbq_x1 dut (.Q(Q), .G(G), .D(D), .RD(RD));
  initial begin
    RD = 0; G = 0; D = 1; #1; if (Q !== 1'b0) $fatal(1, "LDNRBQ rd");
    RD = 1; G = 0; D = 1; #1; if (Q !== 1'b1) $fatal(1, "LDNRBQ d");
    $display("TB_PASS %s", "ldnrbq_x1");
    $finish(0);
  end
endmodule
