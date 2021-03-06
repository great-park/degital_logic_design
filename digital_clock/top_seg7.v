module top_seg7(rst, clk, seg1, seg2, seg3, seg4, seg5, seg6);
  input  rst, clk;

  output[6:0] seg1, seg2, seg3, seg4, seg5, seg6;

  wire[3:0] digit1;
  wire[3:0] digit2;
  wire[3:0] digit3;
  wire[3:0] digit4;
  wire[3:0] digit5;
  wire[3:0] digit6;
  wire out_clk;
  
  // 50MHz -> 1Hz  divide
  clk_dll u0(rst, clk, out_clk); 
  
  // counter 
  cnt_s9 u1(rst, out_clk, digit1); 
  cnt_s60 u2(rst, out_clk, digit2);
  cnt_m9 u3(rst, out_clk, digit3);
  cnt_m60 u4(rst, out_clk, digit4);
  cnt_h3 u5(rst, out_clk, digit5);
  cnt_h2 u6(rst, out_clk, digit6);
   
  // 7-segment decoder   
  seg7_9 u7(digit1, seg1);
  seg7_9 u8(digit2, seg2);
  seg7_9 u9(digit3, seg3);
  seg7_9 u10(digit4, seg4);
  seg7_9 u11(digit5, seg5);
  seg7_9 u12(digit6, seg6);
  
endmodule
