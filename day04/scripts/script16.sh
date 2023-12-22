#! /usr/bin/bash


# traditional for loop
# exercise 1: get input from user to generate number table for the input

echo -n "enter a number: "
read number

for (( index=1; index<=10; index++ ))
do
  echo "$number x $index = $(expr $index \* $number)"
done

