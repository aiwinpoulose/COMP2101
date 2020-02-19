#!/bin/bash
# This script demonstrates how the shift command works

# create an empty array to put the command line arguments into
myargs=()
c1=0
c2=0

# loop through the command line arguments
while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left "
  # add whatever is in $1 to the myargs array
  myargs+=("$1")
  # tell the user what we did
  echo "Added \'$1\' to the  array"

# TASK 1: instead of just adding arguments to an array, use a case statement to recognize some options
#          Options to recognize: -h for help, -v for verbose mode, -d N for debug mode with N being a single digit number
#          If the help option is recognized, print out help for the command and exit
#          If the verbose option is recognized, set a variable to indicate verbose mode is on
#          If the debug optionis recognized, set a variable with the debug level from the number given after the -d on the command line
#             display an error if the user gave the -d option without a single digit number after it
#          Anything that wasn't recognized on the command line should still go into the myargs array
case $1 in
    -h )
    echo "-h for help"
    ;;
    -v )
    echo "-v for verbose"
    c1=1
    ;;

    -d )
      case "$2" in
        [1-5] )
        echo "-d for debug level $2"
        c2=$2
        shift
        ;;
        *)
          echo "-d option is followed with a number[1-5]."
          shift
      esac
    ;;
    *)
    error=$1
    echo "Incorrect value  $error"
    shift
    ;;
    esac

  # each time through the loop, shift the arguments left
  # this decrements the argument count for us
  shift
  # tell the user we shifted things
  echo "Shifted command line, leaving $# things left."
  echo "--------------------------"
  # go back to the top of the loop to see if anything is left to work on
done
echo "Done"

# TASK2: display the settings and myargs contents
#         Tell the user if vebose mode is on
#         Tell the user if debug mode is on and if it is, what number it is set to
#         Print out the myargs array with a label
if [ $c1 = 1 ]
then
  echo "verbose mode is ON"

else
  echo "verbose mode is OFF"
fi

if [ $c2 -gt 0 ]
then
  echo "debug mode is ON"

else
  echo "debug mode is OFF"
fi
