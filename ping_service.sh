#!/bin/bash

# List of app URLs (Edit these with your deployed app links)
URL_LIST=(
  "https://yourapp1.onrender.com"
  "https://yourapp2.vercel.app"
  "https://yourapp3.railway.app"
)

# Log file for each run
LOG_FILE="./ping_log_$(date +%Y-%m-%d).log"

echo "🔁 Starting ping cycle at $(date)" | tee -a "$LOG_FILE"

# Ping all URLs
for URL in "${URL_LIST[@]}"; do
  STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" "$URL")

  if [ "$STATUS_CODE" -eq 200 ]; then
    echo "✅ $URL is UP (Status: $STATUS_CODE)" | tee -a "$LOG_FILE"
  else
    echo "⚠️ $URL might be DOWN (Status: $STATUS_CODE)" | tee -a "$LOG_FILE"
  fi
done

echo "✅ Ping cycle completed at $(date)" | tee -a "$LOG_FILE"
