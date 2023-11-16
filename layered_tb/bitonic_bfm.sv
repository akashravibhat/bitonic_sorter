class bitonic_bfm;
virtual bitonic_intf intf;
mailbox gen2bfm;
int no_transactions;
function new(virtual bitonic_intf intf,mailbox gen2bfm);
this.intf = intf;
this.gen2bfm = gen2bfm;
endfunction
task reset;

wait(intf.rst);
$display("Reset Initiated");
intf.bfm_cb.dir <= 0;
intf.bfm_cb.enable <= 0;
intf.bfm_cb.A <= 0;
intf.bfm_cb.B <= 0;
wait(!intf.rst);
$display("Reset finished");
endtask



task main;
forever begin
bitonic_trans trans;
gen2bfm.get(trans);
$display("Transaction No. = %0d", no_transactions);
intf.bfm_cb.dir <= trans.dir;
intf.bfm_cb.enable <= trans.enable;
intf.bfm_cb.A <= trans.A;
intf.bfm_cb.B <= trans.B;
repeat(2)@(posedge intf.clk);
trans.o1 = intf.bfm_cb.o1;
trans.o2= intf.bfm_cb.o2;
trans.display();
no_transactions++;
end
endtask
endclass
