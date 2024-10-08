module instr_mem #(parameter WIDTH = 32) (
    input logic clk,
    input logic [WIDTH-1:0] add_in,
    output logic [WIDTH-1:0] instr_out
);

logic [WIDTH-1:0] mem [255:0]; // Memory array

initial begin
    mem[0]  = 32'h00000033;
    mem[4]  = 32'h00638433;
    mem[8]  = 32'h406384b3;
    mem[12] = 32'h00639533;
    mem[16] = 32'h0063a5b3;
    mem[20] = 32'h0063b633;
    mem[24] = 32'h0063c6b3;
    mem[28] = 32'h00735733;
    mem[32] = 32'h407657b3;
    mem[36] = 32'h0063e833;
    mem[40] = 32'h0063f8b3;
end

always_ff @(posedge clk) begin
    instr_out <= mem[add_in];
end

endmodule
