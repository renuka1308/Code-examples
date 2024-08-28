//Full adder 

module full_adder(input a,b,cin,
                 output reg sum, cout);
  
  //behavioral modeling
  always @(*)
    begin
   sum = a ^ b ^ cin;
   cout = a & b | cin & (a ^ b);
    end
endmodule