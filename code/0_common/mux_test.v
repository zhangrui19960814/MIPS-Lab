`include "definitions.vh"

module mux_test;

 
	reg [4:0] Ain;
	reg [4:0] Bin;
	reg control;
	wire [4:0] mux_out;

	mux#(5) uut (
		.Ain(Ain), 
		.Bin(Bin), 
		.control(control), 
		.mux_out(mux_out)
	);

	initial begin
		Ain <= 5'b00000; ;
		Bin <= 5'b00001;
		control <= 0;
        #10;
        Ain <= 5'b00000;
		Bin <= 5'b00001;
		control <= 1;
        #10;
        
        Ain <= 5'b00001;
        Bin <= 5'b00000;
        control <= 0;
        #10;      
        Ain <= 5'b00001;
        Bin <= 5'b00000;
        control <= 1;
        #10;
                        
        Ain <= 5'b00011;
        Bin <= 5'b00111;
        control <= 0;
        #10;
        Ain <= 5'b00011;
        Bin <= 5'b00111;
        control <= 1;
        #10;
        
        Ain <= 5'b11111;
        Bin <= 5'b10101;
        control <= 0;
        #10;
        Ain <= 5'b11111;
        Bin <= 5'b10101;
        control <= 1;
        #10;
          
           
	end
      
endmodule

