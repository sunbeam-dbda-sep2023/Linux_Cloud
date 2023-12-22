#! /usr/bin/bash

# generate factorial of a number
echo -n "enter a number: "
read number

factorial=1
for (( index=2; index<=$number; index++  ))
do
  factorial=$(expr $factorial \* $index)
done

echo "factorial of $number is $factorial"
