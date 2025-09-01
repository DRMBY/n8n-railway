FROM n8nio/n8n:latest

USER node
WORKDIR /home/node

HEALTHCHECK --interval=30s --timeout=5s --start-period=60s \
  CMD curl -f http://localhost:5678/healthz || exit 1

EXPOSE 5678

CMD ["n8n", "start"]
