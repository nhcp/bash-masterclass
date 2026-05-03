#!/bin/bash
# example.sh
# purpose: print basic system information


echo "==================="
echo "System Information:"
echo "-------------------"
echo "username: $(whoami)"
echo "date: $(date '+%Y-%m-%d %H:%M:%S')"
echo "shell: $BASH_VERSION"
echo "===================="
