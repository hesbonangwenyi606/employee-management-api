# Use Node.js LTS Alpine base image
FROM node:18-alpine

# Set working directory inside container
WORKDIR /app

# Copy package files first (for efficient Docker caching)
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy all project files
COPY . .

# Expose the app port
EXPOSE 5000

# Start the server
CMD ["node", "server.js"]
