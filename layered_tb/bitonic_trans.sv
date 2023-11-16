class bitonic_trans;
rand bit [31:0] A;
rand bit [31:0] B;
rand bit dir;
rand bit enable;
bit [31:0] o1;
bit [31:0] o2;
function void display();
$display(" ");
$display("\t dir = %0b, \t enable = %0b, \t A = %0b, \t B = %0b, \t o1 = %0b, \t o2 = %0b", dir,enable,A,B,o1,o2);
$display(" ");

endfunction
endclass
