FROM n8nio/n8n:latest

EXPOSE 5678

HEALTHCHECK --interval=30s --timeout=5s --start-period=60s \
  CMD curl -f http://localhost:5678/healthz || exit 1
