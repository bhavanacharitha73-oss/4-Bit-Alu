```verilog id="s5r1af"
`timescale 1ns/1ps

module alu_4bit_tb;

    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] ALU_Sel;

    wire [3:0] Result;
    wire Carry;

    // Instantiate ALU
    alu_4bit uut (
        .A(A),
        .B(B),
        .ALU_Sel(ALU_Sel),
        .Result(Result),
        .Carry(Carry)
    );

    initial begin

        // Generate waveform
        $dumpfile("alu_4bit.vcd");
        $dumpvars(0, alu_4bit_tb);

        $display("A    B    Sel | Operation | Result | Carry");
        $display("--------------------------------------------");

        // A = 5, B = 3
        A = 4'b0101;
        B = 4'b0011;

        // ADD
        ALU_Sel = 3'b000;
        #10;
        $display("%b  %b   %b  | ADD       |  %b   |   %b",
                 A, B, ALU_Sel, Result, Carry);

        // SUB
        ALU_Sel = 3'b001;
        #10;
        $display("%b  %b   %b  | SUB       |  %b   |   %b",
                 A, B, ALU_Sel, Result, Carry);

        // AND
        ALU_Sel = 3'b010;
        #10;
        $display("%b  %b   %b  | AND       |  %b   |   %b",
                 A, B, ALU_Sel, Result, Carry);

        // OR
        ALU_Sel = 3'b011;
        #10;
        $display("%b  %b   %b  | OR        |  %b   |   %b",
                 A, B, ALU_Sel, Result, Carry);

        // XOR
        ALU_Sel = 3'b100;
        #10;
        $display("%b  %b   %b  | XOR       |  %b   |   %b",
                 A, B, ALU_Sel, Result, Carry);

        // NOT A
        ALU_Sel = 3'b101;
        #10;
        $display("%b  %b   %b  | NOT A     |  %b   |   %b",
                 A, B, ALU_Sel, Result, Carry);

        // Increment A
        ALU_Sel = 3'b110;
        #10;
        $display("%b  %b   %b  | INC A     |  %b   |   %b",
                 A, B, ALU_Sel, Result, Carry);

        // Decrement A
        ALU_Sel = 3'b111;
        #10;
        $display("%b  %b   %b  | DEC A     |  %b   |   %b",
                 A, B, ALU_Sel, Result, Carry);

        $finish;
    end

endmodule
```
