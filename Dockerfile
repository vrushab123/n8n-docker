FROM n8nio/n8n

# Install ffmpeg on Alpine
RUN apk update && apk add --no-cache ffmpeg

# Optional: Add basic auth if you want to protect the UI
ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

# Start n8n
CMD ["n8n"]
