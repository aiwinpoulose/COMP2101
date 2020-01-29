#!/bin/bash
#
# this script rolls a six-sided die
#

# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

# roll the dice and display the result
echo "
Rolling a six sided die and displaying the result.....

$(( RANDOM % 6 + 1)) has been rolled
"
#Task : Modify the script to add rolling 5 six-sided dice
echo "
Rolling a five sided die and displaying result...
$(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)) rolled "

#Task : Modify the script to add rolling one 20-sided die

echo "
Rolling a 20 sided die and displaying result...
$(( RANDOM % 20 + 1))
"
