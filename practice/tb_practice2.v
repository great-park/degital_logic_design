`timescale 1ns/1ns

module tb_practice2;

reg x,y,z;
wire o1,o2;

or_1 u1(.x(x), .y(y), .z(z), .o1(o1));
or_2 u2(.x(x), .y(y), .z(z), .o2(o2));

initial
begin
x=0; y=0; z=0;

#250; x=0;y=1;z=0;
#250; x=1;y=0;z=0;
#250; x=1;y=1;z=0;
#250; x=0;y=0;z=1;
#250; x=0;y=1;z=1;
#250; x=1;y=0;z=1;
#250; x=1;y=1;z=1; 
end

endmodule
