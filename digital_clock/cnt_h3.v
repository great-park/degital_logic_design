module cnt_h3(rst, in_clk, q);
  input in_clk, rst;

  output [3:0]q;

  reg [3:0]q;
  reg [11:0]temp;
  
  always@(posedge in_clk or negedge rst)
  begin
    if(!rst)
	begin
      temp<=0;
      q<=0;    
    end    
    else
	begin 
      if(temp == 3599)
      begin
        q <= q+1;
        temp <= 0;
      
        if(q==4)
          q<=0;
	end
      else
        temp<=temp+1;
    end 
     
  end  
endmodule 
