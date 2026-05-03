#!/bin/bash
# Write task-b.sh — a formatted server report script.

# Requirements:

# Print a proper header with a title and a border made of = signs
# Print the following real information:
# Current user
# Current date and time
# Hostname
#Uptime
# Current directory (hint: use pwd)
# Number of files in the current directory (hint: ls | wc -l)
# Print a footer with the same border
# Every line must be neatly aligned using spaces

# task-b.sh

echo "==============================="
echo "       Server Report"
echo "==============================="
echo "User: $(whoami)"
echo "Date: $(date '+%Y-%m-%d %H:%M:%S')"
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime -p)"
echo "Current Directory: $(pwd)"
echo "Number of Files: $(find . -maxdepth 1 -type f | wc -l)"
echo "==============================="
