`include "definitions.vh"

module mux_test;
`define halfsize  16
 
	reg [15:0] Ain;
	reg [15:0] Bin;
	reg control;
	wire [15:0] mux_out;

	mux#(16) uut (
		.Ain(Ain), 
		.Bin(Bin), 
		.control(control), 
		.mux_out(mux_out)
	);

	initial begin
		Ain <=`WORD'b0; ;
		Bin <= `WORD'b1;
		control <= 0;
        #10;
        Ain <= `WORD'b0;
		Bin <= `WORD'b1;
		control <= 1;
        #10;
        
        Ain <= `WORD'b1;
        Bin <= `WORD'b0;
        control <= 0;
        #10;      
        Ain <= `WORD'b1;
        Bin <= `WORD'b0;
        control <= 1;
        #10;
                        
        Ain <= `WORD'd11;
        Bin <= `WORD'd111;
        control <= 0;
        #10;
        Ain <= `WORD'd11;
        Bin <= `WORD'd111;
        control <= 1;
        #10;
        
        Ain <= `WORD'd255;
        Bin <= `WORD'd210;
        control <= 0;
        #10;
        Ain <= `WORD'd255;
        Bin <= `WORD'd210;
        control <= 1;
        #10;
                
	end
      
endmodule

