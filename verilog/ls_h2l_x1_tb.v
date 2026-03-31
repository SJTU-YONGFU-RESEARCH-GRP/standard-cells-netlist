`timescale 1ns/1ps
module tb;
  wire VDDL;
  wire VDDH;
  wire VSS;
  assign VDDL = 1'b1;
  assign VDDH = 1'b1;
  assign VSS = 1'b0;
  reg r_in;
  wire w_out;
  ls_h2l_x1 dut (.in0(r_in), .out(w_out), .VDDL(VDDL), .VDDH(VDDH), .VSS(VSS));
  initial begin
    r_in = 0; #1; if (w_out !== 1'b0) $fatal(1, "LS low");
    r_in = 1; #1; if (w_out !== 1'b1) $fatal(1, "LS high");
    $display("TB_PASS %s", "ls_h2l_x1");
    $finish(0);
  end
endmodule
