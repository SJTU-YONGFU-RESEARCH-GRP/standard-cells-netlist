`timescale 1ns/1ps
module tb;
  reg [3:0] a, b;
  wire [7:0] p;
  mult4x4_x1 dut (.P0(p[0]), .P1(p[1]), .P2(p[2]), .P3(p[3]), .P4(p[4]), .P5(p[5]), .P6(p[6]), .P7(p[7]), .A0(a[0]), .A1(a[1]), .A2(a[2]), .A3(a[3]), .B0(b[0]), .B1(b[1]), .B2(b[2]), .B3(b[3]));
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
