`timescale 1ns/1ps

module LFSR32_tb;
    reg clk;
    wire [31:0] num;

    LFSR32 uut (
        .clk(clk),
        .num(num)
    );

    // Gerador de clock
    initial begin
        clk = 0;
        forever #5 clk = ~clk;  // Gera um clock com período de 10 unidades de tempo (5 + 5)
    end

    // Simulação
    initial begin
        $dumpfile("LFSR32_tb.vcd"); // Para gerar um arquivo de saída para visualização no GTKWave
        $dumpvars(0, LFSR32_tb);

        #1000;  // Simula por 1000 unidades de tempo
        $finish;
    end
endmodule