FROM docker.n8n.io/n8nio/n8n

USER root

# Force n8n to use the persisted volume path
ENV N8N_USER_FOLDER=/home/node/.n8n

EXPOSE 5678
