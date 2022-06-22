module top_clock(rst, clk, seg1, seg2, seg3, seg4, seg5, seg6);
  input  rst, clk;

  output[6:0] seg1, seg2, seg3, seg4, seg5, seg6;

  wire[3:0] digit1;
  wire[3:0] digit2;
  wire[3:0] digit3;
  wire[3:0] digit4;
  wire[3:0] digit5;
  wire[3:0] digit6;
  wire clk, out_clk0, out_clk1, out_clk2, out_clk3, out_clk4, out_clk5;
  
  // 50MHz -> 1Hz  divide
  clk_dll u0(rst, clk, out_clk0); 
  // clock divide
  clk_dll10 u1(rst, out_clk0, out_clk1); 
  clk_dll60 u2(rst, out_clk1, out_clk2); 
  clk_dll600 u3(rst, out_clk2, out_clk3); 
  clk_dll3600 u4(rst, out_clk3, out_clk4); 
  clk_dll36000 u5(rst, out_clk4, out_clk5); 
  
  // counter 
//   cnt_s9 u6(rst, out_clk0, digit1); 
//   cnt_s60 u7(rst, out_clk1, digit2);
//   cnt_m9 u8(rst, out_clk2, digit3);
//   cnt_m60 u9(rst, out_clk3, digit4);
//   cnt_h3 u10(rst, out_clk4, digit5);
//   cnt_h2 u11(rst, out_clk5, digit6);
  counter9 u6(rst, out_clk0, digit1); 
  counter6 u7(rst, out_clk1, digit2);
  counter9 u8(rst, out_clk2, digit3);
  counter6 u9(rst, out_clk3, digit4);
  counter4 u10(rst, out_clk4, digit5, digit6);
   
  // 7-segment decoder   
  seg7 u11(digit1, seg1);
  seg7 u12(digit2, seg2);
  seg7 u13(digit3, seg3);
  seg7 u14(digit4, seg4);
  seg7 u15(digit5, seg5);
  seg7 u16(digit6, seg6);
  
endmodule

