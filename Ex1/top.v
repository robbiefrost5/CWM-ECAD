//////////////////////////////////////////////////////////////////////////////////
// Exercise #1 
// Student Name:Robbie Frost
// Date: 08/06/20
//
//  Description: In this exercise, you need to design a logical unit, where the  
//  output acts according to the following truth table:
//
//  a | b | out
// -----------------
//  0 | 0 | func[0]
//  0 | 1 | func [1]
//  1 | 0 | func [2]
//  1 | 1 | func [3]
//
//  inputs:
//           a, b, func[3:0]
//
//  outputs:
//           out
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module logicalunit(
    input a,
    input b,
    input [3:0] func,
    output out
    );
    
    wire   out;
    wire  [1:0] AB;
         
    assign AB = {a,b};
    assign out = (AB==2'b11) ? func[3] :  //if clauses for values of a and b
    (AB==2'b10) ? func[2] :
    (AB==2'b01) ? func[1] :
    func[0];

endmodule
