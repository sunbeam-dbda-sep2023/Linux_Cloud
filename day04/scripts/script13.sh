
# write a switch case to handle color values
# 1: red, 2: black, 3: green, 4: yellow, anything: error
# get input from user as a number and print the color

echo -n "enter color value (1..4): "
read color

case $color in
  1)
    echo "1 means red color"
    ;;
  2)
    echo "2 means black color"
    ;;
  3)
    echo "3 means green color"
    ;;
  4)
    echo "4 means yellow color"
    ;;
  *)
    echo "invalid color value"
    ;;
esac
