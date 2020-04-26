source fill_ram.do

set path {ram_testbench.ram}

set contents {0000000000000000 16'd5 16'd10 0000000000000011 0 1 16'd9 16'd15}

set indeces {1 10 2 13 14 6 0 9}

fill_ram $path $contents $indeces
