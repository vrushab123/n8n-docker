FROM n8nio/n8n

# Switch to root to install ffmpeg
USER root

RUN apk update && apk add --no-cache ffmpeg

# Switch back to the n8n user
USER node

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

CMD ["n8n"]
