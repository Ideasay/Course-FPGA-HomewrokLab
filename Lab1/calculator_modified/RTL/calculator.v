module calculator(
                    input clk, 
                    input rst, 				// when click 'rst' button, start will be 0
                    input start, 			// when click 'start' button, start will be 1
                    input add,			    // operators: +
                    input min, 				// operators: -
                    input mul, 				// operators: ×
                    input mod,              // operators: mod new
                    input cal,  			// operators: equal, when click 'cal' button,cal will be 1
                    input r1,  				// r1,r2,r3,r4,c1,c2,c3 are the defined input signals of 'Small Keypad'
                    input r2,
                    input r3,
                    input r4,
                    input c1,
                    input c2,
                    input c3,
                    input clear, 		    // when click 'clear' button, clear will be 1
                    output wire[7:0] digit0,// first 7_segement
                    output wire[7:0] digit1,// second 7_segement
					output wire[7:0] digit2,// third 7_segement
					output wire[7:0] digit3,// fourth 7_segement
                    output reg[1:0] signal, // indication of the input state 
					output reg sig_done     // indication of the calculate state
                    );
  
reg [4:0] current_state;
reg [4:0] next_state;

reg [15:0] tmp; //temporary input
reg display_en;
reg neg_en;
reg [15:0] op1; // the first operand
reg st_sig_cur;
reg st_sig_next;
reg o_sig_cur;
reg o_sig_next; 
reg c_sig_cur;
reg c_sig_next; 
reg cl_sig_cur;
reg cl_sig_next;
reg add_sig_cur;
reg add_sig_next;
reg min_sig_cur;
reg min_sig_next;
reg mul_sig_cur;
reg mul_sig_next;
reg mod_sig_cur;    //new
reg mod_sig_next;   //new
wire stsig;
wire inter;
wire osig;
wire csig;
wire clsig;
wire [15:0]d; // display number

// FSM new
parameter IDLE=5'b00000,CLR=5'b00001,RUN1=5'b00010,MEDI_ADD=5'b00011,MEDI_MIN=5'b00100,MEDI_MUL=5'b00101,CLR_ADD=5'b00110,CLR_MIN=5'b00111,CLR_MUL=5'b01000,RUN2_ADD=5'b01001,RUN2_MIN=5'b01010,RUN2_MUL=5'b01011,ADD_CAL=5'b01100,MIN_CAL=5'b01101,MUL_CAL=5'b01110; //state definition
parameter MEDI_MOD=5'b01111,CLR_MOD=5'b10000,RUN2_MOD=5'b10001,MOD_CAL=5'b10010; //new state
parameter ONE_K=7'b0110111;    // {c1,c2,c3,r1,r2,r3,r4} of keyboard
parameter TWO_K=7'b1010111;
parameter THREE_K=7'b1100111;
parameter FOUR_K=7'b0111011;
parameter FIVE_K=7'b1011011;
parameter SIX_K=7'b1101011;
parameter SEVEN_K=7'b0111101;
parameter EIGHT_K=7'b1011101;
parameter NINE_K=7'b1101101;
parameter ZERO_K=7'b1011110;

assign inter=r1 & r2 & r3 & r4 & c1 & c2 & c3; // inter will be 0 if there is any input in 'Small Keypad',otherwise 1
assign stsig=st_sig_cur & (~st_sig_next);
assign osig=o_sig_cur & (~o_sig_next);  // represent the falling of 'Small Keypad' input signals
assign csig=c_sig_cur & (~c_sig_next); // represent the falling of 'Cal' input signal
assign clsig=cl_sig_cur & (~cl_sig_next);
assign addsig=add_sig_cur & (~add_sig_next);
assign minsig=min_sig_cur & (~min_sig_next);
assign mulsig=mul_sig_cur & (~mul_sig_next);
// new sig
assign modsig=mod_sig_cur & (~mod_sig_next);
assign d=tmp;


always @(posedge clk or negedge rst)
  begin
    if (!rst)
      begin
        current_state<=IDLE;
        o_sig_next<=1'b1;
        c_sig_next<=1'b0;
        cl_sig_next<=1'b0;
      end
    else 
      begin  
        current_state<=next_state;
		st_sig_cur<=st_sig_next;
        st_sig_next<=start;
        o_sig_cur<=o_sig_next;
        o_sig_next<=inter;
        c_sig_cur<=c_sig_next;
        c_sig_next<=cal;
        cl_sig_cur<=cl_sig_next;
        cl_sig_next<=clear;
        add_sig_cur<=add_sig_next;
        add_sig_next<=add;
		min_sig_cur<=min_sig_next;
        min_sig_next<=min;
		mul_sig_cur<=mul_sig_next;
        mul_sig_next<=mul;
        mod_sig_cur<=mod_sig_next;
        mod_sig_next<=mod;
      end
  end
  
always @(current_state or stsig or osig or csig or clsig or addsig or mulsig or minsig or modsig) //new
begin
	next_state<=5'bxxxxx; //initialize next_state
	case (current_state)
    IDLE:
    begin
		if (stsig) // if not start, state will remain IDLE
			next_state<=RUN1;
        else next_state<=IDLE;
    end
    RUN1://waiting for the first operand
    begin
		if (clsig)
			next_state <=CLR;
		else 
        begin
			if (addsig)
				next_state<=MEDI_ADD;
			else
			if (minsig)
				next_state<=MEDI_MIN;
			else
			if (mulsig)
				next_state<=MEDI_MUL;	
			else  
            if (modsig)
				next_state<=MEDI_MOD;	//new
			else next_state<=RUN1; 
        end
    end
	CLR: // clear operands
    begin
		next_state<=RUN1;
    end
	
    //////////////////////////////////
    MEDI_ADD: // this state is created for lock the first operand
    begin
        next_state<=CLR_ADD;
    end
	CLR_ADD: // clear operands
    begin
        if (signal==2'b01) 
			next_state<=RUN2_ADD;
        else next_state<=CLR_ADD;
    end
	RUN2_ADD: // waiting for the second operand
    begin
		if (clsig) 
			next_state <=CLR_ADD;
		else 
		begin
			if (csig)
				next_state<=ADD_CAL;
			else next_state<=RUN2_ADD;
        end
    end
	ADD_CAL: // calculate the sum
    begin
        next_state<=ADD_CAL;
    end
	///////////////////////////////////////
	MEDI_MIN: // this state is created for lock the first operand
    begin
        next_state<=CLR_MIN;
    end
	CLR_MIN: // clear operands
    begin
        if (signal==2'b01) 
			next_state<=RUN2_MIN;
        else next_state<=CLR_MIN;
    end
	RUN2_MIN: // waiting for the second operand
    begin
		if (clsig) 
			next_state <=CLR_MIN;
		else 
		begin
			if (csig)
				next_state<=MIN_CAL;
			else next_state<=RUN2_MIN;
        end
    end
	MIN_CAL: // calculate the minus
    begin
        next_state<=MIN_CAL;
    end
	////////////////////////////////
	MEDI_MUL: // this state is created for lock the first operand
    begin
        next_state<=CLR_MUL;
    end
	CLR_MUL: // clear operands
    begin
        if (signal==2'b01) 
			next_state<=RUN2_MUL;
        else next_state<=CLR_MUL;
    end
	RUN2_MUL: // waiting for the second operand
    begin
		if (clsig) 
			next_state <=CLR_MUL;
		else 
		begin
			if (csig)
				next_state<=MUL_CAL;
			else next_state<=RUN2_MUL;
        end
    end
    MUL_CAL: // calculate the mul
    begin
        next_state<=MUL_CAL;
    end
	/////////////////////////////////////////////
    MEDI_MOD: // this state is created for lock the first operand
    begin
        next_state<=CLR_MOD;
    end
	CLR_MOD: // clear operands
    begin
        if (signal==2'b01) 
			next_state<=RUN2_MOD;
        else next_state<=CLR_MOD;
    end
	RUN2_MOD: // waiting for the second operand
    begin
		if (clsig) 
			next_state <=CLR_MOD;
		else 
		begin
			if (csig)
				next_state<=MOD_CAL;
			else next_state<=RUN2_MOD;
        end
    end
    MOD_CAL: // calculate the MOD
    begin
        next_state<=MOD_CAL;
    end
    ////////////////////////////////////////////
    default: next_state<=IDLE;
    endcase
  end

always @(posedge clk or negedge rst)
begin
	if (!rst) // if 'rst' button is clicked
    begin
		display_en<=1'b0; // disable display
		neg_en<=1'b0;
		tmp<=16'd0; //set tmp to 0
		op1<=16'd0; 
		signal<=2'b11;
		sig_done<=1'b0;
    end
	else 
	begin
		case (next_state) 
        RUN1: 
        begin 
			display_en <=1'b1;
            signal<=2'b10; 
			sig_done<=1'b0;
            if (osig)
				case ({c1,c2,c3,r1,r2,r3,r4})
					ZERO_K: tmp <= tmp*10+16'd0;
					ONE_K:  tmp <= tmp*10+16'd1;
					TWO_K:  tmp <= tmp*10+16'd2;
					THREE_K:tmp <= tmp*10+16'd3;
					FOUR_K: tmp <= tmp*10+16'd4;
					FIVE_K: tmp <= tmp*10+16'd5;
					SIX_K:  tmp <= tmp*10+16'd6;
					SEVEN_K:tmp <= tmp*10+16'd7;
					EIGHT_K:tmp <= tmp*10+16'd8;
					NINE_K: tmp <= tmp*10+16'd9;
					default: ;
				endcase
			end
		CLR:
        begin
            display_en <=1'b1;
            tmp <=7'd0; // clear the tmp
        end
		
        MEDI_ADD:
        begin
            op1<=tmp; // lock the first input signal
			signal<=2'b01;
        end
		CLR_ADD:
        begin
            display_en <=1'b1;
            tmp <=7'd0; // clear the tmp
        end
		RUN2_ADD: 
        begin
            display_en <=1'b1;
            signal<=2'b01;
            sig_done<=1'b0;
            if (osig)
				case ({c1,c2,c3,r1,r2,r3,r4})
					ZERO_K: tmp <= tmp*10+16'd0;
					ONE_K:  tmp <= tmp*10+16'd1;
					TWO_K:  tmp <= tmp*10+16'd2;
					THREE_K:tmp <= tmp*10+16'd3;
					FOUR_K: tmp <= tmp*10+16'd4;
					FIVE_K: tmp <= tmp*10+16'd5;
					SIX_K:  tmp <= tmp*10+16'd6;
					SEVEN_K:tmp <= tmp*10+16'd7;
					EIGHT_K:tmp <= tmp*10+16'd8;
					NINE_K: tmp <= tmp*10+16'd9;
					default: ;
				endcase
        end
		ADD_CAL: 
        begin 
            display_en <=1'b1;
            signal<=2'b00;
            sig_done<=1'b1;
            if (addsig || csig)
				tmp <= op1+tmp;  //add
            // new
            if (tmp >= 16'd10000)
                tmp <= 16'd10000;
        end
		
		MEDI_MIN:
        begin
            op1<=tmp; // lock the first input signal
			signal<=2'b01;
        end
		CLR_MIN:
        begin
            display_en <=1'b1;
            tmp <=7'd0; // clear the tmp
        end
		RUN2_MIN: 
        begin
            display_en <=1'b1;
            signal<=2'b01;
            sig_done<=1'b0;
            if (osig)
				case ({c1,c2,c3,r1,r2,r3,r4})
					ZERO_K: tmp <= tmp*10+16'd0;
					ONE_K:  tmp <= tmp*10+16'd1;
					TWO_K:  tmp <= tmp*10+16'd2;
					THREE_K:tmp <= tmp*10+16'd3;
					FOUR_K: tmp <= tmp*10+16'd4;
					FIVE_K: tmp <= tmp*10+16'd5;
					SIX_K:  tmp <= tmp*10+16'd6;
					SEVEN_K:tmp <= tmp*10+16'd7;
					EIGHT_K:tmp <= tmp*10+16'd8;
					NINE_K: tmp <= tmp*10+16'd9;
					default: ;
				endcase
        end
		MIN_CAL: 
        begin 
            display_en <=1'b1;
            signal<=2'b00;
            sig_done<=1'b1;
            if (minsig || csig)
			begin
				if(tmp<op1)  tmp <= op1-tmp;  //minus
				else begin
					tmp <= tmp-op1; 
                    neg_en<=1'b1;       
				end

               
                
			end
             if (tmp >= 16'd1000 && neg_en == 1'b1) tmp <= 16'd10000;
        end
		
		MEDI_MUL:
        begin
            op1<=tmp; // lock the first input signal
			signal<=2'b01;
        end
		CLR_MUL:
        begin
            display_en <=1'b1;
            tmp <=7'd0; // clear the tmp
        end    
		RUN2_MUL: 
        begin
            display_en <=1'b1;
            signal<=2'b01;
            sig_done<=1'b0;
            if (osig)
				case ({c1,c2,c3,r1,r2,r3,r4})
					ZERO_K: tmp <= tmp*10+16'd0;
					ONE_K:  tmp <= tmp*10+16'd1;
					TWO_K:  tmp <= tmp*10+16'd2;
					THREE_K:tmp <= tmp*10+16'd3;
					FOUR_K: tmp <= tmp*10+16'd4;
					FIVE_K: tmp <= tmp*10+16'd5;
					SIX_K:  tmp <= tmp*10+16'd6;
					SEVEN_K:tmp <= tmp*10+16'd7;
					EIGHT_K:tmp <= tmp*10+16'd8;
					NINE_K: tmp <= tmp*10+16'd9;
					default: ;
				endcase
        end
        MUL_CAL: 
        begin 
            display_en <=1'b1;
            signal<=2'b00;
            sig_done<=1'b1;
            if (mulsig || csig)
				tmp <= op1*tmp;  //mul
            // new
            if (tmp >= 16'd10000)
                tmp <= 16'd10000;
        end

        MEDI_MOD: //NEW
        begin
            op1<=tmp; // lock the first input signal
			signal<=2'b01;
        end
		CLR_MOD:
        begin
            display_en <=1'b1;
            tmp <=7'd0; // clear the tmp
        end    
		RUN2_MOD: 
        begin
            display_en <=1'b1;
            signal<=2'b01;
            sig_done<=1'b0;
            if (osig)
				case ({c1,c2,c3,r1,r2,r3,r4})
					ZERO_K: tmp <= tmp*10+16'd0;
					ONE_K:  tmp <= tmp*10+16'd1;
					TWO_K:  tmp <= tmp*10+16'd2;
					THREE_K:tmp <= tmp*10+16'd3;
					FOUR_K: tmp <= tmp*10+16'd4;
					FIVE_K: tmp <= tmp*10+16'd5;
					SIX_K:  tmp <= tmp*10+16'd6;
					SEVEN_K:tmp <= tmp*10+16'd7;
					EIGHT_K:tmp <= tmp*10+16'd8;
					NINE_K: tmp <= tmp*10+16'd9;
					default: ;
				endcase
        end
        MOD_CAL: 
        begin 
            display_en <=1'b1;
            signal<=2'b00;
            sig_done<=1'b1;
            if (mulsig || csig)
				tmp <= op1 % tmp;  //MOD
        end

        //NEW
        IDLE: 
		begin 
			display_en <=1'b0;
			neg_en<=1'b0;
			signal<=2'b11; 
		end
        
		default: ;
		endcase
	end 
end
  
//for display in 7-Segment
disp ins1 (.clk(clk),.display_en(display_en),.neg_en(neg_en),.tmp(d),.digit0(digit0),.digit1(digit1),.digit2(digit2),.digit3(digit3));
endmodule
