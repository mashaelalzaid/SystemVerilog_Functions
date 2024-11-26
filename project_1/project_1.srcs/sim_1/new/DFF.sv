`timescale 1ns / 1ps


module DFF(
  input logic clk,
  input logic D,
  input logic CLR_N,
  output logic Q,
  output logic Q_bar
    );
    
    
    always_ff @(posedge clk or negedge CLR_N) begin
    if (!CLR_N)
        Q<= 1'b0;
     else 
     Q<=1;
     end
endmodule
