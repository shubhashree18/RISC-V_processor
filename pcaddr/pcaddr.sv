module pcaddr #(parameter WIDTH = 32) (
    input logic [WIDTH-1:0] add_in,
    output logic [WIDTH-1:0] add_out
);

assign add_out = add_in + 32'd4;

endmodule
