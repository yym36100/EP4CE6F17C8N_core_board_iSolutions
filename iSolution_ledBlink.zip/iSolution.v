module iSolution(led,clk);
output[3:0]led;
input clk;

reg[3:0] led;


reg[24:0] counter;

always@(posedge clk)
begin
    counter<=counter+1;
	if(counter==25'd5000000)
	begin
		led<=led<<1;
		counter<=0;
		if(led==6'b0000)
		led<=6'b1111;
	end
	
end
endmodule
	