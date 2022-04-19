add wave -position insertpoint  \
sim:/Clk \
sim:/D \
sim:/Q \
sim:/notQ
force -freeze Clk 0 0
force -freeze D 0 0
run
force -freeze Clk 1 0
force -freeze D 0 0
run
force -freeze Clk 0 0
force -freeze D 0 0
run
force -freeze Clk 0 0
force -freeze D 1 0
run
force -freeze Clk 1 0
force -freeze D 1 0
run
force -freeze Clk 1 0
force -freeze D 1 0
run
force -freeze Clk 0 0
force -freeze D 1 0
run
force -freeze Clk 0 0
force -freeze D 0 0
run
force -freeze Clk 0 0
force -freeze D 0 0
run
force -freeze Clk 1 0
force -freeze D 0 0
run
force -freeze Clk 1 0
force -freeze D 0 0
run
force -freeze Clk 0 0
force -freeze D 0 0
run
force -freeze Clk 0 0
force -freeze D 1 0
run
force -freeze Clk 0 0
force -freeze D 1 0
run
force -freeze Clk 1 0
force -freeze D 1 0
run
force -freeze Clk 1 0
force -freeze D 0 0
run
force -freeze Clk 0 0
force -freeze D 0 0
run
force -freeze Clk 0 0
force -freeze D 1 0
run
force -freeze Clk 0 0
force -freeze D 0 0
run
force -freeze Clk 1 0
force -freeze D 0 0
run
force -freeze Clk 1 0
force -freeze D 1 0
run
force -freeze Clk 0 0
force -freeze D 1 0
run
force -freeze Clk 0 0
force -freeze D 0 0
run
