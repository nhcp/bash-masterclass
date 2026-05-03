#!/bin/bash
# task-b.sh
# usage: ./task-b.sh

read -rp "Enter your name: " NAME
read -rp "Enter server name: " SERVER_NAME
read -rp "Enter deploy user (default: deploy): " DEPLOY_USER

DEPLOY_USER="${DEPLOY_USER:-deploy}"

if [ -z "$NAME" ] || [ -z "$SERVER_NAME" ]; then
    echo "Error: name and server name cannot be empty"
    exit 1
fi

TIMESTAMP="$(date '+%Y-%m-%d %H:%M:%S')"

echo "================================"
echo "  Deployment Summary"
echo "================================"
echo "Name      : $NAME"
echo "Server    : $SERVER_NAME"
echo "User      : $DEPLOY_USER"
echo "Date      : $TIMESTAMP"
echo "================================"