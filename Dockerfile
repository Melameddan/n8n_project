FROM n8nio/n8n

# Switch to root to install packages
USER root

# Install Chromium and dependencies
RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      udev \
      mesa \
      libx11 \
      libxcomposite \
      libxdamage \
      libxrandr \
      libXScrnSaver \
      libxtst

# Switch back to non-root user (important for n8n security)
USER node

# Tell Puppeteer to use system Chromium
ENV PUPPETEER_SKIP_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
