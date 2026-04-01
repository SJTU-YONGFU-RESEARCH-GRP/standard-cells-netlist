`timescale 1ns/1ps
module tb;
  wire out;
  reg in0, in1;
  xor2_x1 dut (.X(out), .A1(in0), .A2(in1));
  initial begin
      in0=1'b0; in1=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "XOR2 mismatch vec=%0d", 0);
      in0=1'b1; in1=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "XOR2 mismatch vec=%0d", 1);
      in0=1'b0; in1=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "XOR2 mismatch vec=%0d", 2);
      in0=1'b1; in1=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "XOR2 mismatch vec=%0d", 3);
    $display("TB_PASS %s", "xor2_x1");
    $finish(0);
  end
endmodule
