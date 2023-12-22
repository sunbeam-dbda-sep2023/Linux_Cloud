#! /usr/bin/bash

# get two numbers from user and print the maximum and mimum of them
echo -n "enter first number: "
read num1

echo -n "enter second number: "
read num2

if [ $num1 -lt $num2 ]
then
  echo "$num1 is minium value and $num2 is maximum"
else
  echo "$num2 is minium value and $num1 is maximum"
fi
 
