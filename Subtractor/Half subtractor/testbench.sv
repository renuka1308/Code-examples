//testbench

module tb;
  reg a,b;
  wire diff,borrow;
  
  //instantiate DUT
  half_subtractor(.a(a),
                  .b(b),
                  .diff(diff),
                  .borrow(borrow));
  
  initial begin
    $dumpfile("half_subtractor.vcd");
    $dumpvars(1,tb);
    
    $monitor($time,
             " a=%b,b=%b,diff=%b,borrow=%b,",
             a,b,diff,borrow);
    
       {a,b}=2'b00;
    #5 {a,b}=2'b01;
    #5 {a,b}=2'b10;
    #5 {a,b}=2'b11;
    #20 $finish;
  end
  
  
endmodule