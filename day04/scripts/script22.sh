#! /usr/bin/bash

# exercise 2: write functions to calculate area of circle, square and rectangle

pi=3.14

function calculate_area_of_circle {
  radius=$1
  area=`echo "$pi * $radius * $radius" | bc`
  echo "area of circle = $area"
}

function calculate_area_of_square {
  side=$1
  area=`echo "$side * $side" | bc`
  echo "area of square = $area"
}

function calculate_area_of_rectangle {
  area=`echo "$1 * $2" | bc`
  echo "area of rectange = $area"
}


calculate_area_of_circle 10
calculate_area_of_square 20
calculate_area_of_rectangle 40 50




