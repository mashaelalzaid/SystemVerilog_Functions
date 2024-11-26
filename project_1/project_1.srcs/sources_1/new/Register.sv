`timescale 1ns / 1ps


module Register(
  input logic clk,
  input logic [7:0] D,
  input logic CLR_N,
  output logic [7:0] Q,
  output logic Q_bar

    );
    
    always_ff @(posedge clk or negedge CLR_N) begin
    if (!CLR_N)
        Q<= 8'b00000000;
     else 
     Q<=D;
     end

endmodule
