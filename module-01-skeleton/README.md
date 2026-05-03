# Module 01 — The Skeleton

## What You Learn

- The shebang line `#!/bin/bash` — must be the very first line of every script
- `echo` — prints text to the screen
- Comments `#` — Linux ignores these lines, use them to explain your code
- `chmod +x` — gives a script permission to run
- `./script.sh` — how to run a script
- `$(command)` — runs a command and uses its output inside a string

---

## Example

Type this by hand into `example.sh` — do not copy paste:

```bash
#!/bin/bash
# example.sh
# Purpose: print basic system information

echo "================================"
echo "        System Information      "
echo "================================"
echo "User    : $(whoami)"
echo "Date    : $(date '+%Y-%m-%d %H:%M:%S')"
echo "Shell   : $BASH_VERSION"
echo "================================"
```

## How to Run

```bash
cd ~/bash-masterclass/module-01-skeleton
chmod +x example.sh
./example.sh
```

Expected output:
```
================================
        System Information
================================
User    : yourname
Date    : 2025-01-01 10:30:00
Shell   : 5.1.16(1)-release
================================
```

---

## Task A

Write `task-a.sh` — a script that prints the following information:

- Your name (hardcode it as a line in the script)
- The current user running the script
- The current date and time
- The hostname of your machine
- How long the system has been running (hint: use `uptime -p`)

Expected output format:
```
Name    : Nazmul Haque
User    : youruser
Date    : 2025-01-01 10:30:00
Host    : DESKTOP-XXXXX
Uptime  : up 2 hours, 30 minutes

When done run:
```bash
chmod +x task-a.sh
./task-a.sh
shellcheck task-a.sh
```
shellcheck must show zero warnings before you move on.

---

## Task B

Write `task-b.sh` — a formatted server report script.

Requirements:
- Print a proper header with a title and a border made of `=` signs
- Print the following real information:
  - Current user
  - Current date and time
  - Hostname
  - Uptime
  - Current directory (hint: use `pwd`)
  - Number of files in the current directory (hint: `ls | wc -l`)
- Print a footer with the same border
- Every line must be neatly aligned using spaces

Expected output format:
```
==========================================
           SERVER REPORT
==========================================
User      : youruser
Date      : 2025-01-01 10:30:00
Hostname  : DESKTOP-XXXXX
Uptime    : up 2 hours, 30 minutes
Directory : /home/yourname/bash-masterclass/module-01-skeleton
Files     : 4
==========================================
```

When done run:
```bash
chmod +x task-b.sh
./task-b.sh
shellcheck task-b.sh
```

shellcheck must show zero warnings before you move on.

---

## Done?

Before moving to Module 02 confirm:

- [ ] example.sh runs correctly
- [ ] task-a.sh runs correctly and passes shellcheck
- [ ] task-b.sh runs correctly and passes shellcheck
- [ ] All three files pushed to GitHub on branch module/01-skeleton

Push your work:
```bash
git add .
git commit -m "complete module 01 skeleton"
git push origin module/01-skeleton
```