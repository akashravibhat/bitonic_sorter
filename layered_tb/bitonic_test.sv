program bitonic_test(bitonic_intf intf);
bitonic_env env;
initial begin
env = new(intf);
env.gen.repeat_count = 200;
env.run();
end
endprogram