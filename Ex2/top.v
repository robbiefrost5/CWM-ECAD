//////////////////////////////////////////////////////////////////////////////////
// Exercise #2 
// Student Name: Robbie Frost
// Date: 08/06/20
//
//  Description: In this exercise, you need to design a multiplexer, where the  
//  output acts according to the following truth table:
//
//  sel | out
// -----------------
//   0  | a
//   1  | b
//
//  inputs:
//           a, b, sel
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module mux(
    //define inputs
    input a,
    input b,
    input sel,
    output out
    );
    
    parameter CLK_PERIOD = 10; //gives rise and fall delay of five ticks
    reg  clk, out; //registers clock
     initial begin 
	  clk=0;   //set initial time as zero
      forever        
      #(CLK_PERIOD/2)  
      clk=~clk;  //sets clock to falling edge
      end
     
   
   //logic for selecting a or b
      always @(posedge clk) 
	if(sel)
	out = b;
	else
	out = a ;                  
      
endmodule
