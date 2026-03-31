`timescale 1ns/1ps
module tb;
  wire s;
  wire a;
  wire x;
  reg in0, in1, in2;
  addhcscoi_x1 dut (.S(s), .CO0(a), .CO1(x), .A(in0), .B(in1), .CI(in2));
  initial begin
      in0=1'b0; in1=1'b0; in2=1'b0;
      #1;
      if (s !== 1'b0 || a !== 1'b1 || x !== 1'b1) $fatal(1, "ADDHCSCOI mismatch");
      in0=1'b1; in1=1'b0; in2=1'b0;
      #1;
      if (s !== 1'b1 || a !== 1'b1 || x !== 1'b0) $fatal(1, "ADDHCSCOI mismatch");
      in0=1'b0; in1=1'b1; in2=1'b0;
      #1;
      if (s !== 1'b1 || a !== 1'b1 || x !== 1'b0) $fatal(1, "ADDHCSCOI mismatch");
      in0=1'b1; in1=1'b1; in2=1'b0;
      #1;
      if (s !== 1'b0 || a !== 1'b0 || x !== 1'b0) $fatal(1, "ADDHCSCOI mismatch");
      in0=1'b0; in1=1'b0; in2=1'b1;
      #1;
      if (s !== 1'b1 || a !== 1'b1 || x !== 1'b1) $fatal(1, "ADDHCSCOI mismatch");
      in0=1'b1; in1=1'b0; in2=1'b1;
      #1;
      if (s !== 1'b0 || a !== 1'b1 || x !== 1'b0) $fatal(1, "ADDHCSCOI mismatch");
      in0=1'b0; in1=1'b1; in2=1'b1;
      #1;
      if (s !== 1'b0 || a !== 1'b1 || x !== 1'b0) $fatal(1, "ADDHCSCOI mismatch");
      in0=1'b1; in1=1'b1; in2=1'b1;
      #1;
      if (s !== 1'b1 || a !== 1'b0 || x !== 1'b0) $fatal(1, "ADDHCSCOI mismatch");
    $display("TB_PASS %s", "addhcscoi_x1");
    $finish(0);
  end
endmodule
