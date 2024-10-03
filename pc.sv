module pc #(parameter width = 32)(
    input clk,
    input logic [width-1:0] add_in,
    output logic [width-1:0] add_out
);

always_ff @(posedge clk) begin
    add_out <= add_in;
end

endmodule
