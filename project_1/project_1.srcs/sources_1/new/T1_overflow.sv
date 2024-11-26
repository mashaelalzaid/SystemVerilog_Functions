`timescale 1ns / 1ps


module T1_overflow(
input logic [7:0] count,
input logic clk,
output logic overflow
    );
    
    logic DFF_Q;
    assign overflow = (~count[7]) & DFF_Q;
    
  DFF dff(
  .clk(clk),
  .D(count[7]),
  .Q(DFF_Q),
  .Q_bar,
  .CLR_N()
  );  
    
endmodule
