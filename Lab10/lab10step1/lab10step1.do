add wave -position insertpoint  \
sim:/Clk \
sim:/input \
sim:/Q3 \
sim:/Q2 \
sim:/Q1 \
sim:/Q0

force -freeze Clk 1 0
force -freeze input 0 0
run 10
force -freeze Clk 0 0
force -freeze input 0 0
run 10
force -freeze Clk 1 0
force -freeze input 0 0
run 10
force -freeze Clk 0 0
force -freeze input 0 0
run 10
force -freeze Clk 1 0
force -freeze input 0 0
run 10
force -freeze Clk 0 0
force -freeze input 0 0
run 10
force -freeze Clk 1 0
force -freeze input 0 0
run 10
force -freeze Clk 0 0
force -freeze input 0 0
run 10

force -freeze Clk 1 0
force -freeze input 1 0
run 10
force -freeze Clk 0 0
force -freeze input 1 0
run 100

force -freeze Clk 1 0
force -freeze input 0 0
run 100
force -freeze Clk 0 0
force -freeze input 0 0
run 100


force -freeze Clk 1 0
force -freeze input 1 0
run 100
force -freeze Clk 0 0
force -freeze input 1 0
run 100


force -freeze Clk 1 0
force -freeze input 0 0
run 10
force -freeze Clk 0 0
force -freeze input 0 0
run 10
force -freeze Clk 1 0
force -freeze input 0 0
run 10
force -freeze Clk 0 0
force -freeze input 0 0
run 10
force -freeze Clk 1 0
force -freeze input 0 0
run 10
force -freeze Clk 0 0
force -freeze input 0 0
run 10
force -freeze Clk 1 0
force -freeze input 0 0
run 10
force -freeze Clk 0 0
force -freeze input 0 0
run 10