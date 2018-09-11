module Adder16Bit(x,y,Cin,Cout,Sum);
input Cin;
input [15:0]x;
input [15:0]y;
output [15:0]Sum;
output Cout;

wire carry1;  
wire carry2;
wire carry3;
wire carry4;
wire carry5;	//5 differant wires of carry's

defparam adder1.N=0;
Carry_Select_Adder adder1 (.x(x[0]),.y(y[0]),.Cin(Cin),.Cout(carry1),.SUM(Sum[0])); //LSB//

defparam adder2.N=0;
Carry_Select_Adder adder2 (.x(x[1]),.y(y[1]),.Cin(carry1),.Cout(carry2),.SUM(Sum[1])); 

defparam adder3.N=1;
Carry_Select_Adder adder3 (.x(x[3:2]),.y(y[3:2]),.Cin(carry2),.Cout(carry3),.SUM(Sum[3:2])); 

defparam adder4.N=2;
Carry_Select_Adder adder4 (.x(x[6:4]),.y(y[6:4]),.Cin(carry3),.Cout(carry4),.SUM(Sum[6:4])); 

defparam adder5.N=3;
Carry_Select_Adder adder5 (.x(x[10:7]),.y(y[10:7]),.Cin(carry4),.Cout(carry5),.SUM(Sum[10:7])); 

defparam adder6.N=4;
Carry_Select_Adder adder6 (.x(x[15:11]),.y(y[15:11]),.Cin(carry5),.Cout(Cout),.SUM(Sum[15:11]));  //MSB//

endmodule


