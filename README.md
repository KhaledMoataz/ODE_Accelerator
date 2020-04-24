# ODE_Accelerator
A chip solving ODE using Forward Euler method  

# Multipliers and Adders
To test multiplier and adder modules, make sure that your base directory is ODE_Accelerator. Then, run the following commands:  
do Fixed\ Point\ Arithmetic/src/Adder/carry_select_adder.do  
do Fixed\ Point\ Arithmetic/src/Adder/carry_lookahead_adder.do  
do Fixed\ Point\ Arithmetic/src/Adder/carry_lookahead_adder.do  
do Fixed\ Point\ Arithmetic/src/Multiplier/multiplier_booth.do  
do Fixed\ Point\ Arithmetic/src/Multiplier/multiplier_modified_booth.do  
  
**For post synthesis simulation, run the following commands:  **
  
do Fixed\ Point\ Arithmetic/src/post-synthesis/carry_select_adder.do  
do Fixed\ Point\ Arithmetic/src/post-synthesis/carry_lookahead_adder.do  
do Fixed\ Point\ Arithmetic/src/post-synthesis/multiplier_booth_carry_select.do  
do Fixed\ Point\ Arithmetic/src/post-synthesis/multiplier_booth_carry_lookahead.do  
do Fixed\ Point\ Arithmetic/src/post-synthesis/multiplier_modified_booth_carry_select.do  
do Fixed\ Point\ Arithmetic/src/post-synthesis/multiplier_modified_booth_carry_lookahead.do  
