#! /usr/bin/bash

echo -n "enter a number to check: "
read number

if [ $number -eq 1 ]
then
  echo "this is not a prime number"
else

  is_prime=1
  for (( index=2; index<$number; index++ ))
  do
    # remainder=$(expr $number % $index)
    # if [ $remainder -eq 0 ]
    if [ $(expr $number % $index) -eq 0 ]
    then
      is_prime=0
      break
    fi
  done

  if [ $is_prime -eq 1 ]
  then
    echo "$number is a prime number"
  else
    echo "$number is NOT a prime number"
  fi

fi
