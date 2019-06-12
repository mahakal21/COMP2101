#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
title="$USER"
time=$(date +'%A, %I:%M, %p')

hostname=$(hostname)
weekday=$(date +%u)

cowsay Welcome to planet $hostname, $title !

if [ "$weekday" = "6" ] || [ "$weekday" = "7" ]
then
  echo "It is $time on weekend."
else
  echo "It is $time on Weekday."
fi
