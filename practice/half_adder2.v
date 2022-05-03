module half_adder2(x,y,s,c);

input x,y;
output s,c;

reg s,c;

always @(x,y)
begin

