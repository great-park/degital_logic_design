`timescale 1ns/1ns
module tb_RCA_4bit();

reg[3:0] x,y;
reg cin;
wire[3:0]s;
wire c_out;

RCA_4bit u0(.s(s),.c_out(c_out), .cin(cin), .x(x), .y(y));

initial
begin
x = 4'b0000; y = 4'b0000; cin = 0;
#100;
x = 4'b0001; y = 4'b0001; cin = 0;
#100;
x = 4'b0010; y = 4'b0011; cin = 0;
#100;
x = 4'b0011; y = 4'b0111; cin = 0;
#100;
x = 4'b0100; y = 4'b0011; cin = 0;
#100;
x = 4'b0101; y = 4'b0001; cin = 0;
#100;
x = 4'b0110; y = 4'b1000; cin = 0;
#100;
x = 4'b0111; y = 4'b1001; cin = 0;
#100;
x = 4'b1111; y = 4'b1111; cin = 0;
end
endmodule
