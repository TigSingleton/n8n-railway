FROM docker.n8n.io/n8nio/n8n

USER root
# Ensure the directory exists and has correct permissions
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Switch back to the node user for security
USER node

EXPOSE 5678
