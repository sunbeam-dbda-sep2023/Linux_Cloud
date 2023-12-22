#! /usr/bin/bash

# parameterless function declaration
function function1 {
  echo "inside function1"
}

# calling a parameterless function
# function1

# parameterized function declaration with one parameter
function function2 {
  echo "inside function2"
  echo "first parameter: $1"
}

# calling a parameterized function
#function2 100


function function3 {
  echo "inside function3"
  echo "first param: $1"
  echo "secondparam: $2"
  echo "third param: $3"

}

function3 100 200 300
