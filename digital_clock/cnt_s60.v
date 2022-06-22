module cnt_s60(rst, in_clk, q);
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
        	q <= q+1;
        	temp <= 0;
        		if(q==6)
          		q<=0;
		end
      else
	begin
        temp<=temp+1;
	end
    end  
  end  
endmodule 
