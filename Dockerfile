FROM docker.n8n.io/n8nio/n8n

USER root

# Copy the start script
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Set the entrypoint to our script
ENTRYPOINT ["/start.sh"]

EXPOSE 5678
