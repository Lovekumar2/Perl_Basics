module my_module (
    input clk, reset,
    output [3:0] data_out
);
    alu alu1 (.clk(clk), .reset(reset));
    alu alu2 (.clk(clk), .reset(reset));
endmodule

module alu (
    input clk, reset
);
endmodule

