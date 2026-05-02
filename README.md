# 🚀 Bash Mastery for DevOps Engineers

Hands-on Bash scripting course for Junior DevOps and Cloud Engineering roles in Germany.
Every script runs on a real Hetzner VPS. Real infrastructure from day one.

---

## 🖥️ Lab Environment

| Machine | Purpose |
|---|---|
| Laptop — WSL2 + VS Code | Write scripts here |
| Hetzner VPS — Ubuntu 22.04 CX11 | Run every script here |

---

## ⚙️ Setup

**Step 1 — Generate SSH key on your laptop**
```bash
ssh-keygen -t ed25519 -C "your@email.com"
```

**Step 2 — Create Hetzner VPS**
```
console.hetzner.cloud → New Project: bash-masterclass → Add Server
Location: Nuremberg (nbg1) | Image: Ubuntu 22.04 | Type: CX11 | SSH Key: paste your public key
```

**Step 3 — SSH shortcut on your laptop**
```bash
# Add to ~/.ssh/config
Host hetzner
    HostName YOUR_HETZNER_IP
    User deploy
    IdentityFile ~/.ssh/id_ed25519
```

**Step 4 — Run setup script on Hetzner**
```bash
ssh root@YOUR_HETZNER_IP
bash <(curl -fsSL https://raw.githubusercontent.com/nhcp/bash-masterclass/main/setup.sh)
```

**Step 5 — Create scripts folder on Hetzner**
```bash
ssh hetzner "mkdir -p ~/scripts"
```

---

## 📋 How Every Module Works

Each module has its own folder with its own README.md inside.
Open that folder and follow the steps.

```
Step 1 — READ     Open module-XX/README.md
Step 2 — TYPE     Type example.sh by hand — do not copy paste
Step 3 — RUN      Copy to Hetzner and run it there
Step 4 — BUILD    Write task-a.sh then task-b.sh yourself
Step 5 — CHECK    shellcheck must pass with zero warnings
Step 6 — PUSH     Commit and push before next module
```

**Copy and run a script on Hetzner:**
```bash
scp script.sh hetzner:~/scripts/
ssh hetzner "chmod +x ~/scripts/script.sh && ~/scripts/script.sh"
```

---

## 🗺️ Learning Path

| # | Module | Concept | Hetzner Task |
|---|--------|---------|--------------|
| 01 | The Skeleton | Shebang, echo, permissions | Print real server info |
| 02 | The Memory | Variables, arguments, quoting | Pass server name and environment as arguments |
| 03 | The Math | Arithmetic, command substitution | Calculate real CPU, RAM, disk usage |
| 04 | The Brain | Conditionals, exit codes | Check real services running or stopped |
| 05 | The Files | File tests, find, backups | Back up real nginx config files |
| 06 | The Factory | Loops | Loop over real services and log files |
| 07 | The Search | Grep, pipes, redirection | Parse real SSH attack logs and nginx logs |
| 08 | The Shorthand | Sed and Awk | Edit real nginx config |
| 09 | The Arrays | Arrays, associative arrays | Manage real services and environments |
| 10 | The Strings | String manipulation | Parse Docker image tags and log lines |
| 11 | The Swiss Army | Heredoc, getopts, process substitution | Generate nginx vhost configs |
| 12 | The Networker | curl, nc, wait-for-ready | Health check your real server |
| 13 | The Parallel | Background jobs, cron, logging | Run checks in parallel, log to syslog |
| 14 | The Guardian | Error handling, traps, final project | Production deploy script on Hetzner |

---

## ✅ Module Checklist

- [ ] `example.sh` typed by hand and runs on Hetzner
- [ ] `task-a.sh` works on Hetzner
- [ ] `task-b.sh` works on Hetzner
- [ ] Both pass `shellcheck` with zero warnings
- [ ] Committed and pushed to this repo

---

## 🐛 Debugging

```bash
shellcheck script.sh       # run on your laptop before copying to Hetzner
bash -n script.sh          # syntax check only
bash -x ./script.sh        # trace every command — run this on Hetzner
```

---

## 📚 References

| Resource | URL |
|---|---|
| shellcheck | shellcheck.net |
| explainshell | explainshell.com |
| Bash Guide | bash.cyberciti.biz |
| Hetzner Docs | docs.hetzner.com |

---

*14 modules. 28 tasks. All on real Hetzner infrastructure.*
*Module 14 final project is your proof of bash competency for junior DevOps interviews.*