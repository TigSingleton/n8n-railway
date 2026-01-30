#!/bin/sh
echo "🌊 Launching HeartBased Brain (Root Mode)..."

# Force permissions (crucial for volume persistence)
chown -R node:node /home/node/.n8n

# Run n8n as Root (avoids 'su' failures and permission errors)
# We set HOME so n8n knows where its config lives.
export HOME=/home/node
n8n start
