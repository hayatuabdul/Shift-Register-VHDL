  transcript off
  vcom shift_reg.vhd
  vcom test_shift_reg.vhd
  
  vsim test_shift_reg
  add wave sim:/test_shift_reg/map_test/*
  
  run 400 ns