add wave -position insertpoint  \
sim:/S \
sim:/R \
sim:/Q \
sim:/notQ
force -freeze S 0 0
force -freeze R 1 0
run
force -freeze S 0 0
force -freeze R 0 0
run
force -freeze S 1 0
force -freeze R 0 0
run
force -freeze S 0 0
force -freeze R 0 0
run
force -freeze S 1 0
force -freeze R 1 0
run