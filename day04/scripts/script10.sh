#! /usr/bin/bash

# check if a number is even or odd
echo "enter a number"

# get input from user and store into number
read number

# remainder=$(expr $number % 2)
# if [ $remainder -eq 0 ]

if [ $(expr $number % 2) -eq 0 ]
then
  echo "$number is even"
else
  echo "$number is odd"
fi
