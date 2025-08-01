module keypad_scanner (
    input clk, rst,
    output reg [3:0] col,
    input [3:0] row,
    output reg [3:0] key_val,
    output reg key_valid
);
    reg [1:0] col_index;
    reg [19:0] scan_count;
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            col_index <= 0;
            scan_count <= 0;
            key_valid <= 0;
        end else begin
            scan_count <= scan_count + 1;
            if (scan_count == 100000) begin
                col_index <= col_index + 1;
                scan_count <= 0;
            end
            col = 4'b1111;
            col[col_index] = 0;
            case (row)
                4'b1110: key_val <= col_index;
                4'b1101: key_val <= col_index + 4;
                4'b1011: key_val <= col_index + 8;
                4'b0111: key_val <= col_index + 12;
                default: key_val <= 4'hF;
            endcase
            key_valid <= (row != 4'b1111);
        end
    end
endmodule
