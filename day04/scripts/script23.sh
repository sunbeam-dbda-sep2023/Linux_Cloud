#! /usr/bin/bash

function add {
  addition=$(expr $1 + $2)

  # returning the value of addition
  echo $addition
}

# call the function add with parameters 10 and 40
# and capture the returned value in result variable
#result=$(add 10 40)
#echo "result of 10 + 40 = $result"

#my_pwd=$(pwd)



# write a function to accept a number and return square of the number
function square {
  echo $(expr $1 \* $1)
}

echo "square of 5 = $(square 5)"

# write a function to accept a number and return cube of the number
function cube {
  echo $(expr $1 \* $1 \* $1)
}
echo "cube of 5 = $(cube 5)"





