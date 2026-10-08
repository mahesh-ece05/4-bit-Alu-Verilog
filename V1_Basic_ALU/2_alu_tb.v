module alu_tb;

reg [3:0] a,b;
reg [2:0] opcode;
wire [3:0] y;

alu uut(a,b,opcode,y);

initial begin

    a = 4'b0101;  
    b = 4'b0011;  

    opcode = 3'b000; #5;  
    opcode = 3'b001; #5;  
    opcode = 3'b010; #5;  
    opcode = 3'b011; #5;  
    opcode = 3'b100; #5;  
    opcode = 3'b101; #5;  
    opcode = 3'b110; #5;  
    opcode = 3'b111; #5;  

    $finish;
end

initial begin
    $monitor("Time=%0t A=%b B=%b Opcode=%b Y=%b",
             $time, a, b, opcode, y);
end

endmodule


$dumpfile("dump.vcd");
$dumpvars;
