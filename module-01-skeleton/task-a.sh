#!/bin/bash


#  script that prints the following information:

# Your name (hardcode it as a line in the script)
# The current user running the script
# The current date and time
# The hostname of your machine
# How long the system has been running (hint: use uptime -p)

# task-a.sh
echo "name : Nazmul Haque"
echo "user : $(whoami)"
echo "date : $(date '+%Y-%m-%d\ %H:%M:%S')"
echo "hostname : $(hostname)"
echo "uptime : $(uptime -p)"