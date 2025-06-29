`timescale 1ns / 1ps

module toggle_tb;
    reg clk = 0;
    reg rst = 0;
    wire out;

    toggle uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    always #5 clk = ~clk;

    initial begin
        $dumpfile("toggle.vcd");
        $dumpvars(0, toggle_tb);

        rst = 1; #10;
        rst = 0; #100;

        $finish;
    end
endmodule