FROM node:lts-buster

# Clone bot from GitHub
RUN git clone https://github.com/Thomas-shelby001/PEAKY-BLINDER-MD.git /root/PEAKY-MD-bot

# Set working directory
WORKDIR /root/popkid-md-bot

# Install dependencies
RUN npm install && npm install -g pm2

# Expose port
EXPOSE 9090

# Start the bot
CMD ["npm", "start"]
