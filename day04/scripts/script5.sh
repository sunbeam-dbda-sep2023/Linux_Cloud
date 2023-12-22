#! /usr/bin/bash

# execute the date command and return the value to the string
echo "todays date is: $(date)"
echo "current working directory: $(pwd)"
#echo "files in the current working directory: $(ls)"

# declare a variable with command and execute it
my_cmd=$(pwd)
echo "my working directory is: $my_cmd"

# declare variable with command 
my_pwd="pwd"

# getting the value from my_pwd and executing the command
echo "my working directory is: $($my_pwd)"
