module full_adder(s_out, c_out, cin, x,y);
 input x,y,cin;
 output s_out, c_out;
 wire temp_sum, temp_carry_1, temp_carry_2;

 half_adder u0(temp_sum, temp_carry_1, x, y);
 half_adder u1(s_out, temp_carry_2 , temp_sum, cin);
 or_gate u2(c_out, temp_carry_2, temp_carry_1);

endmodule
