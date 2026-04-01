`timescale 1ns/1ps
module tb;
  reg [1:0] a, b;
  wire [3:0] p;
  mult2x2_x1 dut (.P0(p[0]), .P1(p[1]), .P2(p[2]), .P3(p[3]), .A0(a[0]), .A1(a[1]), .B0(b[0]), .B1(b[1]));
  integer aa, bb;
  initial begin
    for (aa = 0; aa < 4; aa = aa + 1)
      for (bb = 0; bb < 4; bb = bb + 1) begin
        a = aa; b = bb;
        #1;
        if (p != (aa * bb)) $fatal(1, "MULT2X2");
      end
    $display("TB_PASS %s", "mult2x2_x1");
    $finish(0);
  end
endmodule
