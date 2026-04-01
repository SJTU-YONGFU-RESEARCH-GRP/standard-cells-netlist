`timescale 1ns/1ps
module tb;
  wire sum;
  wire cout;
  reg in0, in1, in2;
  addfcii_x1 dut (.S(sum), .CO(cout), .A(in0), .B(in1), .CI(in2));
  initial begin
      in0=1'b0; in1=1'b0; in2=1'b0;
      #1;
      if (sum !== 1'b1 || cout !== 1'b0) $fatal(1, "ADDFCII mismatch vec=%0d", 0);
      in0=1'b1; in1=1'b0; in2=1'b0;
      #1;
      if (sum !== 1'b0 || cout !== 1'b1) $fatal(1, "ADDFCII mismatch vec=%0d", 1);
      in0=1'b0; in1=1'b1; in2=1'b0;
      #1;
      if (sum !== 1'b0 || cout !== 1'b1) $fatal(1, "ADDFCII mismatch vec=%0d", 2);
      in0=1'b1; in1=1'b1; in2=1'b0;
      #1;
      if (sum !== 1'b1 || cout !== 1'b1) $fatal(1, "ADDFCII mismatch vec=%0d", 3);
      in0=1'b0; in1=1'b0; in2=1'b1;
      #1;
      if (sum !== 1'b0 || cout !== 1'b0) $fatal(1, "ADDFCII mismatch vec=%0d", 4);
      in0=1'b1; in1=1'b0; in2=1'b1;
      #1;
      if (sum !== 1'b1 || cout !== 1'b0) $fatal(1, "ADDFCII mismatch vec=%0d", 5);
      in0=1'b0; in1=1'b1; in2=1'b1;
      #1;
      if (sum !== 1'b1 || cout !== 1'b0) $fatal(1, "ADDFCII mismatch vec=%0d", 6);
      in0=1'b1; in1=1'b1; in2=1'b1;
      #1;
      if (sum !== 1'b0 || cout !== 1'b1) $fatal(1, "ADDFCII mismatch vec=%0d", 7);
    $display("TB_PASS %s", "addfcii_x1");
    $finish(0);
  end
endmodule
