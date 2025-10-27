# Use official Node.js image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the app port
EXPOSE 5000

# Set environment variables (optional, overridden by .env or docker-compose)
ENV PORT=5000

# Start the application
CMD ["node", "employee-management-api/server.js"]
