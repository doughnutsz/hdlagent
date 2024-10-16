module comparator_8bit_2 (
    input  [7:0] A,
    input  [7:0] B,
    output [1:0] AeqB
);
  assign AeqB = (A > B) ? 2'b10 : (A == B) ? 2'b01 : 2'b00;
endmodule

