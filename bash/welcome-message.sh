#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
name="$USER"
USER="$USER"
hostname=$(hostname)

#Findng the day and date
date=$(date +'%I:%M %p')
day=$(date +%A)

###############
# Main        #
###############
cat <<EOF
if [ "$day" == "Monday" ]
then
Welcome to Earth $hostname, creative $name!
else
if [ "$day" == "Tuesday" ]
then
Welcome to Earth $hostname, intelligent $name!
else
if [ "$day" == "Wednesday" ]
then
Welcome to Earth $hostname, beautiful  $name!
else
if [ "$day" ==  "Thursday" ]
then
Welcome to Earth $hostname, perfectionist $name!
else
if [ "$day" == "Friday" ]
then
Welcome to Earth $hostname, impressionistic $name!
else
if [ "$day" == "Saturday" ]
then
Welcome to Earth $hostname, energetic $name!
else
Welcome to Earth $hostname, enthusiastic $name!
EOF

#display time and date
echo "It is $date on $day ."
