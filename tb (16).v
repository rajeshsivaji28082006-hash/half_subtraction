module tb_half_sub;
reg A, B;
    wire D, Bor;
half_sub dut (
        .A(A),
        .B(B),
        .D(D),
        .Bor(Bor)
    );
 initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_half_sub);
        $monitor("Time=%0t | A=%b B=%b | D=%b Bor=%b",
                 $time, A, B, D, Bor);
        A=0; B=0;
        #10 A=0; B=1;
        #10 A=1; B=0;
        #10 A=1; B=1;
        #10 $finish;
end
endmodule