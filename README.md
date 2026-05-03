# 🚀 Bash Mastery for DevOps Engineers

Hands-on Bash scripting course for Junior DevOps and Cloud Engineering roles in Germany.
Scripts run where they make sense — locally in WSL2 first, then on real Hetzner infrastructure.

---

## 🖥️ Lab Environment

| Modules | Where You Run Scripts | Why |
|---|---|---|
| 01 — 11 | WSL2 terminal on your laptop | Pure bash concepts — no server needed |
| 12 — 15 | Hetzner VPS (Ubuntu 22.04, CX11) | Real nginx, real cron, real deployment |

---

## ⚙️ Setup

### For Modules 01-11 — WSL2 Only

```bash
sudo apt update && sudo apt install -y shellcheck
shellcheck --version
```

### For Modules 12-15 — Hetzner VPS

**Step 1 — Generate SSH key on your laptop**

```bash
ssh-keygen -t ed25519 -C "your@email.com"
```

**Step 2 — Create Hetzner VPS**