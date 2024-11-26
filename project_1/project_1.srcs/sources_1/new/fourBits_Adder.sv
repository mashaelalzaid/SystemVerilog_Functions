`timescale 1ns / 1ps


module fourBits_Adder(

input logic Cin,
input logic [3:0] A,
input logic [3:0] B,
output logic [3:0] Dout,
output logic Cout

    );
    
    assign Dput = Cin + A + B;
    assign Cout = Dout[3];
    
endmodule

