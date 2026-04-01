`timescale 1ns/1ps
module tb;
  wire VDD, VSS, VDDR;
  assign VDD = 1'b1;
  assign VSS = 1'b0;
  assign VDDR = 1'b1;
  tappp_x1 dut (.VDD(VDD), .VSS(VSS), .VDDR(VDDR));
  initial begin #1;
    $display("TB_PASS %s", "tappp_x1");
    $finish(0);
  end
endmodule
