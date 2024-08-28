
//testbench

module tb;
  reg [3:0] binary;
  wire [3:0] gray;
  
  //instantiate
  binary_to_gray b2g(.binary(binary),
                     .gray(gray));
  initial begin
      $dumpfile("binary_to_gray.vcd");
      $dumpvars(0,tb);
    
    $monitor($time," binary=%b , gray=%b", binary,gray );
    
    binary = 4'b0000;
    #2 binary = 4'b0001;
    #2 binary = 4'b1101;
    #2 binary = 4'b1001;
    #2 binary = 4'b0101;
    #2 binary = 4'b0111;
    #2 binary = 4'b1111;
    #20 $finish;
  end
  
endmodule