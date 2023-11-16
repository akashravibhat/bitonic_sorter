interface bitonic_intf(input logic clk,rst);
logic dir;
logic enable;

logic  [31:0] A;
logic  [31:0] B;
logic  [31:0] o1;
logic  [31:0] o2;

clocking bfm_cb @(posedge clk);
default input #1 output #1;
output dir;
output enable;
output A;
output B;
input o1;
input o2;
endclocking

clocking monitor_cb @(posedge clk);
default input #1 output #1;
input dir;
input enable;
input A;
input B;
input o1;
input o2;
endclocking
modport BFM (clocking bfm_cb, input clk,rst);
modport MONITOR (clocking monitor_cb, input clk, rst);
endinterface
