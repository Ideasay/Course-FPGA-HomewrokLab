`timescale 1ns/1ns

module calculator_tb;

reg	clk;
reg	rst;
reg	start;
reg	add;
reg	min;
reg	mul;
reg mod;
reg	cal;
reg	r1;
reg	r2;
reg	r3;
reg	r4;
reg	c1;
reg	c2;
reg	c3;
reg	clear;

wire[7:0]	digit0;
wire[7:0]	digit1;
wire[7:0]	digit2;
wire[1:0]	signal;
wire        sig_done;

parameter CYCLE = 20;

calculator calculator1(
                    .clk(clk), 
                    .rst(rst), // IDLE high reset signal
                    .start(start), //when click 'start' button, start will be 1
                    .add(add), // operators: add
                    .min(min), // operators: minus
                    .mul(mul), //operators: multiply
					.mod(mod),
                    .cal(cal), // when click 'cal' button,cal will be 1
                    .r1(r1),  // r1,r2,r3,r4,c1,c2,c3 are the defined input signals of 'Small Keypad'
                    .r2(r2),
                    .r3(r3),
                    .r4(r4),
                    .c1(c1),
                    .c2(c2),
                    .c3(c3),
                    .clear(clear), // when click 'clear' button, clear will be 1
                    .digit0(digit0), // first 7_segement
                    .digit1(digit1),// second 7_segement
					.digit2(digit2),
                    .signal(signal), // indication of the state 
					.sig_done(sig_done)
);
initial
   	begin
	INIT();
	START();
	repeat(5)
		@(posedge clk);
	RDNUM1();
	repeat(5)
		@(posedge clk);
	OP();
	repeat(5)
		@(posedge clk);
	RDNUM2();
	repeat(5)
		@(posedge clk);
	EQ();
   	end

	always begin
	#(CYCLE/2) clk = ~clk;
end

task INIT;
begin
	rst <= 'd1;
	clk <= 'd0;
	start <= 'd0;
	add <= 'd0;
	min<='d0;
	mul<='d0;
	cal <= 'd0;
	clear <= 'd0;
	{r1,r2,r3,r4,c1,c2,c3} <= 'b111_1111;
	#(CYCLE*2) rst <= 'd0;
	#(CYCLE*2) rst <= 'd1;
	#(CYCLE*2);
end
endtask

task START;
begin
	repeat(1)
		@(posedge clk);
	start <= 'd1;
	repeat(1)
		@(posedge clk);
	start <= 'd0;
end
endtask

task RDNUM1;
begin
	repeat(1)
		@(posedge clk);
	r2 <= 'd0;
	c3 <= 'd0;
	repeat(4)
		@(posedge clk);
	{r2,c3} <= 'b11;
	
	
end
endtask

task OP;
begin
	repeat(1)
		@(posedge clk);
	mod <= 'd1;
	repeat(1)
		@(posedge clk);
	mod <= 'd0;
end
endtask

task RDNUM2;
begin
	repeat(1)
		@(posedge clk);
	r2 <= 'd0;
	c1 <= 'd0;
	repeat(4)
		@(posedge clk);
	{r2,c1} <= 'b11;
	
end
endtask

task EQ;
begin
	repeat(1)
		@(posedge clk);
	cal <= 'd1;
	repeat(1)
		@(posedge clk);
	cal <= 'd0;
end
endtask

endmodule
