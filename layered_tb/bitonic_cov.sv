class bitonic_cov;
bitonic_trans trans = new();
covergroup cov_inst;
option.per_instance = 1;
DIR:coverpoint trans.dir {bins arm = {0,1};}
ENABLE: coverpoint trans.enable {bins trigger = {0,1};}
A: coverpoint trans.A {bins A = { [0: 4294967295]}; }  
B: coverpoint trans.B {bins B = { [0: 4294967295]}; } 
O1: coverpoint trans.o1 {bins o1 = { [0: 4294967295]}; } 
O2: coverpoint trans.o2 {bins o2 = { [0: 4294967295]}; } 
endgroup
function new();
cov_inst = new;
endfunction
task main;
cov_inst. sample();
endtask
endclass
