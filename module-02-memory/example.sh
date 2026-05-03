#!/bin/bash
# example.sh
# Purpose: demonstrate variables and arguments
# Usage: ./example.sh <environment>

# Constant — cannot be changed after this line
SCRIPT_NAME="$(basename "$0")"
readonly SCRIPT_NAME

# Check that exactly one argument was passed
if [ "$#" -lt 1 ]; then
    echo "Usage: $SCRIPT_NAME <environment>"
    exit 1
fi

# Store the argument in a named variable
ENVIRONMENT="$1"
DEPLOY_USER="deploy"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S')"

echo "================================"
echo "  Deployment Configuration"
echo "================================"
echo "Script    : $SCRIPT_NAME"
echo "Timestamp : $TIMESTAMP"
echo "Env       : $ENVIRONMENT"
echo "User      : $DEPLOY_USER"
echo "================================"