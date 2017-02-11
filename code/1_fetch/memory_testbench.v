`include "definitions.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/06/2017 03:09:30 PM
// Design Name: 
// Module Name: fetch_testbench
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fetch_testbench;
     wire clk;
     reg [31:0] pc;
     wire [31:0] instruction;

     
oscillator clk_o(clk);

instr_mem# (1024) uut (
.clk(clk),
.pc(pc),
.instruction(instruction)
);
 
 integer i;
    
 initial
    begin
    pc <= 0; 
    #`CYCLE
    for (i=0; i<31; i=i+1)
    begin
    pc <= pc + 1;
    #`CYCLE;
  end
 end
endmodule
    
    

