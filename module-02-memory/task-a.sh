#!/bin/bash

# Write task-a.sh — accepts two arguments: server name and environment.
# task-a.sh
# usage: ./task-a.sh <server_name> <environment>

if [ "$#" -lt 2 ]; then
    echo "Usage: ./task-a.sh <server-name> <environment>"
    exit 1
fi
SERVER_NAME="$1"
ENVIRONMENT="$2"
ADMIN="Nazmul Haque"
readonly ADMIN
CURRENT_USER="$(whoami)"
TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S')"

echo "================================"
echo "  Server Configuration"
echo "================================"
echo "Admin     : $ADMIN"
echo "Server    : $SERVER_NAME"
echo "Env       : $ENVIRONMENT"
echo "User      : $CURRENT_USER"
echo "Date      : $TIMESTAMP"
echo "================================"

