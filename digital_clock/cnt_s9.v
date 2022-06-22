module cnt_s9(rst, in_clk, q);
  input in_clk, rst;

  output [3:0]q;

  reg [3:0]q, temp;
  
  always@(posedge in_clk or negedge rst)
  begin
    if(!rst)
	begin
      temp<=0;
      q<=0;    
    end    
    else
	begin 
      if(temp == 9)
	begin
	q<=temp;
        temp <= 0;
	end
      else
      begin
        temp<=temp+1;
        q <= temp;
      end
    end 
     
  end  
endmodule 
