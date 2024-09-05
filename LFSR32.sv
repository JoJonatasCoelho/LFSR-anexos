module LFSR32(
  input clk,
  output reg [31:0] num
);

  initial num = 32'd15;

  wire fb = num[31];

  always_ff @(posedge clk) begin
    integer i;
    for (i = 31; i > 0; i = i - 1) begin
      num[i] <= num[i-1];
    num[0] <= num[30] ^ fb;
    end
  end
endmodule