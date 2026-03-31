`timescale 1ns/1ps
module tb;
  reg [3:0] a, b;
  wire [7:0] p;
  mult4x4_x1 dut (.p0(p[0]), .p1(p[1]), .p2(p[2]), .p3(p[3]), .p4(p[4]), .p5(p[5]), .p6(p[6]), .p7(p[7]), .a0(a[0]), .a1(a[1]), .a2(a[2]), .a3(a[3]), .b0(b[0]), .b1(b[1]), .b2(b[2]), .b3(b[3]));
  integer aa, bb;
  reg [7:0] ee;
  initial begin
    for (aa = 0; aa < 16; aa = aa + 1)
      for (bb = 0; bb < 16; bb = bb + 1) begin
        a = aa; b = bb;
        #1;
        ee = aa * bb;
        if (p !== ee) $fatal(1, "MULT4X4");
      end
    $display("TB_PASS %s", "mult4x4_x1");
    $finish(0);
  end
endmodule
