module regfile #(
    parameter ADD_WIDTH = 5, 
    parameter DATA_WIDTH = 32
) (
    input logic clk,
    input logic regwrite,
    input logic [ADD_WIDTH-1:0] add_rs1, add_rs2, add_rd,
    input logic [DATA_WIDTH-1:0] write_data,
    output logic [DATA_WIDTH-1:0] data_rs1, data_rs2
);

logic [DATA_WIDTH-1:0] regi [2**ADD_WIDTH-1:0]; // Register file
int i;

initial begin
    for (i = 0; i < 6; i = i + 1) begin
        regi[i] = 32'h00000000;
    end
    regi[6] = 32'h00000002;
    regi[7] = 32'h00000001;
    for (i = 8; i < 2**ADD_WIDTH; i = i + 1) begin
        regi[i] = 32'h00000000;
    end
end

always_ff @(posedge clk) begin
    if (regwrite)
        regi[add_rd] <= write_data;
end

assign data_rs1 = regi[add_rs1];
assign data_rs2 = regi[add_rs2];

endmodule
