`timescale 1ns / 1ps


module T3_EightBits_adder_using_4bitsAdder(

  input logic [7:0] A,
  input logic [7:0] B,
  output logic Cout_final
);


   logic Cout_temp;


 fourBits_Adder four_bit_adder1(
.Cin(),
.A(A[7:4]),
.B(B[7:4]),
.Cout(Cout_temp));

 fourBits_Adder four_bit_adder2(
.Cin(Cout_temp),
.A(A[3:0]),
.B(B[3:0]),
.Cout(Cout));

assign Cout_final = Cout;

endmodule

    