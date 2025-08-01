module top (
    input clk, rst,
    input [3:0] row,
    output [3:0] col,
    output [3:0] key_val,
    output key_valid,
    output unlocked,
    output locked
);
    keypad_scanner ks (
        .clk(clk), .rst(rst), .row(row), .col(col),
        .key_val(key_val), .key_valid(key_valid)
    );
    password_matcher pm (
        .clk(clk), .rst(rst), .key_val(key_val), .key_valid(key_valid),
        .unlocked(unlocked), .locked(locked)
    );
endmodule
