#!/bin/bash
titles=("Canada" "India" "USA" "Italy" "China" "Russia")
num=$(( ${#titles[@]} ))
ran=$(( RANDOM % num ))

###############
# Variables   #
###############
hostname=$(hostname)
time=$(date + '%I:%M, %p')
weekday=$(date +%u)

#################
#   MAIN        #
################


variable=$(cat <<EOF

Welcome to planet $hostname, ${titles[$ran]} $USER !

$(if [ "$weekday" = "6" ] || [ "$weekday" = "7" ]
then
  echo "It is $time on weekend."
else
  echo "It is $time on Weekday."
fi
)
EOF
)
cat <<EOF
$(cowsay$variable)
EOF
