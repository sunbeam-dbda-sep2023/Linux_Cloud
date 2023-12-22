#! /usr/bin/bash

temperatures=(32 33 35 37 39 39.80)
for temp in ${temperatures[@]}
do
  echo "$temp in F = `echo "scale=2; (9/5) * $temp + 32" | bc`"
done
