module decodetoreg #(
    parameter ADD_WIDTH = 5, 
    parameter DATA_WIDTH = 32
) (
    input logic [DATA_WIDTH-1:0] instr_in,
    output logic [ADD_WIDTH-1:0] add_rs1, add_rs2, add_rd,
    output logic [6:0] func7, opcode,
    output logic [2:0] func3
);

assign func7  = instr_in[31:25];
assign add_rs2 = instr_in[24:20];
assign add_rs1 = instr_in[19:15];
assign func3  = instr_in[14:12];
assign add_rd = instr_in[11:7];
assign opcode = instr_in[6:0];

endmodule
