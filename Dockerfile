FROM n8nio/n8n

# Install Chromium and all required dependencies
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
      libxss \
      libxtst

# Point Puppeteer to system Chromium
ENV PUPPETEER_SKIP_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
