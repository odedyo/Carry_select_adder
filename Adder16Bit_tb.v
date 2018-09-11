`timescale 1ns / 100 ps
module Adder16Bit_tb();
reg Cin;
reg [15:0]x;
reg [15:0]y;
wire [15:0]Sum;
wire Cout;

Adder16Bit UUT (.Cin(Cin),.x(x),.y(y),.Sum(Sum),.Cout(Cout));

initial 
begin

x=16'b1001100101101100;
y=16'b1010101010101010;
Cin=1'b0;

#100;

x=16'b1101110100001100;
y=16'b1100111100100010;
Cin=1'b1;

#100;

x=16'b1111111100000000;
y=16'b0000000011111111;
Cin=1'b0;

#100;

$stop;
end
endmodule 