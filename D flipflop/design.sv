// D flipflop 


module d_ff(input d,clk,rst, //INPUT
            output reg q);   //OUTPUT
  
  always @(posedge clk or negedge rst)
    begin
      if (!rst)
        q <= 0; // Reset the output to 0
      else
        q <= d; // On clock edge, assign input D to output Q
    end
endmodule

