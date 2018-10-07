module FullAdder(a,b,cin,s,cout);
input a,b,cin;
output s,cout;
wire t1,t2,t3;

xor(t1,a,b);
and(t2,a,b);
xor(s,t1,cin);
and(t3,t1,cin);
xor(cout,t3,t2);

endmodule

module Hatest;
reg A,B;
reg Cin;
wire S;
wire Cout;

FullAdder fa1(A,B,Cin,S,Cout);

initial 
begin
	A=1'b0;B=1'b0;Cin=1'b0;
	#5 A=1'b0;B=1'b1;Cin=1'b0;
	#5 A=1'b1;B=1'b0;Cin=1'b0;
	#5 A=1'b1;B=1'b1;Cin=1'b0;
	#5 A=1'b0;B=1'b0;Cin=1'b1;
	#5 A=1'b0;B=1'b1;Cin=1'b1;
	#5 A=1'b1;B=1'b0;Cin=1'b1;
	#5 A=1'b1;B=1'b1;Cin=1'b1;
end

initial 
	$monitor($time,"A=%b,B=%b,Cin=%b---S=%b,Cout=%b",A,B,Cin,S,Cout);

endmodule 