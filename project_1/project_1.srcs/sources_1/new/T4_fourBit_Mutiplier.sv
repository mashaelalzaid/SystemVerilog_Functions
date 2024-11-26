`timescale 1ns / 1ps


module T4_fourBit_Mutiplier(
  input logic [3:0] A,
  input logic [3:0] B,
  
  output logic Cout_final
    );
    
    
    logic [2:0] Cout_temp;
    logic [3:0] Dout1, Dout2, Dout3;
    logic P2,P1,P0;
    assign P0 = AND(A[0],B[0]);
    assign P1 = Dout1[0];
    assign P2 = Dout2[0];
    
fourBits_Adder four_bit_adder1(
.Cin(),
.A(AND(A[3:0],B[1])),
.B({1'b0, AND(A[3:1],B[0])}),
.Dout(Dout1),
.Cout(Cout_temp[0]));


fourBits_Adder four_bit_adder2(
.Cin(),
.A(A[3:0]*B[2]),
.B({Cout_temp[0],Dout1[3:1]}), // passing bits from previous adder output, can i use concat {}?
.Dout(Dout2),
.Cout(Cout_temp[1]));


fourBits_Adder four_bit_adder3(
.Cin(),
.A(A[3:0]*B[3]),
.B({Cout_temp[1],Dout2[3:1]}),
.Dout(Dout3),
.Cout(Cout_temp[2]));


assign final_result = {Cout_temp[1],Dout3[3:1],P2,P1,P0};
endmodule
