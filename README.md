# 🚀 Bash Mastery for DevOps Engineers

Hands-on Bash scripting course built for Junior DevOps and Cloud Engineering
roles in Germany. Every script runs on a real Hetzner VPS — not locally,
not in a simulator. Real infrastructure from day one.

---

## 🖥️ Your Lab Setup — Do This Before Module 01

You need two things:

### 1. A Hetzner VPS
```bash
# Go to console.hetzner.cloud
# New Project → name it "bash-masterclass"
# Add Server:
#   Location : Nuremberg (nbg1)
#   Image    : Ubuntu 22.04 LTS
#   Type     : CX11 (€4/month)
#   SSH Key  : add your public key
# Save the IP address — you will use it every day
```

### 2. First-Time Server Setup
Run this once after your VPS is created:
```bash
# Connect as root
ssh root@YOUR_HETZNER_IP

# Run the setup script
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/bash-masterclass/main/setup.sh | bash
```

> The setup script creates a `deploy` user, installs required tools
> (nginx, docker, shellcheck, fail2ban, ufw), and hardens SSH.
> Source: `setup.sh` in this repo — read it before running.

### 3. SSH Shortcut on Your Laptop
```bash
# Add to ~/.ssh/config on your laptop
Host hetzner
    HostName YOUR_HETZNER_IP
    User deploy
    IdentityFile ~/.ssh/id_ed25519

# Now you can connect with just:
ssh hetzner
```

---

## 📋 How Every Module Works

Each module lives in its own folder with its own README.
Open the module folder, read the README, follow the steps.
