#! /usr/bin/bash

# array
# - collection of values separated by space
# python: names = ["steve", "bill"]

# array with number values
numbers=(10 20 30 40 50)

# the $numbers will return only first value
echo "fist value of numbers = $numbers"

# print all the values from numbers array
echo "all values of numbers = ${numbers[@]}"

# print the length of an array
echo "length of numbers = ${#numbers[@]}"

# get the values from the array
echo "numbers[2] = ${numbers[2]}"


# create an array named names with 5 person names
names=(steve bill arnold john rahul)

# print all the values
echo "names = ${names[@]}"

# print the size of names array
echo "size of names = ${#names[@]}"

# append a value to the array
names+=("robert")
echo "names = ${names[@]}"

# append multple values to the array
names+=(sumit amit)
echo "names = ${names[@]}"


