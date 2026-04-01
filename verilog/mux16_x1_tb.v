`timescale 1ns/1ps
module tb;
  wire out;
  reg [15:0] d;
  reg [3:0] sel;
  integer k, idx;
  mux16_x1 dut (
    .X(out),
    .D0(d[0]),
    .D1(d[1]),
    .D2(d[2]),
    .D3(d[3]),
    .D4(d[4]),
    .D5(d[5]),
    .D6(d[6]),
    .D7(d[7]),
    .D8(d[8]),
    .D9(d[9]),
    .D10(d[10]),
    .D11(d[11]),
    .D12(d[12]),
    .D13(d[13]),
    .D14(d[14]),
    .D15(d[15]),
    .S0(sel[0]),
    .S1(sel[1]),
    .S2(sel[2]),
    .S3(sel[3])
  );
  initial begin
    for (k = 0; k < 64; k = k + 1) begin
      d = (k * 97 + 11) % (1 << 16);
      sel = (k / 4) % (1 << 4);
      #1;
      idx = sel;
      if (out !== ((d >> idx) & 1'b1))
        $fatal(1, "MUX wide mismatch vec=%0d", k);
    end
    $display("TB_PASS %s", "mux16_x1");
    $finish(0);
  end
endmodule
