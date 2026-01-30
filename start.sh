#!/bin/sh
echo "🌊 HeartBased Brain Launch Sequence Initiated..."

# 1. Fix Permissions on the Volume
# Railway mounts volumes as root, but n8n runs as 'node'.
# We must give 'node' ownership of the data folder.
if [ -d "/home/node/.n8n" ]; then
    echo "🔧 Fixing permissions on /home/node/.n8n..."
    chown -R node:node /home/node/.n8n
fi

# 2. Start n8n
# We run as the 'node' user to match the owner we just set.
echo "🚀 Starting n8n..."
su node -c "n8n start"
