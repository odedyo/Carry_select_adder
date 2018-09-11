module Carry_Select_Adder(x,y,Cin,Cout,SUM);  
// --------------------parameter-------------------
parameter N=1;
// --------------------inputs----------------------
input [N:0]x;
input [N:0]y;
input Cin;
// --------------------outputs---------------------
output Cout;
output [N:0]SUM;
// --------------------wires-----------------------
wire [N:0]s_zero;
wire [N:0]s_one;
wire cin_zero;
wire cin_one;
  
//adder//
assign {cin_zero,s_zero}=x+y+1'b0;
assign {cin_one,s_one}=x+y+1'b1;
//mux//
assign Cout = (Cin)?cin_one:cin_zero;
assign SUM = (Cin)?s_one:s_zero;
endmodule 
// --------------------end--------------------------
