`timescale 1ns/1ps
module tb;
  wire s;
  wire a;
  wire x;
  reg m0, m1, m2;
  benc_x1 dut (.S(s), .A(a), .X(x), .M0(m0), .M1(m1), .M2(m2));
  initial begin
      m0=1'b0; m1=1'b0; m2=1'b0;
      #1;
      if (s !== 1'b0 || a !== 1'b0 || x !== 1'b1) $fatal(1, "BENC mismatch vec=%0d", 0);
      m0=1'b1; m1=1'b0; m2=1'b0;
      #1;
      if (s !== 1'b1 || a !== 1'b0 || x !== 1'b0) $fatal(1, "BENC mismatch vec=%0d", 1);
      m0=1'b0; m1=1'b1; m2=1'b0;
      #1;
      if (s !== 1'b1 || a !== 1'b0 || x !== 1'b0) $fatal(1, "BENC mismatch vec=%0d", 2);
      m0=1'b1; m1=1'b1; m2=1'b0;
      #1;
      if (s !== 1'b1 || a !== 1'b0 || x !== 1'b1) $fatal(1, "BENC mismatch vec=%0d", 3);
      m0=1'b0; m1=1'b0; m2=1'b1;
      #1;
      if (s !== 1'b0 || a !== 1'b1 || x !== 1'b1) $fatal(1, "BENC mismatch vec=%0d", 4);
      m0=1'b1; m1=1'b0; m2=1'b1;
      #1;
      if (s !== 1'b0 || a !== 1'b1 || x !== 1'b0) $fatal(1, "BENC mismatch vec=%0d", 5);
      m0=1'b0; m1=1'b1; m2=1'b1;
      #1;
      if (s !== 1'b0 || a !== 1'b1 || x !== 1'b0) $fatal(1, "BENC mismatch vec=%0d", 6);
      m0=1'b1; m1=1'b1; m2=1'b1;
      #1;
      if (s !== 1'b0 || a !== 1'b0 || x !== 1'b1) $fatal(1, "BENC mismatch vec=%0d", 7);
    $display("TB_PASS %s", "benc_x1");
    $finish(0);
  end
endmodule
