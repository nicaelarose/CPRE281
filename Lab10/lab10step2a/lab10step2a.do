add wave -position insertpoint  \
sim:/Clk \
sim:/EN \
sim:/Z \
sim:/Q3 \
sim:/Q2 \
sim:/Q1 \
sim:/Q0

force -freeze preset 0 0
force -freeze En 1 0
run 1
force -freeze preset 1 0
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze En 0 0
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze En 1 0
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20

force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20
force -freeze Clk 1 0
run 20
force -freeze Clk 0 0
run 20

