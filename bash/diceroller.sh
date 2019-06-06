#!/bin/bash
#
# this script rolls a pair of six-sided dice
#

# Improve this script by adding a second line of output showing a roll of 5 six-sided dice
# Improve this script by adding a third line of output that rolls a single 20-sided die
# These improvements should also take into consideration the user, and make all 3 output lines self-explanatory to the user
#    - e.g. the first line should be changed to read something like:
#         Rolling a pair of standard dice: x,y rolled
#      and the other output lines should be similarly helpful to the user

# roll the dice and display the result

echo "Rolling six sided two dices
"
sleep 2
echo "Rolling..."
sleep 4
echo "$(( RANDOM % 6 + 1)), $(( RANDOM % 6 + 1 )) rolled
"
sleep 2
echo "Rolling six sided five dices "
sleep 2
echo "
Rolling..."
sleep 4
echo "$((RANDOM % 6 + 1 )), $(( RANDOM % 6 + 1 )), $((RANDOM % 6 + 1 )), $(( RANDOM % 6 + 1 )), $((RANDOM % 6 + 1 )), rolled
"
sleep 2
echo "Rolling 20 sided one dice"

echo "
Rolling..."
sleep 4
echo "$((RANDOM % 20 + 1)) rolled "
