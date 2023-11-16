
module tb_bitonic_top;
bit clk;
bit rst;
bitonic_intf intf(clk,rst);
bitonic_test test(intf);
bitonic_sorter dut(.clk(intf.clk),
.rst(intf.rst),
.o1(intf.o1),
.o2(intf.o2),
.dir(intf.dir),
.enable(intf.enable),
.A(intf.A),
.B(intf.B)
);
always #5 clk = ~clk;
initial begin
  rst = 1;
#10; rst = 0;
end

endmodule
