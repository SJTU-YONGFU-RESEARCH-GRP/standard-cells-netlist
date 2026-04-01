`timescale 1ns/1ps
module tb;
  wire VDD, VSS;
  assign VDD = 1'b1;
  assign VSS = 1'b0;
  tapds_x1 dut (.VDD(VDD), .VSS(VSS));
  initial begin #1;
    $display("TB_PASS %s", "tapds_x1");
    $finish(0);
  end
endmodule
