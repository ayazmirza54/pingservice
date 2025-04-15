# ⏰ Keep Free-Tier Apps Awake

Many platforms like **Render**, **Vercel**, or **Railway** will put your free-tier apps to sleep after a period of inactivity.

This simple shell script pings your deployed URLs regularly to keep them awake and responsive ⚡

---

## 🔧 Features

- Keeps free-tier apps alive by pinging every few minutes
- Logs uptime with HTTP status codes
- Easily configurable URL list
- Cron-friendly setup

---

## 📦 Setup

1. **Clone this repo**
   ```bash
   git clone https://github.com/yourusername/keep-free-tier-apps-awake.git
   cd keep-free-tier-apps-awake
