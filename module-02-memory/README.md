# Module 02 — The Memory

## What You Learn

- Declaring variables: `NAME="value"` — no spaces around `=`, ever
- Using variables: `$NAME` and `${NAME}` — when to use braces
- **The most important bash rule:** always double-quote variables `"$NAME"`
- Positional arguments: `$0` `$1` `$2` — passing data into your script
- Argument count: `$#` — how many arguments were passed
- All arguments: `"$@"` — use in loops
- Default values: `${VAR:-default}` — use default if variable is empty
- `readonly` — constants that cannot be changed
- `read -p "Prompt: " VAR` — interactive user input

---

## Why This Matters

Every real DevOps script accepts arguments. Instead of hardcoding values
you pass them in when you run the script:

```bash
./deploy.sh production v1.2.3
#            $1          $2
```

This makes your scripts reusable across environments and situations.

---

## Example

Type this by hand into `example.sh` — do not copy paste:

```bash
#!/bin/bash
# example.sh
# Purpose: demonstrate variables and arguments
# Usage: ./example.sh <environment>

# Constant — cannot be changed after this line
readonly SCRIPT_NAME="$(basename "$0")"

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
```

## How to Run

```bash
chmod +x example.sh

# Run with an argument
./example.sh production

# Run without argument — should show usage message
./example.sh
```

Expected output with argument:
```
================================
  Deployment Configuration
================================
Script    : example.sh
Timestamp : 2026-05-03 20:30:00
Env       : production
User      : deploy
================================
```

Expected output without argument:
```
Usage: example.sh <environment>
```

---

## Task A

Write `task-a.sh` — accepts two arguments: server name and environment.

Requirements:
- If no arguments given, print usage and exit 1
- If only one argument given, print usage and exit 1
- Store each argument in a clearly named variable
- Print a server configuration summary showing:
  - Server name
  - Environment
  - Current user
  - Current date and time
  - Your name hardcoded as a constant using `readonly`

Expected output:
```
================================
  Server Configuration
================================
Admin     : Nazmul Haque
Server    : web-01
Env       : staging
User      : nhcp
Date      : 2026-05-03 20:30:00
================================
```

Run it correctly:
```bash
./task-a.sh web-01 staging
```

Run it without arguments — should print usage.

When done:
```bash
chmod +x task-a.sh
./task-a.sh web-01 staging
shellcheck task-a.sh
```

shellcheck must show zero warnings.

---

## Task B

Write `task-b.sh` — an interactive script that asks the user for input.

Requirements:
- Use `read -p` to ask for: your name, server name, and deploy user
- Use `${VAR:-default}` to set a default deploy user of `deploy` if left empty
- Validate that name and server name are not empty — print error and exit 1 if they are
- Print a deployment summary showing all values
- Use `readonly` for your name since it never changes

Expected output:
```
Enter your name: Nazmul Haque
Enter server name: web-01
Enter deploy user (default: deploy):

================================
  Deployment Summary
================================
Name      : Nazmul Haque
Server    : web-01
User      : deploy
Date      : 2026-05-03 20:30:00
================================
```

When done:
```bash
chmod +x task-b.sh
./task-b.sh
shellcheck task-b.sh
```

shellcheck must show zero warnings.

---

## Done?

Before moving to Module 03 confirm:

- [ ] example.sh runs correctly with and without arguments
- [ ] task-a.sh runs correctly and passes shellcheck
- [ ] task-b.sh runs correctly and passes shellcheck
- [ ] All three files pushed to GitHub on branch module/02-memory

Push your work:
```bash
git add .
git commit -m "complete module 02 memory"
git push origin module/02-memory
```