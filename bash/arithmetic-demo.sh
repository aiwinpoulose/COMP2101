#!/bin/bash
#
# this script demonstrates doing arithmetic

# Task 1: Remove the assignments of numbers to the first and second number variables. Use one or more read commands to get 3 numbers from the user.
# Task 2: Change the output to only show:
#    the sum of the 3 numbers with a label
#    the product of the 3 numbers with a label

echo "Enter first number = "
read FNum
echo "Enter second number = "
read SNum
echo "Enter third number = "
read TNum
sum=$((FNum + SNum + TNum))
echo "sum of three numbers = $sum"

MValue=$((FNum * SNum * TNum))
echo "Value after multipying three values = $MValue"

#firstnum=5
#secondnum=2
#sum=$((firstnum + secondnum))
#dividend=$((firstnum / secondnum))
#fpdividend=$(awk "BEGIN{printf \"%.2f\", $firstnum/$secondnum}")

#cat <<EOF
#$firstnum plus $secondnum is $sum
#$firstnum divided by $secondnum is $dividend
#  - More precisely, it is $fpdividend
#EOF
