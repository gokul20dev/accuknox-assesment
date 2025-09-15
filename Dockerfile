# Dockerfile - Wisecow
FROM debian:12-slim

# Install required packages
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
      curl \
      bash \
      fortune-mod \
      cowsay && \
    rm -rf /var/lib/apt/lists/*

# Copy application files
WORKDIR /app
COPY wisecow.sh /app/wisecow.sh
RUN chmod +x /app/wisecow.sh

# Expose port used by wisecow
EXPOSE 4499

# Start the app
CMD ["/app/wisecow.sh"]

