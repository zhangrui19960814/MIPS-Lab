`include "definitions.vh"


module FETCHTEST;
wire clk;
reg PCSrc ;
reg [`WORD-1:0]BrDest;
reg reset;
wire [`WORD-1:0] nPC;
wire [`WORD-1:0] IR;

oscillator clk_gen(clk);

 iFetch uut (
 .clk(clk),
.PCSrc( PCSrc ) ,
.BrDest( BrDest) ,
.nPC( nPC ) ,
.IR( IR )
) ;


initial
begin
reset <= 1;
BrDest <= `WORD'd8;
PCSrc <= 0 ;
#(`CYCLE+1);

reset <= 0;
PCSrc <= 0 ;
BrDest <= `WORD'd8 ;
#(`CYCLE+1);

PCSrc <= 1 ;
BrDest <= `WORD'd8 ;
#`CYCLE;
end
endmodule
