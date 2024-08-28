//JK FLIPFLOP

module jk_ff(
    input j,
    input k,
    input clk,
    output reg q
);

  always @(posedge clk) begin
    case ({j, k})
      2'b00: q <= q;      // No change
      2'b01: q <= 0;    
      2'b10: q <= 1;      
      2'b11: q <= ~q;     // Toggle
    endcase
  end

endmodule
