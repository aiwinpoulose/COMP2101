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

USER=$USER
hostname=$(hostname)

#Findng the day and date
date=$(date +'%I:%M %p')
day=$(date +%A)
weekday=$(date +%u)


###############
# Main        #
###############

#finding weekday or not

echo
if [ "$weekday" = "6" ] || [ "$weekday" = "7" ]
then
   echo "It is $NOW on Weekend."
else
   echo "It is $day on Weekday."
fi

#describing a person
if [ "$day" = "Monday" ]
then
  title="creative"
else
if [ "$day" = "Tuesday" ]
then
  title="intelligent"
else
  if [ "$day" = "Wednesday" ]
  then
    title="perfectionist"
else
  if [ "$day" = "Thursday" ]
  then
    title="smart"
else
  if [ "$day" = "Friday" ]
  then
    title="energetic"
else
  if [ "$day" = "Saturday" ]
  then
    title="enthusiastic"
else
  if [ "$day" = "Sunday" ]
  then
    title="kind"
fi
fi
fi
fi
fi
fi
fi
cat <<EOF
Welcome to planet $hostname $title $USER
EOF
cowsay  Welcome to planet $hostname $title $USER

