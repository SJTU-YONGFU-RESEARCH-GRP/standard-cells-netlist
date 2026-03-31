`timescale 1ns/1ps
module tb;
  reg G, D;
  wire Q;
  ldpq_x1 dut (.Q(Q), .G(G), .D(D));
  initial begin
    G = 0; D = 0; #1;
    G = 1; D = 1; #1; if (Q !== 1'b1) $fatal(1, "LDPQ");
    $display("TB_PASS %s", "ldpq_x1");
    $finish(0);
  end
endmodule
