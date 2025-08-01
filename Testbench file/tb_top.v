`timescale 1ns/1ps

module tb_top;
    reg clk = 0, rst = 1;
    reg [3:0] row;
    wire [3:0] col, key_val;
    wire key_valid, unlocked, locked;

    top uut (
        .clk(clk), .rst(rst), .row(row), .col(col),
        .key_val(key_val), .key_valid(key_valid), .locked(locked),
        .unlocked(unlocked)
    );
    always #5 clk = ~clk;
    initial begin
        $dumpfile("dump.vcd");  
        $dumpvars(0, tb_top);
        #20 rst = 0;
        simulate_key(4'b0001);  
        simulate_key(4'b0010);  
        simulate_key(4'b0011);  
        simulate_key(4'b0100);
        #50
        simulate_key(4'b1110);  
        simulate_key(4'b1101);  
        simulate_key(4'b1011);  
        simulate_key(4'b0111);  
        #70 $finish;
    end
    task simulate_key(input [3:0] row_val);
        begin
            row = row_val;
            #10 row = 4'b1111;
            #50;
        end
    endtask
endmodule
