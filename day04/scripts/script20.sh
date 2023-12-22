
# exercise 1: write a function to accept 2 paramters and to print all mathematical operation results

function perform_math_operations {
  num1=$1
  num2=$2

  echo "addition = $(expr $num1 + $num2)"
  echo "subtraction = $(expr $num1 - $num2)"
  echo "integern division = $(expr $num1 / $num2)"

  #division=`echo "scale=2; $num1 / $num2" | bc`
  division=$(echo "scale=2; $num1 / $num2" | bc)
  echo "true divisoin = $division"

  echo "multiplication = $(expr $num1 \* $num2)"
  echo "multiplication = `echo "$num1 * $num2" | bc`"
}

perform_math_operations 20 40


