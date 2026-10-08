module alu_v2 (
    input  [3:0] A,
    input  [3:0] B,
    input  [2:0] opcode,
    output reg [3:0] Y,
    output reg Carry
);

always @(*) begin

    Carry = 0;

    case (opcode)

        3'b000: {Carry, Y} = A + B;
        3'b001: Y = A - B;
        3'b010: Y = A & B;
        3'b011: Y = A | B;
        3'b100: Y = A ^ B;
        3'b101: Y = ~A;
        3'b110: Y = A << 1;
        3'b111: Y = A >> 1;

    endcase

end

endmodule