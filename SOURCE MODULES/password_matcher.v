module password_matcher (
    input clk, rst,
    input [3:0] key_val,
    input key_valid,
    output reg unlocked,
    output reg locked
);
    reg [1:0] index;
    reg [3:0] entered [0:3];
    reg [3:0] password [0:3];
    
    
    initial begin
        password[0] = 4'h1;
        password[1] = 4'h2;
        password[2] = 4'h3;
        password[3] = 4'h4;
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            index <= 0;
            unlocked <= 0;
            locked <= 0;
        end else if (key_valid) begin
            entered[index] <= key_val;
            index <= index + 1;
            unlocked <=1;
            locked <= 0;
          end  else  begin
          unlocked <=0;
         locked <= 1;
            if (index == 2'd3) begin
                if ((entered[0] == password[0]) &&
                    (entered[1] == password[1]) &&
                    (entered[2] == password[2]) &&
                    (key_val     == password[3])) begin
                    locked <= 0;

                end else begin
                    locked <= 1;
                end
                index <= 0;
            end
        end
    end
endmodule
