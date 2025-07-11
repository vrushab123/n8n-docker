FROM n8nio/n8n

# Switch to root to install ffmpeg
USER root


# Install ffmpeg and yt-dlp directly via Alpine packages
RUN apk update && apk add --no-cache ffmpeg yt-dlp

# Switch back to the n8n user
USER node

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true

EXPOSE 5678