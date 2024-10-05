module alucontrol #(
    parameter DATA_WIDTH = 32
) (
    input logic [6:0] func7, opcode,
    input logic [2:0] func3,
    output logic [3:0] alu_in,
    output logic regwrite
);

always_comb begin
    if (opcode == 7'b0110011) begin
        case ({func7, func3})
            10'b0000000000: begin 
                alu_in = 4'b0000; 
                regwrite = 1; 
            end
            10'b0100000000: begin 
                alu_in = 4'b0001; 
                regwrite = 1; 
            end
            10'b0000000001: begin 
                alu_in = 4'b0010; 
                regwrite = 1; 
            end
            10'b0000000010: begin 
                alu_in = 4'b0011; 
                regwrite = 1; 
            end
            10'b0000000011: begin 
                alu_in = 4'b0100; 
                regwrite = 1; 
            end
            10'b0000000100: begin 
                alu_in = 4'b0101; 
                regwrite = 1; 
            end
            10'b0000000101: begin 
                alu_in = 4'b0110; 
                regwrite = 1; 
            end
            10'b0100000101: begin 
                alu_in = 4'b0111; 
                regwrite = 1; 
            end
            10'b0000000110: begin 
                alu_in = 4'b1000; 
                regwrite = 1; 
            end
            10'b0000000111: begin 
                alu_in = 4'b1001; 
                regwrite = 1; 
            end
            default: begin 
                alu_in = 4'b1111; 
                regwrite = 0; 
            end
        endcase
    end
end

endmodule
