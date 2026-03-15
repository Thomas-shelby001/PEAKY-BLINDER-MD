FROM node:18-bullseye

# System deps
RUN apt-get update && apt-get install -y ffmpeg webp git imagemagick && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .

# Expose port for health check
EXPOSE 3000

# Start bot + server
CMD ["node", "index.js"]