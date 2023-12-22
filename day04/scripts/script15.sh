#! /usr/bin/bash

# for in loop number values
numbers=(10 20 30 40 50)
for number in ${numbers[@]}
do
  echo "number = $number"
done

# for in loop with string values
langauges=(c cpp java python javascript typescript)
for language in ${languages[@]}
do
  echo "language = $language"
done
