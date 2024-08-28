//testbench

module tb;
  reg [3:0] g;
  wire [3:0] b;
  
  
  //instantiate
  gray_to_binary g2b(.g(g),
                     .b(b));
  
  initial
    begin
      $dumpfile("gray_to_binary.vcd");
      $dumpvars(0,tb);
      
      $monitor($time, 
               " gray_code=%b , binary_code=%b",
               g,b);
      
      g = 4'b0010; 
      #10 g = 4'b0110;
      #5 g = 4'b1010;
      #10 g = 4'b1110;
      #30 $finish;
    end
  
  
endmodule