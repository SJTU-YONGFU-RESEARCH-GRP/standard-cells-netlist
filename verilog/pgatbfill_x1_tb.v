`timescale 1ns/1ps
module tb;
  reg ENX, EN;
  pgatbfill_x1 dut (.ENX(ENX), .EN(EN));
  initial begin
    ENX = 1'b0; EN = 1'b0; #1;
    ENX = 1'b1; EN = 1'b0; #1;
    ENX = 1'b0; EN = 1'b1; #1;
    ENX = 1'b1; EN = 1'b1; #1;
    $display("TB_PASS %s", "pgatbfill_x1");
    $finish(0);
  end
endmodule
