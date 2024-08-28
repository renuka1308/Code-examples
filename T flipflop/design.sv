module t_ff (
    input t,    // Toggle input
    input clk,  
    input rst,  
    output reg q // Output
);

  always @(posedge clk or negedge rst) begin
    if (!rst)
      q <= 0; // Reset output to 0
    else if (t)
      q <= ~q; // Toggle output
  end
endmodule
