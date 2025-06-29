module toggle (
    input wire clk,
    input wire rst,
    output reg out
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            out <= 0;
        else
            out <= ~out;
    end
endmodule
