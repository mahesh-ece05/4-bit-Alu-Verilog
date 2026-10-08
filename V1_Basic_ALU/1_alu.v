module alu(a,b,opcode,y);

input [3:0] a,b;
input [2:0] opcode;
output reg [3:0] y;

always @(*) begin
    case(opcode)
        3'b000: y = a+b;
        3'b001: y = a-b;
        3'b010: y = a&b;
        3'b011: y = a|b;
        3'b100: y = a^b;
        3'b101: y = ~a;
        3'b110: y = a<<1;
        3'b111: y = a>>1;
    endcase
end

endmodule
