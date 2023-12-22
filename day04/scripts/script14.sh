#! /usr/bin/bash


file="/tmp/myfile"

# check if a file exists
if [ -e $file ]
then
  echo "file exists"
else
  echo "file does not exist"
fi

# check if it is a file
if [ -f $file ]
then
  echo "this is a file"
fi

# check if if is a directory
if [ -d $file ]
then
  echo "this is a directory"
fi

# check if if is a symbolic link
if [ -s $file ]
then
  echo "this is a symbolic link"
fi

# check if if is readable
if [ -r $file ]
then
  echo "this file is readable"
fi

# check if if is writable
if [ -w $file ]
then
  echo "this is writable"
fi

# check if if is executable
if [ -x $file ]
then
  echo "this is executable"
fi

