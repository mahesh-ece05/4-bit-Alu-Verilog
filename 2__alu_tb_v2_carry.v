module alu_v2_tb;

reg [3:0] A;
reg [3:0] B;
reg [2:0] opcode;

wire [3:0] Y;
wire Carry;

alu_v2 uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .Y(Y),
    .Carry(Carry)
);

initial begin

    // Test 1: Addition without carry
    A = 4'b0101;
    B = 4'b0011;
    opcode = 3'b000;
    #10;

    // Test 2: Addition with carry
    A = 4'b1010;
    B = 4'b1000;
    opcode = 3'b000;
    #10;

    // Other operations
    A = 4'b0101;
    B = 4'b0011;

    opcode = 3'b001; #10;
    opcode = 3'b010; #10;
    opcode = 3'b011; #10;
    opcode = 3'b100; #10;
    opcode = 3'b101; #10;
    opcode = 3'b110; #10;
    opcode = 3'b111; #10;

    $finish;
end

initial begin
    $monitor("Time=%0t A=%b B=%b Opcode=%b Y=%b Carry=%b",
             $time, A, B, opcode, Y, Carry);
end

endmodule