`include "definitions.vh"


////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:50:03 01/19/2016
// Design Name:   adder
// Module Name:   C:/Users/schubertk/Documents/GitHub/MIPS-Lab/code/adder_test.v
// Project Name:  regs
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module adder_test;

	// Inputs
	reg [`WORD-1:0] Ain;
	reg [`WORD-1:0] Bin;

	// Outputs
	wire [`WORD-1:0] add_out;

	// Instantiate the Unit Under Test (UUT)
	adder uut (
		.Ain(Ain), 
		.Bin(Bin), 
		.add_out(add_out)
	);

	initial begin
		// Initialize Inputs
		Ain = `WORD'd0;
		Bin = `WORD'd0;

		// Wait 100 ns for global reset to finish
		#100;
        
        Ain = `WORD'd1;
        Bin = `WORD'd1;
        
        #100;
		// Add stimulus here
   
        Ain =`WORD'd4398046511102;
        Bin =`WORD'd1;
        
        #100;
        //Overflow test
        Ain =`WORD'd4398046511103;
        Bin =`WORD'd1;
        #100;
        //Carry test
        Ain =`WORD'd1023;
        Bin =`WORD'd1;
        #100;
        // more test
        Ain =`WORD'd58984575;
        Bin =`WORD'd2154879571;
        #100;
        
        Ain =`WORD'd56987451879;
        Bin =`WORD'd963852741;
        #100;
        
        Ain =`WORD'd123455543;
        Bin =`WORD'd44432131;
        #100;
	end
      
endmodule

