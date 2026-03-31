`timescale 1ns/1ps
module tb;
  wire sum;
  wire cout;
  reg in0, in1, in2;
  addfcoi_x1 dut (.S(sum), .CO(cout), .A(in0), .B(in1), .CI(in2));
  initial begin
      in0=1'b0; in1=1'b0; in2=1'b0;
      #1;
      if (sum !== 1'b0 || cout !== 1'b1) $fatal(1, "ADDFCOI mismatch");
      in0=1'b1; in1=1'b0; in2=1'b0;
      #1;
      if (sum !== 1'b1 || cout !== 1'b1) $fatal(1, "ADDFCOI mismatch");
      in0=1'b0; in1=1'b1; in2=1'b0;
      #1;
      if (sum !== 1'b1 || cout !== 1'b1) $fatal(1, "ADDFCOI mismatch");
      in0=1'b1; in1=1'b1; in2=1'b0;
      #1;
      if (sum !== 1'b0 || cout !== 1'b0) $fatal(1, "ADDFCOI mismatch");
      in0=1'b0; in1=1'b0; in2=1'b1;
      #1;
      if (sum !== 1'b1 || cout !== 1'b1) $fatal(1, "ADDFCOI mismatch");
      in0=1'b1; in1=1'b0; in2=1'b1;
      #1;
      if (sum !== 1'b0 || cout !== 1'b0) $fatal(1, "ADDFCOI mismatch");
      in0=1'b0; in1=1'b1; in2=1'b1;
      #1;
      if (sum !== 1'b0 || cout !== 1'b0) $fatal(1, "ADDFCOI mismatch");
      in0=1'b1; in1=1'b1; in2=1'b1;
      #1;
      if (sum !== 1'b1 || cout !== 1'b0) $fatal(1, "ADDFCOI mismatch");
    $display("TB_PASS %s", "addfcoi_x1");
    $finish(0);
  end
endmodule
