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
# Task: Improve this script by making it roll as many dice as there are letters in your first name, instead of just one

#my first name : AIWIN
#number of letters in my firstname : 5
echo "We are rolling five six sided die
$(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1)) and $(( RANDOM % 6 + 1)) have been rolled"
