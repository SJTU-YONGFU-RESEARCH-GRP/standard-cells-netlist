`timescale 1ns/1ps
module tb;
  wire VDD;
  wire VDDH;
  wire VSS;
  assign VDD = 1'b1;
  assign VDDH = 1'b1;
  assign VSS = 1'b0;
  pwr_header_x1 dut (.VDD(VDD), .VDDH(VDDH), .VSS(VSS));
  initial begin #1;
    $display("TB_PASS %s", "pwr_header_x1");
    $finish(0);
  end
endmodule
