#! /usr/bin/bash

# switch - case 
echo -n "enter a day in number (1..3): "
read day

case $day in
  1)
    echo "1 means Monday"
    ;;

  2)
    echo "2 means Tuesday"
    ;;

  3)
    echo "3 means Wednesday"
    ;;

  *)
    echo "this is invalid day"
    ;;

esac
