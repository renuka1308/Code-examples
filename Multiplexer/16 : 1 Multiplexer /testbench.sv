//testbench
 
module tb;
  reg [15:0] A;
  reg [3:0] S;
  wire Y;
  
  //instantiate
  mux_16to1 mux(.in(A),.sel(S),.out(Y));
  
  initial begin
    $dumpfile("mux_16to1.vcd");
    $dumpvars(0,tb);
    
    $monitor($time," A=%h ,S=%h ,Y=%b",A,S,Y);
    
    #5 A=16'h3f0a;S=4'h0;
    #5 S=4'h1;
    #5 S=4'h4;
    #10 S=4'he;
    #15 $finish;
  end
  
endmodule