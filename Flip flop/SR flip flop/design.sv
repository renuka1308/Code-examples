// SR flipflop

module sr_ff (
    input s,     // Set input
    input r,     // Reset input
    input clk,   // Clock
    output reg q, // Output
    output reg qn // Inverted output
);

  always @(posedge clk) begin
    if (s && !r)
      q <= 1;   // Set output to 1
    else if (!s && r)
      q <= 0;   // Reset output to 0
      qn <= ~q;   // Inverted output
  end
endmodule
