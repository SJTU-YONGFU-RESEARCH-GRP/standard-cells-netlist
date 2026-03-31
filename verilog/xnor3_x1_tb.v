`timescale 1ns/1ps
module tb;
  wire out;
  reg in0, in1, in2;
  xnor3_x1 dut (.X(out), .A1(in0), .A2(in1), .A3(in2));
  initial begin
      in0=1'b0; in1=1'b0; in2=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "XNOR3 mismatch");
      in0=1'b1; in1=1'b0; in2=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "XNOR3 mismatch");
      in0=1'b0; in1=1'b1; in2=1'b0;
      #1;
      if (out !== 1'b0) $fatal(1, "XNOR3 mismatch");
      in0=1'b1; in1=1'b1; in2=1'b0;
      #1;
      if (out !== 1'b1) $fatal(1, "XNOR3 mismatch");
      in0=1'b0; in1=1'b0; in2=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "XNOR3 mismatch");
      in0=1'b1; in1=1'b0; in2=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "XNOR3 mismatch");
      in0=1'b0; in1=1'b1; in2=1'b1;
      #1;
      if (out !== 1'b1) $fatal(1, "XNOR3 mismatch");
      in0=1'b1; in1=1'b1; in2=1'b1;
      #1;
      if (out !== 1'b0) $fatal(1, "XNOR3 mismatch");
    $display("TB_PASS %s", "xnor3_x1");
    $finish(0);
  end
endmodule
