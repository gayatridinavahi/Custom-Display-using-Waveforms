module tb;
parameter COLS=26;
parameter ROWS=15;
reg [1:COLS] mem[1:ROWS];
integer i[1:ROWS];
reg r[1:ROWS];
initial $readmemb("happyholi.txt",mem);

genvar j;
for (j=1;j<=ROWS;j=j+1)
begin
	initial
		for (i[j]=1;i[j]<=COLS;i[j]=i[j]+1)
		repeat(4)
			begin
			r[j]=mem[j][i[j]]==1;#1;
			r[j]=0;#1;
			end
end

endmodule
