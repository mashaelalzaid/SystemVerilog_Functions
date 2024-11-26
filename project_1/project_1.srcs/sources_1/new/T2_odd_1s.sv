`timescale 1ns / 1ps


module T2_odd_1s(
input logic clk,
input logic CLR_N,
input logic [7:0] Din, 
output logic odd_flagg );
    
    
    logic Reg_Dout;
    Register reg_odd(
   .clk(clk),
   .D(Din),
   .CLR_N(CLRN_N),
   .Q(Reg_Dout),
   .Q_bar
    );
    assign odd_flag = XOR(Reg_Dout);

endmodule
