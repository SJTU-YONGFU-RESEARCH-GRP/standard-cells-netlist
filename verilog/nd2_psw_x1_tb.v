`timescale 1ns/1ps
module tb;
  wire out;
  reg a1, a2;
  nd2_psw_x1 dut (.X(out), .A1(a1), .A2(a2));
  initial begin
      a1=1'b0; a2=1'b0;
      #1;
      if (out !== ((~(a1 & a2)) & 1'b1)) $fatal(1, "ND2_PSW mismatch vec=%0d", 0);
      a1=1'b1; a2=1'b0;
      #1;
      if (out !== ((~(a1 & a2)) & 1'b1)) $fatal(1, "ND2_PSW mismatch vec=%0d", 1);
      a1=1'b0; a2=1'b1;
      #1;
      if (out !== ((~(a1 & a2)) & 1'b1)) $fatal(1, "ND2_PSW mismatch vec=%0d", 2);
      a1=1'b1; a2=1'b1;
      #1;
      if (out !== ((~(a1 & a2)) & 1'b1)) $fatal(1, "ND2_PSW mismatch vec=%0d", 3);
    $display("TB_PASS %s", "nd2_psw_x1");
    $finish(0);
  end
endmodule
