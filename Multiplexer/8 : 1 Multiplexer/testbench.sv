// testbench for 8:1 mux

module tb;
  reg [7:0] in;
  reg [2:0] sel;
  wire out;
  
  //instantiate DUT
  mux_8to1 mux(.in(in),
               .sel(sel),
               .out(out));
  
  initial begin
    $dumpfile("mux_8to1.vcd");
    $dumpvars(0,tb);
    
    $monitor($time, 
             " in=%b,sel=%b ,out=%b",
             in,sel,out);
    in=8'b1001_0110;
    #5 sel=3'b000;
    #2 sel=3'b001;
    #4 sel=3'b010;
    #2 sel=3'b011;
    #5 sel=3'b100;
    #2 sel=3'b101;
    #10 sel=3'b110;
    #2 sel=3'b111;
    
    #50 $finish;
  end
  
endmodule