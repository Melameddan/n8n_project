FROM n8nio/n8n:latest-debian

USER root

RUN apt-get update && apt-get install -y chromium chromium-common chromium-driver \
    && rm -rf /var/lib/apt/lists/*

USER node

ENV PUPPETEER_SKIP_DOWNLOAD=true
ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
