#! /usr/bin/bash

# declare two variables with 10 and 20 values
num1=10
num2=20

# NOTE: expression
# - used to solve mathematical operations
# - use expr to resolve the epxression

# add them and print the result
addition=$(expr $num1 + $num2)
echo "addition = $addition"

# divide and print the result
division=$(expr $num1 / $num2)
echo "division = $division"

# multiply and print the result
# note: escape the * as it is a special character
multiplication=$(expr $num1 \* $num2)
echo "multiplication = $multiplication"

# subtract and print the result
subtraction=$(expr $num1 - $num2)
echo "subtraction = $subtraction"

# take the mod and print the result
mod=$(expr $num1 % $num2)
echo "mod = $mod"



