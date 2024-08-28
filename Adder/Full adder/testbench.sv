//testbench for full adder
module tb;
  reg a,b,cin;
  wire sum,cout;
  
  //instantiate DUT
  full_adder fa(.a(a),
                .b(b),
                .cin(cin),
                .sum(sum),
                .cout(cout));
  
  initial begin
    $dumpfile("full_adder.vcd");
    $dumpvars(0,tb);
      
       {a,b,cin} = 3'b000;
    #2 {a,b,cin} = 3'b001;
    #2 {a,b,cin} = 3'b010;
    #2 {a,b,cin} = 3'b011;
    #2 {a,b,cin} = 3'b100;
    #2 {a,b,cin} = 3'b101;
    #2 {a,b,cin} = 3'b110;
    #2 {a,b,cin} = 3'b111;
    #20 $finish;
    
  end
  
  initial
  $monitor($time ,
              " a=%b , b=%b , cin=%b ,sum=%b,cout=%b",
              a,b,cin,sum,cout);
  
endmodule