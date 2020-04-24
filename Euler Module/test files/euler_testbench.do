set inputfile [open "C:/Users/user/Desktop/ODE_Accelerator/Euler\ Module/test\ files/input.txt" r];
set outmem1 [open "C:/Users/user/Desktop/ODE_Accelerator/Euler\ Module/test\ files/mem1.mem" w];
set outmem2 [open "C:/Users/user/Desktop/ODE_Accelerator/Euler\ Module/test\ files/mem2.mem" w];

puts $outmem1 "// memory data file (do not edit the following line - required for mem load use)";
puts $outmem1 "// instance=/demomain/ram1/MEM";
puts $outmem1 "// format=bin addressradix=h dataradix=b version=1.0 wordsperline=1";

puts $outmem2 "// memory data file (do not edit the following line - required for mem load use)";
puts $outmem2 "// instance=/demomain/ram2/MEM";
puts $outmem2 "// format=bin addressradix=h dataradix=b version=1.0 wordsperline=1";

set file_data [read $inputfile];

set i 0;
set j 0;
set h 0;
set N 0;
set M 0;

foreach line $file_data {
    if {$i ==0} {
        set h $line;
    } elseif {$i == 1} {
        set N $line;
    } elseif {$i == 2} {
        set M $line;
    } elseif {$i >=3  && $i<(3+$N) } {
        set onelineoutput @[format %X $j];
        lappend onelineoutput $line ;
        puts $outmem1 $onelineoutput;
        incr j;
        if {$i == (2+$N) } {
            set j 50;
        }
    } elseif {$i >=(3+$N)  && $i<(3+$N+($N*$N))} {
        set onelineoutput @[format %X $j];
        lappend onelineoutput $line ;
        puts $outmem1 $onelineoutput;
        incr j;
        if {$i == (2+$N+($N*$N)) } {
            set j 0;
        }
    } elseif {$i>=(3+$N+($N*$N))  && $i<(3+$N+$M+($N*$N))} {
        set onelineoutput @[format %X $j];
        lappend onelineoutput $line ;
        puts $outmem2 $onelineoutput;
        incr j;
        if {$i == (2+$M+$N+($N*$N)) } {
            set j 50;
        }
    } else {
        set onelineoutput @[format %X $j];
        lappend onelineoutput $line ;
        puts $outmem2 $onelineoutput;
        incr j;
    }
    incr i;
}
close $outmem1;
close $outmem2;
close $inputfile;


vsim -gui work.demomain
add wave -position insertpoint sim:/demomain/eul/*


force -freeze sim:/demomain/eul/clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/demomain/eul/rst 1 0
force -freeze sim:/demomain/eul/start 0 0
force -freeze sim:/demomain/eul/h_step $h 0
force -freeze sim:/demomain/eul/data_ready1 0 0
force -freeze sim:/demomain/eul/data_ready2 0 0
force -freeze sim:/demomain/eul/pipeline1/flush_mul_buffer 0 0
force -freeze sim:/demomain/eul/pipeline1/flush_acc_buffer 0 0
force -freeze sim:/demomain/eul/pipeline1/done_mul 0 0
force -freeze sim:/demomain/eul/pipeline2/flush_mul_buffer 0 0
force -freeze sim:/demomain/eul/pipeline2/flush_acc_buffer 0 0
force -freeze sim:/demomain/eul/pipeline2/done_mul 0 0


force -freeze sim:/demomain/eul/shape1_0 10#$N 0
force -freeze sim:/demomain/eul/shape1_1 10#$N 0
force -freeze sim:/demomain/eul/shape2_0 10#$N 0
force -freeze sim:/demomain/eul/shape2_1 10#$M 0
run

noforce sim:/demomain/eul/pipeline1/flush_mul_buffer
noforce sim:/demomain/eul/pipeline1/flush_acc_buffer
noforce sim:/demomain/eul/pipeline1/done_mul
noforce sim:/demomain/eul/pipeline2/flush_mul_buffer
noforce sim:/demomain/eul/pipeline2/flush_acc_buffer
noforce sim:/demomain/eul/pipeline2/done_mul
noforce sim:/demomain/eul/data_ready2
noforce sim:/demomain/eul/data_ready1
force -freeze sim:/demomain/eul/start 1 0
force -freeze sim:/demomain/eul/rst 0 0

mem load -i {C:/Users/user/Desktop/ODE_Accelerator/Euler Module/test files/mem1.mem} /demomain/ram1/MEM
mem load -i {C:/Users/user/Desktop/ODE_Accelerator/Euler Module/test files/mem2.mem} /demomain/ram2/MEM

run

force -freeze sim:/demomain/eul/start 0 0
set endtest 0


while {$endtest == 0} {
    run
    set endtest [examine -binary /demomain/eul/finish]
}
run
run


# Comparing output

set inputfile [open "C:/Users/user/Desktop/ODE_Accelerator/Euler\ Module/test\ files/output.txt" r];
set file_data [read $inputfile];

set it 0
foreach line $file_data {
    if {$it == 0 } {
        set overflowflag [examine -binary /demomain/eul/error];
        if {$overflowflag == 1 && ($overflowflag == $line )} {
            echo "Overflow occurs!";
        }
    } else {
        set element [examine /demomain/ram3/MEM($it)];
        if { $line != $element } {
             echo "Element $it is NOT Correct !";
        }
    }
    incr it;
}